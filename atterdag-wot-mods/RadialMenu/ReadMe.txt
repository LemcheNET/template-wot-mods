CustomCommandRose v.2.3 by hedger, translated by locastan.
Mod "Radial menu customizable commands"

________________________________________________________________________________
        0. What is it?

This is a mod that allows you to customize the standard radial menu commands.
You can replace the phrase contained in the menu on your own, with the support of tags for
player names, tanknames, and even a square of the mini-map, where you aim the
camera. You can also specify the chat function to send a phrase to all or only
your team.

Standard commands, combined with the default keyboard bindings F2-F8, continue to work as
before.

There is a menu, in which commands are selected with reference to the map. They
automatically load in combination with a particular map. This mode
is activated by pressing the left alt button + key to show the radial menu (which is by 
default z, so leftalt + z give you the mapspecific commands).

There is also a separate configuration for artillery.
        
Base configuration file is the RadialMenu.xml located at
    res_mods \ 0.8.3 \ scripts \ client \ gui \ Scaleform \

Submit bug reports and suggestions via forums PM (nickname in the game locastan).

________________________________________________________________________________
        1. The configuration section

  WARNING!
  Do not use Wordpad to edit the xml file.
  Suitable editors are Editor, Notepad ++, Sublime Text 2, PSPad or other plain text editors.

  The file contains several blocks of commands:
    TankMenu - basic menu items;
    MapCommands - commands that are loaded based on the current map;
    
    SPGMenu, AT-SPGMenu, lightTankMenu, heavyTankMenu, mediumTankMenu
                - Optional sections, allowing the use of separate
                  configurations for menu items when playing on different classes of tanks;
                  
    HotkeyOnlyCommands - additional commands, invoked by hot keys only.
    TankSpecificCommands - commands specific to a particular tank or
      several tanks.
    
  Sections for Tankmenu and classes of tanks provide the following
sections:
    CommonCommands - common commands when no target is higlighted by crosshair;
    TeamCommands - team messages (when you aim at an ally);
    EnemyCommands - same for opponents.

    The first six commands from each section sort into the onscreen radial menu. The rest,
if there are any, are only callable by designated hotkey.

  The block contains a tag named <MapMenuKey> which lets you assign a hotkey to
display the command set for the current map.
________________________________________________________________________________
        1.2. PRIORITY OF SETTINGS

  When loading the menu, the system loads the most suitable for the current tank 
  out of the commands for each of the sections CommonCommands, TeamCommands, EnemyCommands.

  The highest priority in the construction of the menu settings are the blocks
in section <TankSpecificCommands>, ​​if they are defined for the current tank.
   
  If specific settings are not found there, then it goes to loading sections
from the vehicles class menus (SPGMenu, AT-SPGMenu, heavyTankMenu, ...)

  If there is no command there, the main configuration section in TankMenu is loaded.

________________________________________________________________________________
		2. Adjustment for individual tanks

  With the TankSpecificCommands section you can either configure it to load
  by the name of the tank, or to use the alias block for several tanks.

    Example:
    <AMX_50_100>
      <Alias> AMX_13_90 </ Alias>
    </ AMX_50_100>
    
    <AMX_13_90>
      <CommonCommands> ... </ CommonCommands>
    </ AMX_13_90>

  With this configuration, the tank AMX 50 100 and AMX 13 90 will have the same
general menu setting listed in CommonCommands for the 13 90, wich will be different
 from all the other tanks.

  Also, you can combine the configuration for a few tanks in an alias group, and
refer to it in the settings for each one:

    Example:
    <AMX_50_100>
      <Alias> AutoloaderTank </ Alias>
    </ AMX_50_100>
    
    <AMX_13_90>
      <Alias> AutoloaderTank </ Alias>
    </ AMX_13_90>

    <AutoloaderTank>
      <CommonCommands> ... </ CommonCommands>
      <TeamCommands> ... </ TeamCommands>
    </ AutoloaderTank>
    
  List of valid tank names: http://pastebin.com/eMWtuLuG
  WARNING! The names are case sensitive.

________________________________________________________________________________
        3. Adjustment for different maps

Commands tied to the map are located in the section MapCommands. They are
automatically loaded with the particular map. This command menu is
invoked by opening the map specifc menu (by default the left alt) + button to display
the radial menu (by default z).

In this section, place commands for the map matching its name.
The map name is written with the prefix "Map_", ie under Malinovka (02_malinovka)
the section name would be "Map_02_malinovka".

WARNING! Hot keys for the commands in this section are ignored.

A full list of maps in 0.8.4:
      01_karelia 02_malinovka 03_campania 04_himmelsdorf 05_prohorovka 06_ensk
      07_lakeville 08_ruinberg 10_hills 11_murovanka 13_erlenberg
      14_siegfried_line 15_komarin 17_munchen 18_cliff 19_monastery 22_slough
      23_westfeld 28_desert 29_el_hallouf 31_airfield 33_fjord
      34_Redshire 35_steppes 36_fishing_bay 37_caucasus 38_mannerheim_line
      39_crimea 42_north_america 44_north_america 45_north_america 47_canada_a
      51_asia
      
There is also a section Map_Default, which is loaded in the absence of a config
for the current map. It can be considered as a supplement to the general section of the menu.  
________________________________________________________________________________
        3. Instruction on formats and tags

