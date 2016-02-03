CrewSkillInformer v.0.5 by Voytello and Dumadidak

=====================================================================================================================================================================================
=====================================================================================================================================================================================
=====================================================================================================================================================================================

=>EN<= (polska wersja poni¿ej)

[Description]
CrewSkillInformer is WoT mod to visualize crew' skills & perks meanwhile the batlle.
From version 0.5 it is possible to use this mod in replays BUT:
- replay have to be yours,
- to use mod in replay first run the game and choose vehicle in garage (the mod will read the info about the vehicle and put it to the session file)
- mod will show actual info from session file not from time the replay was created by the game

[Installation]
Unpack the archive and copy to folder of WorldOfTanks.

[Configuration]
Configuration file is 'CrewSkillInformerConfig.json' and is placed in folder:
$\[WorldOfTanks game folder]\res_mods\[version]\scripts\client\mods\CrewSkillInformer\

Configuration's key\values:
* "ActivationKey" - is the keyboard key, which activates the mod. While you press the key mod is visible. Default key is "KEY_BACKSPACE", other options are:
  "KEY_SPACE", "KEY_LSHIFT", "KEY_LALT", "KEY_CAPSLOCK", "KEY_LCONTROL", "KEY_BACKSPACE", "KEY_A", "KEY_B", "KEY_C", "KEY_D", "KEY_E", "KEY_F", "KEY_G", "KEY_H", "KEY_I", "KEY_J", "KEY_K", "KEY_L", "KEY_M", "KEY_N", "KEY_O", "KEY_P", "KEY_Q", "KEY_R", "KEY_S", "KEY_T", "KEY_U", "KEY_V", "KEY_W", "KEY_X", "KEY_Y", "KEY_Z", "KEY_1", "KEY_2", "KEY_3", "KEY_4", "KEY_5", "KEY_6", "KEY_7", "KEY_8", "KEY_9", "KEY_0", "KEY_NUMPAD1", "KEY_NUMPAD2", "KEY_NUMPAD3", "KEY_NUMPAD4", "KEY_NUMPAD5", "KEY_NUMPAD6", "KEY_NUMPAD7", "KEY_NUMPAD8", "KEY_NUMPAD9", "KEY_NUMPAD0", "KEY_NUMLOCK", "KEY_NUMPADCOMMA", "KEY_NUMPADENTER", "KEY_NUMPADEQUALS", "KEY_NUMPADMINUS", "KEY_NUMPADPERIOD", "KEY_NUMPADSLASH", "KEY_NUMPADSTAR"
  
* "PositionMode" - is the place on a battle screen where mod will be visible. From version 0.5 the default value is "CENTER". Other values are:
——————————————————————————————————————————————————————————————————————————————
TOP-LEFT						        TOP								          TOP-RIGHT
LEFT 			    CENTER-LEFT		CENTER			CENTER-RIGHT	  RIGHT
BOTTOM-LEFT		DEFAULT			  BOTTOM						          BOTTOM-RIGHT
——————————————————————————————————————————————————————————————————————————————

* "deltaX"        : "0",
* "deltaY"        : "0" - deltaX and deltaY are the factors for "PositionMode" calibration. Use with all available postion modes except "DEFAULT" which is hardcoded from old versions.
For example: to place the mod on the bottom of screen, just above the shells panel for screen with 1680 x 1050 resolution choose for
"PositionMode" -> "BOTTOM" 
"deltaX" -> "0" 
"deltaY" -> "65"

* "WithEquipment" - is the option to show also the equipment "YES", otherwise use "NO". The default is "YES".

[Future TODOs]
- fix any bugs
- add "+" skill icon for not chosen skill yet

[Version log]
v.0.5
- new artwork by Dumadidak, new and fresh style
- fixed crew's order
- dynamic transparency of active/nonactive skills
- factors 'deltaX' and 'deltaY' to customize the position modes
- all data in one session file
- code refactor

v.0.4
- code rework for WoT version 0.9.8.X

v.0.3
- semi-transparent background brings better mod's visualization  (especially on light view)
- vehicle's equipment below the skills and perks

