MultiHitLog v.1.9f by PiJey77 & mtm78 & ZeesuS

Changelog:
-add {{HL_ExpDmg}} for expected damage done in our tank


"ShowPen":                  		"True",	  	- True/False - Show info about shot that penetrate us
"ShowBounce":               		"True",	  	- True/False - Show info about shot that bounce from us
"ShowAlly":                 		"True",   	- True/False - Show info about shot from allys that penetrate us

"groupHitLog":		    		"True",	  	- True/False - Group or not enemy we damage

"KeyToShowOwnTankInfo": 		"KEY_LALT",	- Key to press to see own tank info in Info Panel
"TimeDelayAfterKeyRelease"		1,	  	- Time after key release window assignet to it disappear, in seconds

"AssumeVentilation": 			"True",		- True/False - Assume Ventilation is installed in enemy tank for calculating reload time
"AssumeBritherInArms": 			"False",	- True/False - Assume Brother in arms are as perk for enemy tank for calculating reload time
"AssumeGoldConsumable":			"False",	- True/False - Gold Consumables are installed in enemy tank for calculating reload time
"AssumeGunRammer": 			"True",		- True/False - Assume Gun Rammer is installed in enemy tank for calculating reload time

"HL_Killed_Text":           		"Killed", 	- Text to hitlog for killed enemy
"HL_Ally_Text":             		"Ally",	  	- Text to hitlog if we hit ally

"Class_Light_Tank":			"LT",		- Description for light tank class
"Class_Medium_Tank":			"MT",		- Description for medium tank class
"Class_Heavy_Tank":			"HT",		- Description for heavy tank class
"Class_Tank_Destroyer":			"TD",		- Description for tank destroyer class
"Class_SPG":				"SPG",		- Description for SPG class

"AP_Shell":               		"AP",		- Text for standard ammo
"APCR_Shell":               		"APCR",		- Text for APCR normal ammo
"APCR_G_Shell":             		"APCR",		- Text for APCR gold ammo
"HE_Shell":                 		"HE",		- Text for High Explosive ammo
"HEAT_G_Shell":             		"HEAT",		- Text for High Explosive Anti Tank gold ammo
"HESH_G_Shell":             		"HESH",		- Text for High Explosive squash head gold ammo

"AnnounceDamageForPlatoon": 		"True",		- True/False - Announce in chat for platoon mates the damage you have done
"AnnounceDamageMessage": 		"",		- Text to announce in chat, use {{HL_DMG}} macro for damage done
    
"AnnounceAllyDamage":       		"True",		- True/False - announce on chat info about ally damage to us
"MinimumAllyDamage":        		50,		- Minimum damage value to announce
"AllyDamageMessage":        		"",		- Text to announce in chat

"AnnounceAllyDamageOnlyMe": 		"True",		- True/False - announce on chat (JUST FOR OUR EYES) info about ally damaging us
"AllyDamageMessageForYou":  		"",		- Text for our selfs in chat about ally damaging us

