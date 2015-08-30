param(
        [string]$arguement = "help",
        [string]$version = "NOT_SET",
        [switch]$verbose
)

# These global variables will not change from product to product
$source_dir = "\\files\srv\install"
$target_dir = "C:\IBM"
$imcl_cmd   = "C:\IBM\IBMIM\eclipse\tools\imcl.exe"

# This is the package name of the product this script manages
$product_name = "com.ibm.cic.agent"
$product_initials = "im"
$installationDirectory = "$target_dir\IBMIM"
$eclipseLocation = $installationDirectory

# By default the script dumps log, and response files in the user's %TEMP% directory
$log_dir = "C:\ProgramData\IBM"

# Where the GA version of the product is stored
$base_dir_ga = "$source_dir\im\1800\win64"

# Base fix pack directory.
$base_dir_fp = "$source_dir\imfps"

# imcl standard options
$imcl_standard_options = "-acceptLicense -installationDirectory $installationDirectory -eclipseLocation $eclipseLocation -installFixes none -nl en -sharedResourcesDirectory $target_dir\IBMIMShared -preferences com.ibm.cic.common.core.preferences.keepFetchedFiles=false,com.ibm.cic.common.core.preferences.preserveDownloadedArtifacts=false,offering.service.repositories.areUsed=false,com.ibm.cic.common.core.preferences.searchForUpdates=false -showVerboseProgress"

# Must convert $verbose to string type to use it with comparison operators
[string]$verbose = $verbose

# All the types of operations for the script are defined in functions
function help() {
        echo "Available commands are:"
        echo "  list [-verbose]"
        echo "  install [-verbose]"
        echo "  update -version <version> [-verbose]"
        echo "  uninstall [-verbose]"
        echo "  help (this page)"
}

function list(){
        if (-Not (Test-Path $imcl_cmd)) {
                echo "$imcl_cmd is missing - Did you install Installation Manager already?"
                exit 1
        }
        $args = "listInstalledPackages"
        $cmd = "$imcl_cmd $args"
        $output = cmd.exe /c $cmd 2`>`&1
        if ( $LASTEXITCODE -eq 0 ) {
                foreach ($line in $output) {
                        $package_line = $line.split("_")
                        $package_name = $package_line[0]
                        if ($package_name -eq $product_name) {
                                $result = "package installed"
                                if ($verbose -eq "True") {
                                        $result += " - $line"
                                }
                                echo $result
                        }
                        $package_number++
                }
        } else {
                echo $output
                exit 10
        }
}

function install(){
        if (-Not (Test-Path $base_dir_ga)) {
                echo "$base_dir_ga is missing"
                exit 25
        }
        if (Test-Path $installationDirectory) {
                echo "$installationDirectory already exists"
                #Remove-Item $installationDirectory
                exit 22
        }
        $exec = "$base_dir_ga\installc.exe"
        $log = "$log_dir\install-" + $product_initials + "1800-log.xml"
        $options = "-acceptLicense -installationDirectory $installationDirectory -log $log -showVerboseProgress"
        $cmd = "$exec $options"
        $output = cmd.exe /c $cmd 2`>`&1
        if ( $LASTEXITCODE -eq 0 ) {
                echo "package installed"
                if ($verbose -eq "True") {
                        echo $output
                }
        } else {
                echo $output
                exit 20
        }
}

function update(){
        if (-Not (Test-Path $imcl_cmd)) {
                echo "$imcl_cmd is missing - Did you install Installation Manager already?"
                exit 1
        }
        if ( $version -eq "NOT_SET" ) {
                echo "FAILED - version is missing. Run script with no arguments to see syntax"
                exit 31
        }
        if (-Not (Test-Path $base_dir_fp\$version)) {
                echo "FAILED - $base_dir_fp\$version is missing"
                exit 35
        }
        $exec = $imcl_cmd
        $args = "install $product_name"
        $log = "$log_dir\update-" + $product_initials + $version + "-log.xml"
        $record = "$log_dir\update-" + $product_initials + $version + "-response.xml"
        $repositories = "$base_dir_fp\$version"
        $options = "$imcl_standard_options -log $log -record $record -repositories $repositories"
        $cmd = "$exec $args $options"
        $output = cmd.exe /c $cmd 2`>`&1

        if ( $LASTEXITCODE -eq 0 ) {
                echo "package updated"
                if ($verbose -eq "True") {
                        echo $output
                }
        } else {
                echo $output
                exit 30
        }
}

function uninstall() {
        if (-Not (Test-Path $imcl_cmd)) {
                echo "$imcl_cmd is missing - Did you install Installation Manager already?"
                exit 1
        }
        $exec = $imcl_cmd
        $args = "uninstall $product_name"
        $log = "$log_dir\uninstall-" + $product_initials + "-log.xml"
        $record = "$log_dir\uninstall-" + $product_initials + "-response.xml"
        $options = "-log $log -record $record"
        $cmd = "$exec $args $options"
        $output = cmd.exe /c $cmd 2`>`&1

        if ( $LASTEXITCODE -eq 0 ) {
                echo "package uninstalled"
                if ($verbose -eq "True") {
                        echo $output
                }
        } else {
                echo $output
                exit 40
        }
        if (Test-Path $installationDirectory) {
                echo "$installationDirectory still exists - removing"
                Remove-Item $installationDirectory -Force -Recurse
                exit 43
        }
}

# Main function
switch ($arguement) {
        help{help}
        list{list}
        install{install}
        update{update}
        uninstall{uninstall}
        default{help}
}


Get-ChildItem -Path V:\Myfolder -Filter CopyForbuild.bat -Recurse