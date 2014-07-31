--------------------------------------------------------------------------------------------------
Important Note!
For previous installations: Please delete all botdata.json, botdata_XX.json and wiped_XX.json files in World of Tanks -> res_mods folder!
--------------------------------------------------------------------------------------------------

This mod allows for automatic marking of known bot users and idlers defined on www.eu-comm.de or if this fails,
locally in the file res_mods/ids_bots.json and ids_wipe.json.

It also reports any complaints issued ingame regarding Idle/Bot as a copy to our team via vbaddict.net. (Thank you Phalynx.)
(This should give us some pointers where to look if certain individuals are reported several times by different people.)

The mod will only retrieve the botdata once per gamesession during mapload of the first battle to protect server bandwidth.
python.log will show if the botdata was successfully retrieved at the start of the game session:
[NOTE] (botdetect.py, 20): Request of www.eu-comm.de botdata successful.

If a player from the list is in your game, he will be awarded by joining the [BOT!] clan once the map has finished loading.
If a player from the list got his account wiped by WG for botting, he is marked as [WIPE!] and a warning sign appears as clantag.
Keep an eye on those players to see if they saw the error of their ways and play responsible now. 

(Note that there is no real [BOT!] or [WIPE!] clan in wot as ! is not allowed for tags.)

If you run xvm with enabled clan icons, you will also see the red and white botskull icon.

-------------------------------------------------------------------------------------------------


The customnames.json file is a simple human readable text file type and valid for WoT ASIA, EU, NA and Ru, but certain format has to be kept.
You can use this file to create your own custom pseudoclan tag marking on a list of playernames of your own choosing.

- Never remove one of the [ and ] brackets at start or end of the list.
- All names have to be kept inside " quotes.
- All names have to be seperated with a trailing , comma at the end EXCEPT the last name in the list.

I recommend editing with Notepad++ as this editor keeps the encoding of the file and automatically keeps indentation.

{
    "pseudotag": "TESTING!", <---- this is the pseudoclan tag that gets added to each player from the list that follows it:

    "playernames": [         <---- User defined list of playernames (without clantag!) starts here.
        "thisisaplayername",
....
        "an0therpl4yername",
...
        "lastname_no_comma!"
    ]
}

Thats all. Have fun.

--------------------------------------------------------------------------------------------------
Important Note!
For previous installations: Please delete all botdata.json, botdata_XX.json and wiped_XX.json files in World of Tanks -> res_mods folder!
--------------------------------------------------------------------------------------------------