v.0.2
- added user configuration of mod's activation key
- added user configuration of mod's position section

v.0.1
- start :)

=====================================================================================================================================================================================
=====================================================================================================================================================================================
=====================================================================================================================================================================================

=>PL<=
[Opis]
CrewSkillInformer jest modem dla WoT pokazuj¹cym umiejêtnoœci za³ogi w trakcie bitwy.
Od wersji 0.5 mod dzia³a tak¿e w powtórkach, ALE:
- powtórka musi byæ Twoja,
- aby u¿yæ poprawnie, uruchom grê, wybierz dany pojazd w gara¿u (mod odczyta informacje o pojeŸdzie i zapisze je do pliku cache)
- mod bêdzie pokazywa³ aktualne info zapisane w pliku cache - a nie z czasu kiedy powtórka by³a nagrywana

[Instalacja]
Wypakuj archiwum i skopiuj do folderu z gr¹

[Konfiguracja]
Plik konfiguracyjny to 'CrewSkillInformerConfig.json', który mo¿na znaleŸæ:
$\[WorldOfTanks folder gry]\res_mods\[wersja]\scripts\client\mods\CrewSkillInformer\

Opis kluczy/wartoœci pliku konfiguracyjnego:
* "ActivationKey" - okreœla przycisk klawiatury, który uaktywnia mod. Mod bêdzie widoczny póki dany przycisk bêdzie wciœniêty. Domyœlny klucz to "KEY_BACKSPACE", inne opcje to:
  "KEY_SPACE", "KEY_LSHIFT", "KEY_LALT", "KEY_CAPSLOCK", "KEY_LCONTROL", "KEY_BACKSPACE", "KEY_A", "KEY_B", "KEY_C", "KEY_D", "KEY_E", "KEY_F", "KEY_G", "KEY_H", "KEY_I", "KEY_J", "KEY_K", "KEY_L", "KEY_M", "KEY_N", "KEY_O", "KEY_P", "KEY_Q", "KEY_R", "KEY_S", "KEY_T", "KEY_U", "KEY_V", "KEY_W", "KEY_X", "KEY_Y", "KEY_Z", "KEY_1", "KEY_2", "KEY_3", "KEY_4", "KEY_5", "KEY_6", "KEY_7", "KEY_8", "KEY_9", "KEY_0", "KEY_NUMPAD1", "KEY_NUMPAD2", "KEY_NUMPAD3", "KEY_NUMPAD4", "KEY_NUMPAD5", "KEY_NUMPAD6", "KEY_NUMPAD7", "KEY_NUMPAD8", "KEY_NUMPAD9", "KEY_NUMPAD0", "KEY_NUMLOCK", "KEY_NUMPADCOMMA", "KEY_NUMPADENTER", "KEY_NUMPADEQUALS", "KEY_NUMPADMINUS", "KEY_NUMPADPERIOD", "KEY_NUMPADSLASH", "KEY_NUMPADSTAR"
  
* "PositionMode" - tu okreœlasz miejsce pokazywania moda na ekranie bitwy. Od wersji 0.5 domyœlne ustawienie to "CENTER". Inne opcje to:
——————————————————————————————————————————————————————————————————————————————
TOP-LEFT						        TOP								          TOP-RIGHT
LEFT 			    CENTER-LEFT		CENTER			CENTER-RIGHT	  RIGHT
BOTTOM-LEFT		DEFAULT			  BOTTOM						          BOTTOM-RIGHT
——————————————————————————————————————————————————————————————————————————————

* "deltaX"        : "0",
* "deltaY"        : "0" - deltaX i deltaY to wspó³czynniki do kalibracji klucza "PositionMode". Mog¹ byæ u¿yte ze wszystkimi opcjami poza "DEFAULT" - nie bo nie.
Przyk³adowe ustawienie:
Aby ustawiæ mod na dole ekranu nad panelem z amunicj¹, rozdzielczoœæ monitora to 1680 x 1050 wybierz:
"PositionMode" -> "BOTTOM" 
"deltaX" -> "0" 
"deltaY" -> "65"

