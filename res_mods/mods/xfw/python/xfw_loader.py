""" XFW loader (c) www.modxvm.com 2013-2017 """

import glob
import logging
import os
import sys
import shutil
import traceback

import BigWorld
import ResMgr
from helpers import VERSION_FILE_PATH

import xfw
from xfw.constants import FLAGS, PATH, VERSION

def fill_version_info():
    """
    Fills version constants in xfw.constants
    """

    # ver = 'v.0.8.7 #512' or 'v.0.8.7 Common Test #499' or 'Supertest v.ST 0.9.15.1 #366'
    ver = ResMgr.openSection(VERSION_FILE_PATH).readString('version')
    if 'Supertest v.ST ' in ver:
        ver = ver.replace('Supertest v.ST ', 'v.')
    ver = ver[2:ver.index('#') - 1]
    short_ver = ver if not ' ' in ver else ver[:ver.index(' ')]  # X.Y.Z or X.Y.Z.a

    VERSION.WOT_VERSION_FULL = ver
    VERSION.WOT_VERSION_SHORT = short_ver

    # get path of "./res_mods/0.9.10" etc.
    PATH.WOT_RESMODS_DIR = ResMgr.openSection('../paths.xml')['Paths'].values()[0].asString.lstrip('./')


def delete_old_mods(work_folder, obsolete_packages):
    """
    Removes obsolete packages
    """

    packages_folder = '%s/packages' % work_folder
    for dir_name in obsolete_packages:
        absolute_path = '%s/%s' % (packages_folder, dir_name)
        if os.path.isdir(absolute_path):
            shutil.rmtree(absolute_path, True)
            if os.path.isdir(absolute_path): # not deleted
                status = 'fail'
            else:
                status = 'success'
            print '[XFW] Deleting old directory %s ... %s' % (dir_name, status)


def load_mods(work_folder):
    """
    Loads XFW-powered mods from work_folder
    """

    packages_folder = '%s/packages' % work_folder
    sys.path.insert(0, packages_folder)           # add packages folder to path

    mods = [i.replace("\\", "/").replace("//", "/") for i in glob.iglob('%s/*/python' % packages_folder)]

    #hack: put xvm_main first
    xvm_main_idx = [i for i, word in enumerate(mods) if word.endswith('/xvm_main/python')]
    if xvm_main_idx and len(xvm_main_idx):
        mods.insert(0, mods.pop(xvm_main_idx[0]))

    for m_dir in mods:
        if os.path.isdir(m_dir) and (os.path.exists('%s/__init__.py' % m_dir) or os.path.exists('%s/__init__.pyc' % m_dir)) :
            try:
                m_dir = m_dir[0:m_dir.rfind("/")]      # m_dir:  module root directory (/mods/packages/<modname>/)
                m_name = m_dir[m_dir.rfind("/") + 1:]  # m_name: module name

                print "[XFW] Loading mod: " + m_name,

                #hack: create __init__.py in transit directories
                open(m_dir + '/__init__.py', 'a').close()

                mod = __import__('%s.python' % m_name, globals(), locals(), ['XFW_MOD_INFO'])
                modinfo = mod.XFW_MOD_INFO

                xfw_mod_version = modinfo.get('VERSION', '0.0')
                xfw_mod_url = modinfo.get('URL', 'http://www.modxvm.com/')
                xfw_mod_update_url = modinfo.get('UPDATE_URL', 'http://www.modxvm.com/')
                xfw_mod_game_versions = modinfo.get('GAME_VERSIONS', None)

                print "%s (%s)" % (xfw_mod_version, xfw_mod_url)
                if VERSION.WOT_VERSION_SHORT not in xfw_mod_game_versions:
                    print "[XFW][%s] WARNING: Mod is not tested for compatibility with the current version of the game" % m_name
                    print "[XFW][%s]          Game version:  " % m_name + VERSION.WOT_VERSION_SHORT
                    print "[XFW][%s]          Compatible:    " % m_name + ", ".join(xfw_mod_game_versions)
                    if xfw_mod_update_url:
                        print "[XFW][%s]          Please look for updates on the mod's website:" % m_name
                        print "[XFW][%s]            %s" % (m_name, xfw_mod_update_url)

                xfw.xfw_mods_info.add(m_name, modinfo)

                #hack: remove __init__ files
                os.remove(m_dir + '/__init__.py')
                os.remove(m_dir + '/__init__.pyc')
            except Exception:
                print "[XFW][%s] Error loading mod:" % m_name
                traceback.print_exc()
                print "============================="


print "[XFW] Version: %s" % VERSION.XFW_VERSION
print "[XFW] Working dir: %s" % PATH.XFW_WORK_DIR

# setup error levels for libs logging
logging.getLogger('pika').setLevel(logging.ERROR)

fill_version_info()

delete_old_mods(PATH.XFW_WORK_DIR, ['xvm_comments'])
if FLAGS.XFW_IN_PACKAGE:
    delete_old_mods(PATH.XFW_MODS_DIR, ['xvm_comments'])

load_mods(PATH.XFW_WORK_DIR)
if FLAGS.XFW_IN_PACKAGE:
    load_mods(PATH.XFW_MODS_DIR)