"WindowKeyList":        	- Here you can define as many lines as you want. Every line is additional window, each have own parameters:
	xAlign            	- Align horizontally. You can use "Normal" - upper,left corner, or "Center" - center of the screen
	x                    	- Horizontal position on screen (if used negative it will start from right)
	offsetX            	- Horizontal Offset in pixels for any text in window
	yAlign            	- Align vertically you can use "Normal" - upper,left corner, or "Center" - center of the screen
	y                    	- Vertical position on screen(if used negative it will start from bottom)
	offsetY            	- Vertical Offset in pixels for any text in window
	width            	- Width of window in pixels (if you leave 0 it will count width by text size)
	height            	- Height of window in pixels (if you leave 0 it will count width by amount of lines)
	backgroundLevel         - Level of background darkness from 0 - none, to 10 - max darkness (thx ZeesuS for graphics)
				  if you use -1 then will be used file from "backgroundFile" 
	backgroundFile        	- File of background you want to use, just put file in MultiHitLog folder
				  if you want to make any subfolders, ONE for example, line should look like this: "/ONE/BackGround1.dds" 
	ConfigName          	- Name of Config within JSON file, like "conf_hitlog" just make sure it is unique and have same name in Config part of JSON file
	time            	- Time after which special window will disappear (only "DamageLog" or "HitLog" windows)
	Key            		- One of keys from key list that need to be pressed for window to show. List of possible keys in the end of this file
	"Conf_Default"        	- List of lines you want to appear when key or action from "WindowKeyList" event happened
	"LineType": 		- Name of line within JSON file, like "HitLog" where HitLog can be any text you have configured
				  just make sure you will make right TypeX part in JSON file
	"type"            	- Type of line:
					HitLog 		- for Hit Log lines
					DamageLog	- for Damage Log lines
					HPLeft		- for Hit Points left lines
					InfoPanel	- for Info Panel lines
					Mix		- anything else
	"width"            	- Width in number on characters or "Center" if you wish to label be in middle of window,
				  but remember: Center will work properly only if there is only 1 label in line.
	"shadow"  		- True / False for shadow in labels
	"shadow_color"		- Color of shadow in HEX
	"shadow_offsetX"	- Horizontal offset of shadow
	"shadow_offsetY"	- Vertical offset of shadow
	"size"            	- Font size 1- tiny, 2-small, 3-medium, 4-big, configured in the end of config.
	"color"            	- Color in HEX format or one of these macros:
            team    		- Color depend of team
            diff    		- If our damage is less / even / more than expected for your tank, configured in Colors section of JSON file.
            class		- Color depend on tank class, configured in Colors section of JSON file.
            WN8    		- WN8 Color, configured in Colors section of JSON file.
            EFF    		- EFF Color, configured in Colors section of JSON file.
            hit    		- Color depend of hit type (penetration, bounce, ally)
            ammo    		- Color depend of ammo used, credits or gold
            damage  		- Color defined in JSON file depend of attack type (shot, fire etc)
            weight  		- Color depends of weight difference between enemy tank and your own tank, configured in Colors section of JSON file.

	"text"            	- Text or one of the macros available:
		universal macros:
			{{HL_DMG}}		- Damage Done so far
			{{HL_Diff}}		- Difference between damage done and expected damage for your tank
			{{HL_EFF}}		- Predicted EFF
			{{HL_XEFF}}		- Predicted XEFF
			{{HL_WN8}}		- Predicted WN8
			{{HL_XWN8}}		- Predicted XWN8
			{{HL_ExpDmg}} 		- Expected damage done in our tank
			{{HL_LastDMG}}		- Last damage done
			{{HL_AvgDMG}}		- Average damage done
			{{HL_Shots}}		- Our shot that penetrate enemy
			
		macros for Info Panel:
			{{IP_TankName}}		- Tank Name
			{{IP_TankClass}}	- Tank class
			{{IP_Reload}}		- Tank reload time (assume 100% crew, rammer)
			{{IP_ViewRange}}	- Tank view Range
			{{IP_Gun}}		- Tank gun name
			{{IP_TargetWeight}}	- Weight of tank
			{{IP_WeightDiff}}	- Weight difference compare to our tank
			{{IP_AmmoType1}}	- Ammo type 1
			{{IP_AmmoType2}}	- Ammo type 2
			{{IP_AmmoType3}}	- Ammo type 3
			{{IP_AmmoPen1}}		- Penetration of ammo type 1
			{{IP_AmmoPen2}}		- Penetration of ammo type 2
			{{IP_AmmoPen3}}		- Penetration of ammo type 3
			{{IP_AmmoDamage1}}	- Damage of ammo type 1
			{{IP_AmmoDamage2}}	- Damage of ammo type 2
			{{IP_AmmoDamage3}}	- Damage of ammo type 3
			{{IP_HullF}}		- Hull armor on front
			{{IP_HullS}}		- Hull armor on sides
			{{IP_HullR}}		- Hull armor on rear
			{{IP_TurretF}}		- Turret armor on front
			{{IP_TurretS}}		- Turret armor on sides
			{{IP_TurretR}}		- Turret armor on rear
    
		macros just for line Type4 (Hit Log List):
		        {{HL_Hits}}		- How many times we hit this enemy
		        {{HL_AttackType}}	- Type of attack like shot or fire
		        {{HL_TotalDamage}}	- Total damage done by us
			{{HL_LastDamage}}	- Last damage done by us
		        {{HL_Tank}}		- Short enemy tank name
			{{HL_TankClass}}	- enemy tank class
		        {{HL_Name}}		- Enemy name
		        {{HL_Killed}}		- text when we kill him
		        {{HL_Ally}}		- text when we hit ally
		
		macros just for line Type6 (Damage Log List):
			{{DL_HitNr}}		- Number of received hit
			{{DL_AttackerDamage}}	- Damage we receive from enemy
			{{DL_AttackerAmmo}}	- Ammo used by enemy
			{{DL_AttackType}}	- Attack type (shot, fire etc)
			{{DL_AttackerTank}}	- Attacker short tank name
			{{DL_AttackerTankClass}}- Attacker tank class
			{{DL_AttackerName}}	- Attacker Name
			{{DL_AttackerReload}}	- Attacker reload time
			{{DL_AttackerPlace}}	- Where we have been hit (hull, turret etc) but only when hit was critical

		macros just for line Type7 (HP Left):
			{{HP_Left}}		- Hit Points left 
			{{HP_EnemyTank}}	- Short enemy tank name
			{{HP_EnemyTankClass}}	- Enemy tank class
			{{HP_EnemyName}}	- Enemy name