Each command is formatted as follows:
    <Command>
      <Title> Short name that is displayed in the menu </Title>
      <Icon> Icon (see list below) </Icon>
      <Text> Full text displayed in the chat (supports macros) </Text>
      <ChatMode> Chat mode, Team or All </ChatMode>
			<!- - These are optional commands - ->
      <Command>The capitalize Iconnames so they appear on the minimap</Command>
      <Variants>List of phrase variants that replace %(randpart)s macro
      in the message text</Variants>
	  <NoRandomChoice>1</NoRandomChoice> - boolean, posts variants in sequential order if set 1.
      <Ping>automatic ping of minimap square, like: B7 D9</Ping>
	  <Hotkey>KEY_LALT+KEY_1</ Hotkey> - for the setting of quick hotkeys.
      <Cooldown>4</Cooldown> - Delay before the next command can be sent, in whole seconds.
    </Command>

The Ping command breaks the cells by spaces, so to ping three squares put <Ping>B1 A6 K0</Ping>.
It also has the ability to ping your current look to square: <Ping>%(viewPos)s</Ping>
	
Valid names of icons:
['Attack', 'Yes', 'Helpme', 'Backtobase', 'No', 'Reload',
  'Followme', 'Turnback', 'Helpmeex', 'Stop', 'Support', 'AttackSPG']

Valid names of Command for appearance on Minimap:
[ 'ATTACK', 'ATTACKENEMY', 'BACKTOBASE', 'FOLLOWME', 'HELPME', 'HELPMEEX', 
  'NEGATIVE', 'POSITIVE', 'RELOADINGGUN' 'STOP', 'SUPPORTMEWITHFIRE', 'TURNBACK']

Supported macros in chat text:
   %(name)s - the name of the player you aim your sight at
   %(vehicle)s - the name of the tank aimed at
   %(clan)s - the name of the clan of the aimed at player
   %(viewPos)s - square, where the camera is aimed
   %(ownPos)s - square, where your tank is sitting
   %(ownVehicle)s - the name of your current tank.
   %(randpart)s - a random string from the list in <Variants/>
   %(reload)s - displays the time to reload
   %(ammo)s     - displays your remaining ammo in AUTOLOADER CLIP
   
XVM stat depending chat command macros:
   %(winrate)s%% -- targets global winrate
   %(eff)s -- targets efficiency rating
   %(kbattles)s -- targets total battles in thousands
   %(avglvl)s -- targets average tier played
   %(twr)s -- targets Tourist efficiency factor
   %(tankDamage)s -- targets avg. damage with the current tank (usually incorrect!)
   %(tankWinrate)s%% -- targets winrate with the current tank
   
  The macros "%(vehicle)s", "%(clan)s", "%(name)s", "%(winrate)s%%", "%(eff)s",
"%(kbattles)s", "%(avglvl)s", "%(twr)s", "%(tankDamage)s", "%(tankWinrate)s%%"
give the values for your account in the absence of a target.
    
Example of a complete text unit:
   
<Command>
         <Title>Shut Up!</Title>
         <Icon>Stop</Icon>
         <Text>%(randpart)s!</Text>
         <ChatMode>All</ChatMode>
         <Variants>
	 <Variant>I've had it with your jammering</Variant>
         <Variant>Keep it down ppl</Variant>
         <Variant>That's enough out of you</Variant>
         <Variant>Too many shill voices in the wind</Variant>
		 </Variants>
		 <NoRandomChoice>1</NoRandomChoice>
		 <Ping>B7 D9</Ping> 
         <Hotkey>KEY_LALT+KEY_1</Hotkey>
		 <Cooldown>1</Cooldown>
</ Command>

A complete list of names of keys for the shortcuts - http://pastebin.com/5GKk9jBX

-----------------------------------------------------------------------------------------------------------------------------------------

Changelog:

v.2.2.2
   + Added a section with teams appointed for hotkeys
   ~ Fix of hot keys and their combination with the active chat window

v.2.3
   ~ Fixed handling of hotkeys for artillery
   ~ Macros %(vehicle)s,%(clan)s,%(name)s take your account values in the absence of a targeted player
   ~ Now uses Map_Default if current map section is empty
   + Support for macros in inline elements phrases
   + Ability to specify more than 6 items in each section. Seventh and further are only called by hotkey.
   + Integration of XVM player statistics. Requires xvm-stat 1.3.0 or newer.
   + Ability to set individual radial menu for specific tanks.
   + Support for tankname aliases in the names of configuration groups to separate settings between tanks
   + Hot-swap reload config in live battle (right ctrl + F11)
   + For debugging per replays, messages appear in bottom center now.
   + Added macro with the name of your own tank %(ownVehicle)s
   + Added Anti-recurrence to avoid selection of one variation twice in a row
   + Adjustable delay before re-issuing the same message (default is 1 second)
   + Serial-passthrough corrections

v.2.4.0
  ~ Adapting to 0.8.6
  ~ Compatible with xvm-stat 1.5.0 (XVM 4.0.0 +)
  + Auto-breaking long messages into multiple parts
  + Adjustable time delay before issuing commands on hotkeys
  + Configurable key combination to reboot the config
  + When debugging a replay messages are displayed in the chat, and not the tank message panel
  + Auto Fix file format after editing with Notepad and other
    editors that add BOM
  ~ Fixed bugs in formatting commands
  BUG: cannot determing view direction while holding the right mouse button
  
v.2.5 (10.09.13)
  ~ Adapting to patch 8.8
  + Added hotkey to display the interface
  - Removed auto-correction for BOM, check the config file yourself!