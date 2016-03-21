$expected_tank_values_version = "26"
$world_of_tanks_version = "0.9.14"

$extensions = @("csv","json")
foreach($extension in $extensions){
	Invoke-WebRequest -Uri http://www.wnefficiency.net/exp/expected_tank_values_$expected_tank_values_version.$extension -OutFile expected_tank_values.$extension
}

Move-Item -Force -Path expected_tank_values.json -Destination res_mods\$world_of_tanks_version\scripts\client\mods\stat\expected_tank_values.json
#Move-Item -Force -Path expected_tank_values.csv -Destination res_mods\$world_of_tanks_version\scripts\client\mods\MultiHitLog\TankData.csv