"Type0":[			- This is empty line PLEASE DONT EDIT
"Type1":[ 			- This is separator line you can edit just COLOR and TEXT
"Type4":[    			- This is line for list of enemy we damage
"Type6":[    			- This is line for list of damage or bounce we take from enemy
"Type7":[    			- This is line for list enemy players Hit Points left that are in our drawing range (or seen before)

"Colors":[			- Color and macros used in mod, you can add some lines to WN8 or EFF if you need to
"Fonts":[			- List of fonts and sizes for them, please do not change first line with empty "font"
"Attack_Reasons" : [		- List of attack types, you can edit them to any text you like


Keycodes for "Key"
	"NONE" 		for window to appear when none key is pressed, and disappear when some key is pressed
	"ALWAYS" 	for window to be visible all the time
	"DamageLog" 	for time related window if you receive any damage then this window will appear
	"HitLog" 	for time related window if you do any damage then this window will appear
	"InfoPanel" 	for time related window if you target any tank this window will appear
	'KEY_SPACE'
	'KEY_LSHIFT' 
	'KEY_LALT'
	'KEY_CAPSLOCK'
	'KEY_LCONTROL'
	'KEY_B' 
	'KEY_C'
	'KEY_E'
	'KEY_F' 
	'KEY_G' 
	'KEY_H' 
	'KEY_I' 
	'KEY_J' 
	'KEY_K' 
	'KEY_L' 
	'KEY_M' 
	'KEY_N' 
	'KEY_O' 
	'KEY_P' 
	'KEY_Q' 
	'KEY_R' 
	'KEY_T' 
	'KEY_U' 
	'KEY_V' 
	'KEY_X' 
	'KEY_Y' 
	'KEY_Z' 
	'KEY_1' 
	'KEY_2' 
	'KEY_3' 
	'KEY_4' 
	'KEY_5' 
	'KEY_6' 
	'KEY_7' 
	'KEY_8' 
	'KEY_9' 
	'KEY_0' 
	'KEY_NUMLOCK'
	'KEY_NUMPAD0'
	'KEY_NUMPAD1' 
	'KEY_NUMPAD2' 
	'KEY_NUMPAD3' 
	'KEY_NUMPAD4' 
	'KEY_NUMPAD5' 
	'KEY_NUMPAD6' 
	'KEY_NUMPAD7' 
	'KEY_NUMPAD8' 
	'KEY_NUMPAD9' 
	'KEY_NUMPADCOMMA' 
	'KEY_NUMPADENTER' 
	'KEY_NUMPADEQUALS' 
	'KEY_NUMPADMINUS' 
	'KEY_NUMPADPERIOD' 
	'KEY_NUMPADSLASH' 
	'KEY_NUMPADSTAR'