* "WithEquipment" - to opcja która pokazuje dodatkowo wyposa¿enie pojazdu, wartoœæ "YES". W innym wypadku u¿yj "NO". Domyœlne jest "YES".

[Co dalej]
- poprawka b³êdów
- Dodanie ikonki z "+" dla nie wybranej jeszcze umiejêtnoœci

[Log wersji]
v.0.5
- nowa szata graficzna autorstwa Dumadidaka
- poprawione wyœwietlanie kolejnoœci za³ogi
- zmienna przezroczystoœæ aktywnych/nieaktywnych umiejêtnoœci
- wspó³czynniki 'deltaX' i 'deltaY' dla kalibracji pozycji na ekranie
- jeden plik na dane sesyjne (cache)
- refaktoring kodu

v.0.4
- usprawnienie dla wersji WoT 0.9.8.X

v.0.3
- pó³ przŸroczyste t³o
- pokazywanie wyposa¿enia pojazdu

v.0.2
- added user configuration of mod's activation key
- added user configuration of mod's position section

v.0.1
- start :)

=====================================================================================================================================================================================
=====================================================================================================================================================================================
=====================================================================================================================================================================================

\---res_mods
    \---0.9.8.1
        \---scripts
            \---client
                |   CameraNode.pyc
                |   
                \---mods
                    |   CrewSkillInformer.pyc
                    |   __init__.pyc
                    |   
                    \---CrewSkillInformer
                        |   CrewSkillInformerConfig.json
                        |   CrewSkillInformerSession.json
                        |   readme.txt
                        |   
                        +---backgrounds
                        |       Equip_Background.dds
                        |       Equip_LeftGradient.dds
                        |       Equip_RightGradient.dds
                        |       Skills_Background.dds
                        |       Skills_LeftGradient.dds
                        |       Skills_RightGradient.dds
                        |       
                        +---equipment
                        |       aimingStabilizer.dds
                        |       antifragmentationLining.dds
                        |       camouflageNet.dds
                        |       carbonDioxide.dds
                        |       coatedOptics.dds
                        |       empty.dds
                        |       emptyOrder.dds
                        |       enhancedAimDrives.dds
                        |       enhancedSuspension.dds
                        |       filterCyclone.dds
                        |       grousers.dds
                        |       improvedVentilation.dds
                        |       rammer.dds
                        |       steelRollers.dds
                        |       stereoscope.dds
                        |       toolbox.dds
                        |       wetCombatPack.dds
                        |       
                        +---main_icons
                        |       commander.dds
                        |       driver.dds
                        |       equipment.dds
                        |       gunner.dds
                        |       loader.dds
                        |       radioman.dds
                        |       
                        \---skills
                                brotherhood.dds
                                brotherhood_off.dds
                                camouflage.dds
                                commander_eagleEye.dds
                                commander_expert.dds
                                commander_expert_off.dds
                                commander_sixthSense.dds
                                commander_sixthSense_off.dds
                                commander_tutor.dds
                                commander_universalist.dds
                                driver_badRoadsKing.dds
                                driver_rammingMaster.dds
                                driver_smoothDriving.dds
                                driver_tidyPerson.dds
                                driver_tidyPerson_off.dds
                                driver_virtuoso.dds
                                fireFighting.dds
                                gunner_gunsmith.dds
                                gunner_rancorous.dds
                                gunner_rancorous_off.dds
                                gunner_smoothTurret.dds
                                gunner_sniper.dds
                                gunner_sniper_off.dds
                                gunner_woodHunter.dds
                                loader_desperado.dds
                                loader_desperado_off.dds
                                loader_intuition.dds
                                loader_intuition_off.dds
                                loader_pedant.dds
                                loader_pedant_off.dds
                                new_skill.dds
                                radioman_finder.dds
                                radioman_inventor.dds
                                radioman_lastEffort.dds
                                radioman_lastEffort_off.dds
                                radioman_retransmitter.dds
                                repair.dds


