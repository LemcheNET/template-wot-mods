if (Test-Path file_and_directory_list.txt){
	Remove-Item -Path file_and_directory_list.txt -Force
}

Add-Content -Path file_and_directory_list.txt -Value "`t# Generate a list in file_and_directory_list.txt by using generate-file-list.sh, and copy the content into this file below."

$folders = @("res","res_mods","aos-wot-mods")

foreach($folder in $folders){
	$files = (Get-ChildItem -Path $folder -Recurse -File | Resolve-Path -Relative | ForEach-Object Substring 2)
	[array]::Reverse($files)
	foreach($file in $files){
		Add-Content -Path file_and_directory_list.txt -Value "`tDelete ""`$INSTDIR\$file"""
	}
}
foreach($folder in $folders){
	$directories = (Get-ChildItem -Path $folder -Recurse -Directory | Resolve-Path -Relative | ForEach-Object Substring 2)
	[array]::Reverse($directories)
	foreach($directory in $directories){
		Add-Content -Path file_and_directory_list.txt -Value "`tRMDir ""`$INSTDIR\$directory"""
	}
	Add-Content -Path file_and_directory_list.txt -Value "`tRMDir ""`$INSTDIR\$folder"""
}

