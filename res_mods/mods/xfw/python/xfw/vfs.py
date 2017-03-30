"""
This file is part of the XVM Framework project.

Copyright (c) 2017 Andrey Andruschyshyn
Copyright (c) 2017 XVM Team

XVM Framework is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as
published by the Free Software Foundation, version 3.

XVM Framework is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
"""

import imp
import os
import tempfile
import traceback

from ResMgr import openSection, isDir, isFile

def file_read(vfs_path, as_binary=True):
    """
    Reads file from VFS

    vfs_path: path in VFS, for example, 'scripts/client/gui/mods/mod_.pyc'
    as_binary: set to True if file is binary
    """
    vfs_file = openSection(vfs_path)
    if vfs_file is not None and isFile(vfs_path):
        if as_binary:
            return str(vfs_file.asBinary)
        else:
            return str(vfs_file.asString)
    return None

def file_copy(vfs_path, realfs_path):
    """
    Copy file from VFS to RealFS

    vfs_path: path to file in VFS relative to root
    realfs_path: path to file in RealFS relative to WorldOfTanks.exe or absolute path

    returns True if copy was successful
    """

    try:
        try:
            realfs_dir = os.path.dirname(realfs_path)
            if not os.path.exists(realfs_dir):
                os.makedirs(realfs_dir)
        except Exception:
            pass

        vfs_data = file_read(vfs_path)
        if vfs_data:
            with open(realfs_path, 'wb') as realfs_file:
                realfs_file.write(vfs_data)
        else:
            return False
    except Exception:
        print "[XFW/VFS][file_copy] Error on file copy:"
        traceback.print_exc()
        print "============================="
        return False

    return True

def directory_list(vfs_path):
    """
    Lists files in directory from VFS

    vfs_path: path in VFS, for example, 'scripts/client/gui/mods/'
    """
    result = []
    folder = openSection(vfs_path)
    if folder is not None and isDir(vfs_path):
        for name in folder.keys():
            if name not in result:
                result.append(name)
    return sorted(result)

def directory_copy(vfs_path, realfs_path, recursive=True):
    """
    Lists files in directory from VFS

    vfs_path: path to file in VFS relative to root
    realfs_path: path to file in RealFS relative to WorldOfTanks.exe or absolute path
    recursive: set to False to disable recursive copy
    """

    folder = openSection(vfs_path)
    try:
        if folder is not None and isDir(vfs_path):
            for key in folder.keys():
                if isDir(vfs_path+'/'+key) and recursive is True:
                    directory_copy(vfs_path+'/'+key, realfs_path+'/'+key, recursive)
                if isFile(vfs_path+'/'+key):
                    file_copy(vfs_path+'/'+key, realfs_path+'/'+key)
    except Exception:
        print "[XFW/VFS][directory_copy] Error on directory copy:"
        traceback.print_exc()
        print "================="

def c_extension_load(name, vfs_path, package_id='com.modxvm.xfw'):
    """
    Loads C extension

    * name: module name
    * vfs_path: path to module file relative to VFS root ('/res/' for real FS)
    * package_id: package ID defined in meta.xml
    """

    try:
        realfs_path = '%s\\world_of_tanks\\%s\\native\\%s' % (tempfile.gettempdir(), package_id, os.path.basename(vfs_path))

        if file_copy(vfs_path, realfs_path):
            return imp.load_dynamic(name, realfs_path)

        return None

    except Exception:
        print "[XFW/VFS][c_extension_load] Native module loading error:"
        traceback.print_exc()
        print "============================="
