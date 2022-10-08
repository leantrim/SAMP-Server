 /*
**********************************************************[CREDITS]***************************************************************************************************
Start Date: 2013-JANUARI-31


                      ********     Training Server.    ********
								   Made by Lean(Charles Washington/Anthony Aguilar)

                                   CREDITS:
                                   SA-MP TEAM
                                   Y_LESS for SSCANF, ZCMD
                                   Ignocito for Streamer
                                   Lean for the script.





*********************************************************[END OF CREDITS]****************************************************************************************************



=======================================[UPDATE LOG]==========================================================================================================
2013

REV 1.1
Cleaned the script, removed 95 warnings, now no warnings given when compiling.
REV 0.2
ADDED /checkwefapons PLAYERID /WEAPID SHOWS YOUR WEAPONS including WEAPON NAME, WEAPONID, AMMO FOR YOUR WEAPONS. /SWAT2
FIXED /ID, Adjusted /swat /swat2 /duty /criminals.
ADJUSTED /takeweapons to /disarmf
ADDED /MEGAPHONE /Mf
ADDED /Togdeath
ADDED/FIXED /Createaccount
INCLUDES
REV 1.2

Added /vx /cc /carcolor /vehhp /getcar /gotocar /slapcar /nos /hydralics
Added /spike /disband (disdanbs the nearest spike) /removeallspike (disbands all spikes)
Removed old interiors, evrything is now dynamic.
Added a train, /plate, more anims added /anims /animlist
Added /explode, adjusted the radio, Criminals now have their own radio and SWAT/Cops has their own radio.

V 1.3
ADDED /engine /trunk /check /takegun
Lowered the ammo on all given weapons, according to LS-RP.
Addded /trace /clothes
Added /mark /gotomark for Level 2 admins!
Changed the "Server: Unknown Command" message.
Changed color of 911 call.

V 1.4
ADDED /despawn [VehicleID] /respawncar [VEHICLEID] for level 2 admins!
When you log out and log in your skin will be set to the last skin you used before you logged out!
Added so you can see how many times you have logged in on the metroserver, you can see this by typing /stats
/kd > /stats
/sstats for level two admins.
Added /doorshout/ds
Adjusted /gmx.
Added new teleport locations, Airport, ASD1, ASD2.
Added new vehicles.
Adjusted /mask and /aduty, when admins are on admin duty they will now see nametags all the time.


V 1.5
Re-written the whole script.
Adjusted the ban system.
removed /clothes.
Vehicles are now added in a separate file. Admins can now also save vehicles in game by typing /savecar.
Added a barrier, /barrier



V 1.6
Adjusted /pms.
Adjusted /admins.
Adjusted /ao
Fixed a bug in Tazer/Rubberbullet system.
Added /cw(carwhisper)
Fixed a bug in /vehhp
Fixed a bug in /whisper
Fixed /doorshout
Created a new Spectate system.
Fixed a bug in /kick


V 1.7
Added /getin
Added /goin
Added /eject
Adjusted /engine & /trunk
Added /togspec for LVL 2 admins.
Updated the chat/text system.


V 1.8
Fixed /barrier
Major ban system fix.
Added /crimskin
Added /civilian

V 1.85
Fixed /ame
Adjusted /crimskin & /criminal
Adjusted /whisper, added /w as an optional command for it.
Added /offduty as an optional command for /civilian

V1.86
Added /world
Added /setworld for admins.
Adjusted /setalevel & /aduty
Added /fightingstyle
Added /re(request)
Adjusted /stats & removed /sstats
Added /masked, added MaskID to /stats.
Adjusted /spec

v1.87
Adjusted /enter, you get teleported underneath the grounds and then teleported up.
To keep track of bug reports easier and to report them easier without all the hassle, use /devcom.
Fixed a bug in /time
You can now use /mark inside interiors.
Fixed /fixcar
Fixed a bug in /createacc
Fixed a typo in /eject


v1.88
Added /up & /down for level 1 admins.
Added /togmask /togtp /togduty
Added /ann(ouncment)

v1.89
You now get a message if you havent changed your default password.
Changed message when typing in unknown command.
Adjusted /goto & /gethere
Added /grouphelp
Added /setsking
Added /sethpg
Added /setarmorg
Added /disarmg
Added /givegung
/time > /tod
Added /time

v2.0
Added Dynamic Teleport System, /createtp for admins /teleport for normal players.
Added /setrank.

v2.1
Removed Old teleport system.
Adjusted Spike system.
Added /f
Added /d
Added /aname for admins.
Added /countdown/cd & /stopcd
Fixed a bug in /setrank
Added dynamic skin selection. /skin /createskin
Removed old skin selection.

v2.2
Adjusted /acchelp
Adjusted /F & /d
Re done the Radio system. /setfreq

v2.3
Adjusted /vx
Adjusted /despawnall if isvehicleoccupied it wont respawn.
Made a bigger explosion for /explode
Fixed VirtualWorlds bug.
Fixed a spectate system bug & updated /spec

2013-04-24
v2.4
Added /mute & /unmute
Adjusted a few commands.
Added correct color for /department
Adjusted the barrier.
Adjusted /ahelp & /help to make it easier to read it.


v2.5
2013-05-02
Removed the current breaching center and moved to the old breaching center due to much lag. (Too many objects).
Adjusted the message when you connect.
Adjusted adminmessages.
Added /telepos
Added /telename

v2.6
2013-05-11
When you click on a player on the tab score you will be teleported to him.
Small general updates.
Added /sendto
Added /carsign & /remove_Carsign
Created an dynamic XM Radio System.
Adjusted /spec

v2.7
2013-05-15
Removed old Rank system.
Created a new dynamic Rank system.
[b]2013-05-20[/b]
Enforcer & Bearcat's tires cannot be destroyed, they also spawn with 10k hp.
Updated password input dialog.
You now get a message when you die/kill. Who you kill/get killed by and weapon.
Updated the group commands.
[b]lines: 7373[/b]

v2.8
2013-05-21
Added /rangerespawn & /rangedespawn
2013-05-23
Adjusted rank system.
Adjusted /kick.
2013-05-28
Added /setstat.
Adjusted House filterscript.
2013-05-31
Revamped the siren system.
You now can see how many days,hours,minutes and seconds you have spent on the MetroServer.
Created /siren2
LINES: 7625

v2.9
2013-05-31
Re done the mark system, you can now have three different marks to choose between.
2013-06-04
Added /isafk
Small general updates.
You now have 60 seconds to log in or else you will be kicked.
Updated /plate, the script now recognizes the color you had on your vehicle before using /plate and will set same color.
Bearcat and bear will now get 10k hp on respawn.
Created a /mod menu so you can mod your vehicle.
Removed logged time on server.
Updated SWAT duty message.
Made a new function for when player is MASKED and not MASKED.
Updated /spec, removed messages when you spec someone.
Updated OnPlayerText.
Updated /mask

v2.10
2013-06-13
Updated /911
Integrated the House system into the gamemode.
Fixed a bug in /spec.
Added /nofam
revamped handcuff system.
Added /takeweapons
Added /speclist for level 2 admins.
Updated Spectate system.
Optimized the script.
Fixed a bug in /spectate system.

v2.11
Updated admin command and changed alevels.
Removed some commands.
Now using foreach instead of for(;;;)
Dynamic house system updates.
Added San tower interior, /exit&/enter point to san tower roof.
Updated a small typo in onplayerdeath.
Adjusted /givegun, its now /givegun [playerid] [WEAPON NAME] instead of ID of the weapon.

v2.12
When you spawn a vehicle the number plate will be set to your surname.
Removed old vehicle system.
Created a new dynamic vehicle system. /vehicle
Created a command to despawn your spawned vehicle. (/despawnmycar)
Updated all the vehicle commmands, you now get a warning if you attempt to despawn/respawn a invalid vehID.
Added /skinmen
Fixed so it propertly sets bearcat's and bear's HP.
Created /asdaccount for ASD Chief pilots to make temporary server accounts for Pilot trainee's.
/mark now support different virtualworlds.
Temporary removed /unbanip due to server crash when in use and its not needed.
Updated /setarmor message
Fixed so when you're masked and talk in the radio your maskid shows instead of name.
Revamped /isafk
You'll now get a notice when you're desynced.

v2.13
Adjusted account commands.
Created /tempacc works the same as /asdacc but for admins and CSD trainings.
Revamp of spectate system.

v2.14
Major script changes.
You now hit Y after /enter to teleport up
Security patch.
(cannot spawn wihtout actually typing in password).
Updated damage system.
#define CRITICALHEALTH 35.0 > lower than 35 HP will set your weapon skill to 50 on all weapons.
#define MINIMUMHEALTH 60.0 > lower than 60 HP will set your weapon skill to 500 on all weapons.
Upon getting shot in the head when on SWAT duty and armor with it will remove armor plus % extra damage
Upon getting shot in the head OFF SWAT duty will give 50 % extra damage.
Added a mask sign near AMMO BAR to show when you are masked.
/d > /dep
Created Helicopter camera mode.
/Check properly works now.
Major fix on /takegun
Server now recognizes if you are the owner of the account without typing in password. "Smart Login"
Users without account connecting can choose to send a request to admins onlione without having to go through the hassle of logging out, logging in again.
Updates to mask system.
Players are now forced to change password.

v2.15
Made a define for DEFAULT_SKIN, currently set to skin 266
/devcom notice added back when connecting.
sscanf fixes.
Synced time with servertime
Vehicle damages updates ( health < 450 ) = turn off engine,able to start again (health < 350) not able to start engine till fixed.
/noooc adjustment
Update to smart login
Fixes to damage system
Fixes to /yes & /no
Removed "KEEP SPRAYING FOR GRAFFITI!" > its now only /graffiti
Now using whirlpool! (Password hascher, hasching password into 129 characters!)


rev2.16
now using rev instead of v
Changed vehicle respawn time to 20k from 200.
Created a group system
/deletetp & /deletetele added
Admins can only use furniture and graffiti in order to avoid abuse.
Added /melow
Added /t
Weapon damage fix
Rubber & Tazer fix
Made /taser unisex
Made an optional command for /taser > /tazer
Fixed a bug with torso (DAMAGE SYSTEM)
Made an option for /stopanim > /sa
Typing Stopanim wont give you you are desynced warning anymore.
Added /gmembers
If you are in a group and connect to the server evryone in your group gets a notice.
Added groupnotices
Made a define for max strings > /createrank
Fixed a /goto bug
Fixed so when on SWAT duty and if you get shot in the head it will ignore ARMOR.
Fixed a bug where if you pressed on a player in tabscore to teleport it wouldnt display whole name.
/enter works like LSRP now.
Fixed /despawncar bug, would despawn the vehicle you was in even if you typed a vehicleID!
/groupname to change the name of a group added.

v2.17
Adjusted /damages
Adjusted /cc /vx
When an account has been password reseted, the user didnt get a notice about a needed password change.
Fighting Style now saves permanently!
Removed toolkit from /frisk
You can now use /damages no matter what distance from the player.
Created /togdesync /syncfix for desync fix.
Getting headshot damage is 1/3 chance (LSRP RELATED).
Fixed where /yes would not display the name of the accepted users name.
You now get a confirmation dialog when you use /yes  & /tempyes {CREDITS TO MMARTIN FOR CONFIRM DIALOG STOCK}
Fixed a bug in /deletetele
Now only using foreach(player,i) and removed any traces of for(max_players)
Code structure.
Fixed where desync message appeared when a player spawned.
Script optimization
Script updated to RC2!
Now using for(new i=0; i <= GetVehiclePoolSize(); i++) instead of for(MAX_VEHICLES)
Damage system fixes.
Damage skill system changes. (Script related only!)
#define MAX_VEHICLES set to 250.
Typo in /asdaccount fixed.
Added in two buildings in breaching center for more available interiors.
Some mapping stuff added in.
Lowered Combat Shotgun ammo given in /swat2 500 > 100 (Creds to Joshua_Murphy)
Added command /fixskil in case system didnt recover your shooting skills after healing up.
Maximum teleports raised to 70.
Adjusted /help & /ahelp

rev2.18
Additional traces of for(max_players) replaced with foreach.
Updated /mask messages
Removed the jetpack sound after /jetpack off
Additional desync fixes.
Added Apartment Complex [Creds to Joshua_Murphy}
Fixed where incorrect rank would show in /f.
You no longer get -100 dollars when you spawn
When going on adminduty it will save current hp&armor and set it back when off aduty
Fixed where admins on aduty could take armor damage.
Script optimizations.
Upon connecting to the server script will set you as a civilian.
Fixed where writing a long message in /pm would come out weird.
Redone /renameacc When changing someones name if they are online their name will be changed IG aswell.
You now get a message if you are not near any /enter spots.
When RPMODE is enabled you dont get any big weapons when using duty (M4,spaz,mp5 etc)
Added Harmony Oaks Apt Complex {Creds to Joshua_Murphy!}
You can now use /trunk outside vehicles.
Revamped /damages, now  works like it does on LS-RP!
You can now send long messages in /g.
Revamp of /rpmode
/stats changes.
Added kill death Ratio to /statsasd
50 percent less damage when player is shot in the legs.
Betfred interior re done by Joshua_Murphy
Spawnhealth changed 150.0 > 153.0
When you crash you will get teleported back to your crash location when logged in.
/isafk disabled till further notice.
Created /roadblock
/cc & /vx changes.
alternative cmd for /despawnmycar (/dsm)
All users now have a unique userid.
/carcolor adjusted.
/door adjustments

Revision 2.19
2015-03-28
[Changes]
Default Skin changed to 264 {Clown}.
/plate adjustment
/door > /adoor
/pm color changes.
Group system changes;
Tazer and rubberbullets can now both be active.
You can only taze people within 25 meters.
/id adjusted
Score is based on player level instead of alevel
Door Names distance changed to 25.0 meters visibilty.
Combat Shotgun Damage 50.0 > 53.0
/togdesync removed

[News]
/vlights [ON/OFF] added.
/uniform
Created /door
Jefferson Motel Interior mapping {CREDS to Joshua Murphy)
Levels
/lastincar added
/adminduty as alternative cmd for /aduty
Broken leg msg changed.
Mall garage added {Joshua Murphu}

[Fixes]
Typo in /hydraulics fixed.
Fixed where admins above lvl 4 couldnt use /tog commands
Fixed where if a player requested an account and was denied a new player who connected within 30 seconds would get kicked.

Revision 2.20
2015.04.03

[Changes]
/cc only works for drivers unless admin 1+
You can now use /skin [id]
/setstation adjustments.
Phone number in 911 now displays the callers userid.
/setrank adjustment
Command adjustments
/wveh > /awc
Vehicle flexebilty (Vehs get linked to interior ids etc)
/setstation now works for passangers aswell.
Fixed a typo in hydraulics.
/911 changes.
CRITICALHEALTH 35.0 > 20.0
MINIMUMHEALTH 65.0 > 40.0
Medium skill is now 500.0 > 650.0
SWAT/TRU cannot break their legs when getting shot.
/damages changed to Two minutes from 1 minute.
/stats revamped.
When you fire a tazer round you get forced into a reloading animation instead of being frozen.
Optimized mask system, dosent run a loop whenever a masked player streams in or vice versa

[Fixes]
Fixed a bug in /setstat
Fixed where /awc wouldnt return you to your original position.
Fixed a typo in /unmute
/givegun could be used by anyone
When getting tazed anim wouldnt apply properly.

[News]
/vehint for level 1 admins.
8 new anims. (/gtalk[ - 7]
Created /hq
You can now /teleport(tp) [TELEID] to go to a specific teleport.
You can now /setstation off/id
Tracing script rewritten.
Dynamic spawn system, lvl 4+ can edit spawn location /spawnloc
Ganton Blue Complex mapped (Credits to Joshua_Murphy)
Playersounds added to /911 /hq
changed sound on /countdown
Added sound on /mod


[Lines: 20k]

Revision 2.21
2015.04.26

[Changes]
Made userid 5 diggit.
/fly remade.
/ahelp re vamped
/onduty adjusted
Removed criminal announcment when you go on criminal duty.
/up /down revamped, you now have to input a number with designated
Additional changes to XM radio!
Onplayergivedamage > onplayertakedamage, this will make it more like lsrp, the shot taking somewhat longer to register

[Fixes]
Fixed a bug with assigning userids.
Fixed /isafk system
Payday system fixed, made accurate.
Fixed a bug in /rpmode

[News]
New admin commands added;
/bigbang /skydiveall /gotop [posid] /lastcmd /connecttime
Added /criminal2 with different weaponloadout.


[Lines: 20,7k]

Revision 2.22
2015.05.20

[Changes]
/plate > /setplate
Adjusted /setplate, gives now different messages, added it to /help
Adjusted vehicle command messages.
Furniture system changes.
Updated /connecttime, now displays time in minutes instead of seconds.
Added electrical sound when you fire a tazer.
/goin /getin updated, you no longer need to specify a seat id, the script detects the next available seat automaticly.
Using /criminal & /tru will not set ur skin if already using the designated skins for the commands.
/criminal(2) adjusted slightly.

[Fixes]
Added /uptime for server uptime.
Patched all the duty commands, cannot crash all the players on the server anymore.
Fixed where /dropgun which wouldnt allow you to drop a gun you had on you
Fixed /grabgun, the object didnt dissapear after using it.
Fixed getweaponslot function, now supports all guns being used in the /duty /tru /criminal

[News]
Added /sendtocar(stc)
New Furniture system feutures
Added an basic actor system.


[Lines: 23k]

Revision 2.23
2015.06.16

[Changes]
/hq and /faction can only be used once every 5 seconds.
Several damage changes. Shotgun/combat damage change, works like lsrp.
/damages displays now with seconds ago instead of minute and seconds.
Adjusted /stats.
/damages will now display armor damage like it works on LS-RP.

[Fixes]
The duty commands were sometimes not working with the new system to avoid crashes.
Fixed a bug where a line in /stats wouldnt show up.
Fixed a bug where if speccing someone and changing spectator and then turning spec off would set your pos to the spectator changed to which would loose original position.
Damage system fixes. Now using OnPlayerTakeDamage instead of OnPlayerGiveDamage. Its safe to say, these new fixes will be noticable in trainings.

[News]
XM Radio changes, can now set stations inside interiors.(Disbanded.).
Added /ddo (Door /do).





[Lines: 23k]

Revision 2.24
2015.07.01

[Changes]
Removed unecessary stuff from damage system, optmimized.
Colt 45 and uzi skill level adjusted.
Optimized /damages
/damages changes.


[Fixes]
Being killed by a fist wouldnt say anything in the death log.
Fixed some spelling errors.
Damage system fixes.
Colt 45 is not doubles anymore.
Fixed where players sometimes couldnt /tru.
Fixed where being on adminduty and doing /criminal & /duty would give the player 244 hp after the player went off adminduty.
Brutally Wounded fixes. (Credits to Otter for helping to test).

[News]
Dying from a non valid playerid will be messaged.
If a user dont have an account and requests one he will be promted with a dialog which he needs to answer a security question in order to continue.


[Lines: 22,9k]

Revision 2.25
2015.07.01

[Changes]
Changed the message when a player connected back before crashing on TRU duty.
Adjusted /givegun, admins can now specify either weaponID or the name of the weapon.
The shotgun damage is only added if a player is closer than 20 radius to the target.
Payday adjustments.
Server upgraded to 60 slots.
When a player gets tazed/rubberbullet he gets frozen for four seconds.

[Fixes]
Adjusted the distance on the /ame text that would appear above the head.
Fixed the /carsign distance text and made it non visible through walls.
Brutally wounded changes.

[News]
Created a command to get a shotgun instead of running to a vehicle. /shotgun
Creating a new forward for freezing players.

[MYSQL UPDATE NOTES]

[Transforms]
User system transformed into MYSQL. - 15/07/08

Teleport System transformed into MYSQL. - 15/07/09

Furniture System transformed into MYSQL. - 15/07/09

Door System transformed into MYSQL. - 15/07/16

Rank System Transformed into MYSQL - 15/07/16

[MySQL Fixes]
Fixed a bug with furniture deleting system. - 15/07/12

[MySQL] Changes
/deleteacc /createacc removed. - 15/07/09
/enableacc /disableacc added - 15/07/09
/resetpw adjusted accordingly. - 15/07/09
/renameacc adjusted accordingly. - 15/07/09

Note: Massive credits to Otter(Jeffrey Pritchard) for helping with the MYSQL transformation

Revision 2.26
2015.08.05

[Changes]
/freeze & /thaw enabled for level 1 admins.
Added more stuff into /shotgun to prevent abuse.
/ahelp adjusted.
Chat messages adjusted.
/despawn removed.
/despawncar > /apark
/admins are only available for admins.
/vx /cc /v only shows the message for admins.
/setarmor is available for non admins aswell, however they can only give themselfs armor.
Anyone can check /connecttime on any player.
MYSQL CHANGES:
XM Radio system transformed into MYSQL.

[Fixes]
Tracing system fixed.
Fixes to /aduty

[News]
Set drunk level when a player get tazered/rubberbullet/sprayed.
Internal admin changes.
SD mapping outside HQ.
New anims added, /camera1 & /drunkwalk
Removed the dynamic skin system as it was unecessary.

Lines: 23464


Revision 2.27
2015.08.25

[Changes]
Now able to set door names to nothing.
ZCMD updated.

[Fixes]
/stopanim(sa) wont throw players out of the cars now.
Major vehicle issue fix.
Fixed an issue with the deathmessages.

[News]
New MYSQL vehicle system introduced.
Chat anim's introduced with 8 different chatting styles.
/setstyle added.
LSRP /MDC replica added
/caranim added.
SD Academy interior mapped in.
/sa for stopanim added in
Group System transformed into MYSQL.
Various script changes to suit it as a SD training server.
RU mapping added in.
Updated the pickups for interios.
/createacc added.
Made commands to be able to set ranks/groupid/admin for players offline.
/tpbreach updated, thanks to Jack Lancer.

Lines: 25000

Revision 2.28
2015.09.11

[Changes]
Updated Payday giveout, it takes into consideration what level + how many minutes you've been connected.

[Fixes]
Fixed a bug with /setarmor where it would affect someone else.
Script updates.

[News]
Added /colorlist
Added a clothing system. /clothing & /buy
Created two type of huds.
Added /toghud

Lines: 26000

Revision 2.29
2015.09.11

[Changes]
Removed the autologin.

[Fixes]
Brutally wounded damages fixes.
Fixed a bug with furniture sys with creating doors.
Damage system fixes.

[News]
Security risk warnings.

Lines 27000

Revision 2.30
2015.10.12

[Changes]
Removed the password being sent to the user after changing it.

[Fixes]
Fixed where the chat anim wouldnt stop properly. (MAYBE!)
Roadblock fixes.
Rubberbullet restricted to shotgun only.
Fixed where tazer message would show for the criminal instead of the cop if they are too far away.
Furniture sys fixes.
Fixed an issue with death messages not being printed.
Fixed the issue where if you typed out long messages it wouldnt show the whole message.

[News]
Added a new command for lvl 3+, /reviveg, able to revive people close to himself.
Added /getcrims, /getduty, /getsed(swat)

Revision 2.31
2015.11.12


[Changes]
Removed /ng
Clothing sys changes.

[Fixes]
Internal fixes.

[News]
Cellphone sys.
/gate added to the furniture sys.


Revision 2.32
2016.02.04

[Changes]


[Fixes]
Removed auto disable of account
Removed the anti account duplicate system
When Damage system is disabled no damage will be done now.

[News]
Added /dmstatus to check if damage system is enabled or disabled.


Revision 2.33
2016.02.04

[Changes]


[Fixes]
Removed auto disable of account
Removed the anti account duplicate system
When Damage system is disabled no damage will be done now.
Phone sys fixes.
Fixed a bug where players would be put in virtual world 1.
Critical bug fix with on playerdisconnect where player stats would not save.
Fixed where /siren/2 where the siren object would not appear the world.
Hotfix for accounts being replaced. (Possibly!)
Fixed where static vehicles color would be able to be changed.

[News]


Revision 2.34
2016.03.12

[Changes]


[Fixes]
Fixed where /siren/2 where the siren object would not appear the world.
Hotfix for accounts being replaced. (Possibly!)
Fixed where static vehicles color would be able to be changed.

[News]


Revision 2.35
2016.03.14

[Changes]


[Fixes]
Payday fixes, adjusted paycheck. Cash was also reset due to people ending up with negative cash.

[News]


Revision 2.36
2016.03.14

[Changes]
Damage system changes, the system is using only custom damage and no extra samp damage.
Spectate changes
Pm color changed

[Fixes]
Damage sys fixes.
Fixed an issue with brutally wounded system.

[News]
Password needs to be atleast 9 characters long now.

Revision 2.37
2016.03.24

[Changes]

[Fixes]
Fixed where world time would not be set on server startup.
Fixed where players would not get killed.

[News]
All furnitures now only get loaded per interior once a player enters the interior, properties not in use will not have any furniture loaded.
Furnitures inside properties now also gets unloaded on payday if property is empty.
Cash changes.
New Graffiti system.
Door System changes, doors now have the option to be enterd like on LS-RP.
Sprinting while having a broken leg will force an animation.

Revision 2.38
2016.04.15

[Changes]

[Fixes]
Fixed where world time would not be set on server startup.
Fixed where players would not get killed.
Added additional steps in order to try and counter the account bug where stats would be reset.
Fixed /up & /down.
Sprinting while having a broken leg will force an animation.

[News]
New spike strip system.
/reviveall for level 3 admins.
/spike l(arge) added.


Revision 2.39
2016.04.27

[Changes]
Damage system changes.

[Fixes]
Spikes not getting disbanded in /disbandalll.

[News]
[SD Server] Supra addded as a server manager.


Revision 2.40
2016.05.05

[Changes]


[Fixes]
Fixed accounts being replaced in the mysql table.

[News]
[PD Server] Mapping by Murphy added.
New /id command.
New spectate system.
[SD Server] All accounts wiped.

Revision 2.41
2017.11.25

[Changes]
New login box.

[Fixes]
Fixed spectate system bug where you would randomly get a message saying spectate was approved. (Not tested!)


[News]
Updated to RC4.
Custom player models.

Revision 2.43
2017.12.26

[Changes]
Damage system changes, better hit register.

[Fixes]
Fixed /setstation list not showing, lowered MAX_STATIONS from 140 to 40.

[News]
New Skins are added in.

Revision 2.44
2017.12.25

[News]
IC chat can now be toggled (on/off) by an admin.
Script optimization.

[Changes]
MAX_PLAYERS define lowered to 50.
MAX_STATIONS lowered from 140 to 40.
Custom skins disabled due to server bugging out, awaiting new SAMP update for possible fix.
/o(oc) is now enabled by default.

[Fixes]
Minor bug fixes.

Revision 2.45
2017.12.26

[News]
Script optimization.
Metropolitan teleport system /metrotp

[Changes]
Isafk system revamped (Only script changes).
Addded 3 second spam protection to the spectate system when changing between players with key_fire/key_aim

[Fixes]
Typo in /gotomark
Fixed a bug in /resetpw (Thanks to Andrew_Luera).
Fixed a major bug in /watchbreach
Spectate system bug fixed.

=====================================[END OF UPDATE LOG]======================================================================================================*/

#include <LeanInc/Lean>

#include <LeanInc/AdminCommands>

#include <LeanInc/ServerMapping>

#include <LeanInc/GroupSys>

#include <LeanInc/Graffiti>

#include <LeanInc/IRC>

#include <LeanInc/DoorSys>

#include <LeanInc/Entity_Spike>

#include <LeanInc/SpectateSys>





////////////////////////////////////////////////////
#define METROVERSION "Training Server 2.45"////////////////////////
////////////////////////////////////////////////////




#define SECRET_WORD "IwantMyAccountBackPlease"
#define SECRET_QUESTION "What is the password?"


#define PAYDAY_AMOUNT 2500
//**********


/*
Enables/disables the anti cheat.��
*/

#define Lean_AntiCheat 1






//#include <fixes2>
//#include <fixes>


//#include <checkpoints>


#define HUD_ID 1
#define HUD_SPEED 2
#define HUD_HEALTH 3
#define HUD_KMH 4
#define HUD_txtHEALTH 6
#define HUD_VEHICLEINFO 5
#define HUD_txtID 7
#define HUD_CHAN 8
#define HUD_RADIOINFO 9
#define HUD_txtSLOT 10
#define HUD_RADIOSLOT 11





#define MAX_RANKS 40
#define MAX_TELEPORTS 100


#define DIALOG_CONFIRM_SYS 03503


//IMPORTANT DEFINES




//



new bool:ended[MAX_PLAYERS];
#if defined TRAINING_SASD
#define COLOR_BREACH 0x006400FF
#endif

#if defined TRAINING_METRO
#define COLOR_BREACH 0x8D8DFFC8
#endif




#pragma dynamic 0x10000




#define FINAL_DOTS
#define MAX_CHARS_PER_LINE (110)



//NEWS
new TempAcc[MAX_PLAYERS];

new bool:p_StatsLoaded[MAX_PLAYERS];

static VehicleDriverPlayerid[MAX_VEHICLES] = { INVALID_PLAYER_ID, ... };



stock GetVehicleDriver(vehicleid)
{
	if(vehicleid < 1 || vehicleid > sizeof(VehicleDriverPlayerid)) return INVALID_PLAYER_ID; // invalid array
	if(VehicleDriverPlayerid[vehicleid - 1] != INVALID_PLAYER_ID  && IsPlayerInVehicle(VehicleDriverPlayerid[vehicleid - 1], vehicleid) && GetPlayerVehicleSeat(VehicleDriverPlayerid[vehicleid - 1]) == 0)
		return VehicleDriverPlayerid[vehicleid - 1]; // return playerid vehicledriver
	return VehicleDriverPlayerid[vehicleid - 1] = INVALID_PLAYER_ID;
}



/* CELL PHONE SYS */
#define PLAYER_TALKING true
#define PLAYER_NOT_TALKING false
#define PLAYER_PHONE_ON true
#define PLAYER_PHONE_OFF false
#define PLAYER_LOUDSPEAKER_ON true
#define PLAYER_LOUDSPEAKER_OFF false
#define PLAYER_BEING_CALLED true
#define PLAYER_NOT_BEING_CALLED false
#define PLAYER_ON_PHONE true
#define PLAYER_OFF_PHONE false

#define RING_TONE 1085


/* Pvars */
new bool:E_OnPhone[MAX_PLAYERS] = PLAYER_ON_PHONE,
	bool:E_BeingCalled[MAX_PLAYERS] = PLAYER_NOT_BEING_CALLED,
	bool:E_PhoneOn[MAX_PLAYERS] = PLAYER_PHONE_ON,
	bool:E_PhoneLoudSpeaker[MAX_PLAYERS] = PLAYER_LOUDSPEAKER_OFF,
	E_TalkingTo[MAX_PLAYERS] = -1,
	E_PhoneTimer[MAX_PLAYERS],
	bool:E_Talking[MAX_PLAYERS] = PLAYER_NOT_TALKING;



new desyncsts[MAX_PLAYERS];

new bool:DM1[MAX_PLAYERS];
new bool:DM[MAX_PLAYERS];


new bool:CrimSkinning[MAX_PLAYERS];

new
    gPlayerStopWatchTick[MAX_PLAYERS],
    bool:isplayerpaused[MAX_PLAYERS];


new bool: animtogg[MAX_PLAYERS];

new bool:togamsg[MAX_PLAYERS];

new VehicleNamesHud[212][] = {
   "LANDSTALKER",  "BRAVURA",  "BUFFALO", "LINERUNNER", "PERENNIAL", "SENTINEL",
   "DUMPER",  "FIRETRUCK" ,  "TRASHMASTER" ,  "STRETCH",  "MANANA",  "INFERNUS",
   "VOODOO", "PONY",  "MULE", "CHEETAH", "AMBULANCE",  "LEVIATHAN",  "MOONBEAM",
   "ESPERANTO", "TAXI",  "WASHINGTON",  "BOBCAT",  "MR WHOOPEE", "BF INJECTION",
   "HUNTER", "PREMIER",  "ENFORCER",  "SECURICAR", "BANSHEE", "PREDATOR", "BUS",
   "RHINO",  "BARRACKS",  "HOTKNIFE",  "TRAILER",  "PREVION", "COACH", "CABBIE",
   "STALLION", "RUMPO", "RC BANDIT",  "ROMEO", "PACKER", "MONSTER",  "ADMIRAL",
   "Squalo", "Seasparrow", "Pizzaboy", "Tram", "Trailer",  "Turismo", "Speeder",
   "REEFER", "TROPIC", "FLATBED","YANKEE", "Caddy", "Solair","Berkley's RC Van",
   "Skimmer", "PCJ-600", "FAGGIO", "FREEWAY", "RC Baron","RC Raider","GLENDALE",
   "OCEANIC", "SANCHEZ", "Sparrow",  "Patriot", "QUAD",  "COSTGUARD", "DINGHY",
   "Hermes", "SABRE", "Rustler", "ZR-350", "WALTON",  "REGINA",  "COMET", "BMX",
   "BURRITO", "CAMPER", "Marquis", "Baggage", "Dozer", "MAVERICK", "NEWS CHOPPER",
   "RANCHER", "FBI RANCHER", "VIRGO", "GREENWOOD","Jetmax","Hotring","Sandking",
   "BLISTA COMPACT", "POLICE MAVERICK", "Boxville", "BENSON","MESA","RC Goblin",
   "Hotring Racer", "Hotring Racer", "Bloodring Banger", "RANCHER",  "SUPER GT",
   "ELEGANT", "JOURNEY", "BIKE", "Mountain Bike", "Beagle", "Cropdust", "Stunt",
   "Tanker", "ROADTRAIN", "NEBULA", "MAJESTIC", "BUCCANEER", "SHAMAL",  "HYDRA",
   "FCR-900","NRG-500","HPV1000", "Cement Truck", "TOW TRUCK","FORTUNE","Cadrona",
   "FBI TRUCK", "WILLARD", "FORKLIFT","Tractor", "Combine", "FELTZER","REMINGTON",
   "SLAMVAN", "BLADE", "Freight", "Streak", "Vortex", "Vincent", "BULLET","CLOVER",
   "SADLER",  "FIRETRUCK", "HUSTLER", "INTRUDER", "PRIMO", "CARGOBOB",  "TAMPA",
   "SUNRISE", "MERIT",  "UTILITY TRUCK",  "NEVADA", "YOSEMITE", "WINDSOR",  "Monster",
   "Monster","URANUS","JESTER","SULTAN","STRATUM","ELEGY","Raindance","RCTiger",
   "Flash","TAHOMA","SAVANNA", "BANDITO", "Freight", "Trailer", "Kart", "Mower",
   "Dune", "Sweeper", "BROADWAY", "TORNADO", "AT-400",  "DFT-30", "HUNTLEY",
   "STAFFORD", "BF-400", "NEWSVAN","Tug","Trailer","EMPEROR","WAYFARER","EUROS",
   "HOTDOG", "Club", "Trailer", "Trailer","ANDROMADA","DODO","RC Cam", "Launch",
   "POLICE CAR (LSPD)", "POLICE CAR (SFPD)","POLICE CAR (LVPD)","POLICE RANGER",
   "PICADOR",   "S.W.A.T. VAN",  "ALPHA",   "PHOENIX",   "GLENDALE",   "SADLER",
   "Luggage Trailer", "Luggage Trailer", "Stair Trailer", "Boxville", "Farm Plow",
   "Utility Trailer"
};

#define MAX_HUDS 13

new PlayerText:TDEditor_PTD[MAX_PLAYERS][MAX_HUDS];
new PlayerText:TDEditor_TWO[MAX_PLAYERS][MAX_HUDS];

new bool:toghud[MAX_PLAYERS];




stock SetPlayerPosEx(playerid, Float:x, Float:y, Float:z, time=0)
{
    disableTP[playerid] = true;
    if(time > 10)
    {
		TogglePlayerControllable(playerid, 0);
		FreezePlayer(playerid, time);
	}
	if(GetPlayerState(playerid) == 2)
	{
	    new tmpcar = GetPlayerVehicleID(playerid);
	    SetVehiclePos(tmpcar, x, y, z);
	    EachPlayer( pid)
	    {
     		if(IsPlayerInVehicle(pid, tmpcar) && pid != playerid)
       		{
         		SetPlayerInterior(pid, GetPlayerInterior(playerid));
           		SetPlayerVirtualWorld(pid, GetPlayerVirtualWorld(playerid));
			}
     	}
	}
	else
	{
		SetPlayerPos(playerid, x, y, z);
 	}
	XTP[playerid] = x, YTP[playerid] = y, ZTP[playerid] = z;
	if(timers[playerid] == 1)
	{
		KillTimer(timertp[playerid]);
	}
	timers[playerid] = 1;
	timertp[playerid] = SetTimerEx( "SetTimerPos", 500, false, "i", playerid );
	return 1;
}

forward SetTimerPos(playerid);
public SetTimerPos(playerid)
{
    if(IsPlayerInRangeOfPoint (playerid, 50.0, XTP[playerid], YTP[playerid], ZTP[playerid]) )
    {
        disableTP[playerid] = false;
        timers[playerid] = 0;
	}
	else
	{
	    new Float:x, Float:y, Float:z;
	    GetPlayerPos(playerid, x, y, z);
		XTP[playerid] = x, YTP[playerid] = y, ZTP[playerid] = z;
		disableTP[playerid] = false;
		timers[playerid] = 0;
	}
	return 1;
}



#define IC_DISABLED_ATTEMPT_MESSAGE "The IC Chat is currently disabled."


#define Grey 0xC0C0C0FF



#define COL_WHITE "{FFFFFF}"
#define COL_RED "{F81414}"

#define COL_LIGHTBLUE "{00CED1}"



/* Clothing Script */
#define NEXT_PAGE_SLOT 50

//Dialog ID's
#define D_CLOTHES 1000
#define D_BUY_CLOTHES 1001

//Dialog Stats
#define ON_CLOTHES_LIST 500
#define ON_CLOTHES_NONE 501
#define ON_CLOTHES_CHOSE 502
#define ON_CLOTHES_BONE 503
#define ON_CLOTHES_DUTY 504

#define ON_CLOTHES_BUY 504


/**************************************************************************************/
#define MAX_MODELS 5

enum _PLAYER_MODELS
{
	cID,
	cModelID,
	cBoneID,
	Float:cOffsetX,
	Float:cOffsetY,
	Float:cOffsetZ,
	Float:cRotX,
	Float:cRotY,
	Float:cRotZ,
	Float:cScaleX,
	Float:cScaleY,
	Float:cScaleZ,
	enabled,
	bool:cOn,
}

new ClothesInfo[MAX_PLAYERS][MAX_MODELS][_PLAYER_MODELS];
new dstr[500];
/**************************************************************************************/

enum _MODELS_INFO
{
	modelID,
	modelName[128],
	modelPrice,
	modelBone
}

new ModelsInfo[][_MODELS_INFO] = {
{18636, "Police Cap", 1000, 2},
{19100, "Sheriff Hat", 1000, 2},
{19141, "Helmet", 1000, 2},
{19142, "Armor", 5000, 1},
{18641, "Flashlight", 500, 5},
{19138, "Police Glasses", 500, 2},
{19139, "Police Glasses2", 500, 2},
{19140, "Police Glasses3", 500, 2},
{18637, "Police Shield", 2000, 5}
};

/**************************************************************************************/


stock LoadPlayerClothes(playerid)
{
	new query[500];
	format(query, sizeof(query), "SELECT * FROM `seb-clothes` WHERE `holder` = '%d'", PlayerInfo[playerid][userid]);
	mysql_function_query(1, query, true, "OnClothesLoad", "i", playerid);
}

forward OnClothesLoad(playerid);
public OnClothesLoad(playerid)
{
	new rows, fields;
	cache_get_data(rows, fields);
	if(rows)
	{
		for(new i = 0; i < rows; i++)
		{
			ClothesInfo[playerid][i][cID] = cache_get_row_int(i, 0);
			ClothesInfo[playerid][i][cModelID] = cache_get_row_int(i, 2);
			ClothesInfo[playerid][i][cBoneID] = cache_get_row_int(i, 3);
			ClothesInfo[playerid][i][cOffsetX] = cache_get_row_float(i, 4);
			ClothesInfo[playerid][i][cOffsetY] = cache_get_row_float(i, 5);
			ClothesInfo[playerid][i][cOffsetZ] = cache_get_row_float(i, 6);
			ClothesInfo[playerid][i][cRotX] = cache_get_row_float(i, 7);
			ClothesInfo[playerid][i][cRotY] = cache_get_row_float(i, 8);
			ClothesInfo[playerid][i][cRotZ] = cache_get_row_float(i, 9);
			ClothesInfo[playerid][i][cScaleX] = cache_get_row_float(i, 10);
			ClothesInfo[playerid][i][cScaleY] = cache_get_row_float(i, 11);
			ClothesInfo[playerid][i][cScaleZ] = cache_get_row_float(i, 12);
			ClothesInfo[playerid][i][enabled] = cache_get_row_int(i, 13);
			ClothesInfo[playerid][i][cOn] = true;
		}
	}
	return 1;
}








stock GetFreeSlot(playerid)
{
	for(new i = 0; i < MAX_MODELS; i++)
	{
		if(!ClothesInfo[playerid][i][cOn])
			return i;
	}
	return -1;
}

stock OnBuyClothes(playerid, index, model, bone, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
	new query[500];
	format(query, sizeof(query), "INSERT INTO `seb-clothes` (holder, model, bone, offestx, offesty, offestz, rotx, roty, rotz, scalex, scaley, scalez, enabled) VALUES ('%d', %d, %d, %f, %f, %f, %f, %f, %f, %f, %f, %f, 0)",
	PlayerInfo[playerid][userid], model, bone, fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, fScaleX, fScaleY, fScaleZ);
 	mysql_function_query(1, query, true, "OnFinishPurchase", "id", playerid, index);
 //mysql_tquery(mysql, leanquery, "", "");
}

forward OnFinishPurchase(playerid, index);
public OnFinishPurchase(playerid, index)
{
	ClothesInfo[playerid][index][cID] = cache_insert_id(1);
	return 1;
}
public OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
	if(GetPVarInt(playerid, "EditingNow") == 1)
	{
		new i = GetPVarInt(playerid, "EditingSlot");
		if(response)
		{
			ClothesInfo[playerid][i][cOffsetX] = fOffsetX;
			ClothesInfo[playerid][i][cOffsetY] = fOffsetY;
			ClothesInfo[playerid][i][cOffsetZ] = fOffsetZ;
			ClothesInfo[playerid][i][cRotX] = fRotX;
			ClothesInfo[playerid][i][cRotY] = fRotY;
			ClothesInfo[playerid][i][cRotZ] = fRotZ;
			ClothesInfo[playerid][i][cScaleX] = fScaleX;
			ClothesInfo[playerid][i][cScaleY] = fScaleY;
			ClothesInfo[playerid][i][cScaleZ] = fScaleZ;
		}
		DeletePVar(playerid, "EditingSlot");
		DeletePVar(playerid, "EditingNow");
		ReplaceClothing(playerid, i);
	}
	if(GetPVarInt(playerid, "SelectedItem") == 1 && GetPVarInt(playerid, "EditingNow") == 0)
	{
		new i = GetPVarInt(playerid, "ItemIndex");
		new slot = GetPVarInt(playerid, "FreeSlot");
		if(response)
		{
		    new msg[128];
			OnBuyClothes(playerid, slot, ModelsInfo[i][modelID], ModelsInfo[i][modelBone], fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, fScaleX, fScaleY, fScaleZ);
			GiveMoney(playerid, -ModelsInfo[i][modelPrice]);
			GivePropMoney(PROPERTY_BANK, ModelsInfo[i][modelPrice]);
			format(msg, sizeof(msg), "You have successfully purchased a {FFFF00}%s{FFFFFF} for {FFFF00}%s", ModelsInfo[i][modelName], currency_format(ModelsInfo[i][modelPrice]));
			SendClientMessage(playerid, -1, msg);
			ClothesInfo[playerid][slot][cModelID] = ModelsInfo[i][modelID];
			ClothesInfo[playerid][slot][cBoneID] = ModelsInfo[i][modelBone];
			ClothesInfo[playerid][slot][cOffsetX] = fOffsetX;
			ClothesInfo[playerid][slot][cOffsetY] = fOffsetY;
			ClothesInfo[playerid][slot][cOffsetZ] = fOffsetZ;
			ClothesInfo[playerid][slot][cRotX] = fRotX;
			ClothesInfo[playerid][slot][cRotY] = fRotY;
			ClothesInfo[playerid][slot][cRotZ] = fRotZ;
			ClothesInfo[playerid][slot][cScaleX] = fScaleX;
			ClothesInfo[playerid][slot][cScaleY] = fScaleY;
			ClothesInfo[playerid][slot][cScaleZ] = fScaleZ;
			ClothesInfo[playerid][slot][cOn] = true;
		}
		else
		{
			SendClientMessage(playerid, COLOR_LIGHTRED, "You've canceled the purchase of this item.");
			RemovePlayerAttachedObject(playerid, index);
		}
		DeletePVar(playerid, "SelectedItem");
		DeletePVar(playerid, "ItemIndex");
		DeletePVar(playerid, "FreeSlot");
	}
	return 1;
}


stock ClothesEditDialog(playerid, index)
{
	if(IsPlayerAttachedObjectSlotUsed(playerid, index))
	{
		ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_LIST, "Clothing List", "Adjust The Item\nChange Bone Slot\nTake Off\nEnable / Disable on {8D8DFF}/duty", "Select", "<<<", ON_CLOTHES_CHOSE);
	}
	else
	{
		ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_LIST, "Clothing List", "Adjust The Item\nChange Bone Slot\nPlace On\nEnable / Disable on {8D8DFF}/duty", "Select", "<<<", ON_CLOTHES_CHOSE);
	}
}



LEANCMD:(clothing)
{
	new option[11], secoption, msg[128];
	if(GetPVarInt(playerid, "SelectedItem") == 1)
		return SendClientMessage(playerid, COLOR_LIGHTRED, "Please finish the current operation.");
	if(sscanf(params, "s[11]D(-1)", option, secoption))
	{
		SyntaxMSG(playerid, "/clothing [place | adjust | drop] - /buy to buy a clothing object.");
		DisplayClothing(playerid);
		return 1;
	}
	else if(!strcmp(option, "place", true))
	{
		new slot;
		if(sscanf(params, "{s[7]}d", slot))
		{
			SyntaxMSG(playerid, "/clothing place [slot]");
			for(new i = 0; i < MAX_MODELS; i++)
			{
				if(ClothesInfo[playerid][i][cOn])
				{
					format(msg, sizeof(msg), "%d. %s", i, GetModelName(ClothesInfo[playerid][i][cModelID]));
					SendClientMessage(playerid, -1, msg);
				}
			}
			return 1;
		}
		if(slot > MAX_MODELS || slot < 0) return SendClientMessage(playerid, -1, "Invalid slot.");
		if(!ClothesInfo[playerid][slot][cOn]) return SendClientMessage(playerid, -1, "No such item.");
		PlaceClothing(playerid, slot);
	}
	else if(!strcmp(option, "adjust", true))
	{
		new slot;
		if(sscanf(params, "{s[7]}d", slot)) return SyntaxMSG(playerid, "/clothing adjust [slot]");
		if(slot > MAX_MODELS || slot < 0) return SendClientMessage(playerid, -1, "Invalid slot.");
		if(!ClothesInfo[playerid][slot][cOn]) return SendClientMessage(playerid, -1, "No such item.");
		EditClothing(playerid, slot);
	}
	else if(!strcmp(option, "drop", true))
	{
		new slot;
		if(sscanf(params, "{s[7]}d", slot)) return SyntaxMSG(playerid, "/clothing drop [slot]");
		if(slot > MAX_MODELS || slot < 0) return SendClientMessage(playerid, -1, "Invalid slot.");
		if(!ClothesInfo[playerid][slot][cOn]) return SendClientMessage(playerid, -1, "No such item.");
		format(msg, sizeof(msg), "You have dropped your %s.", GetModelName(ClothesInfo[playerid][slot][cModelID]));
		SendClientMessage(playerid, -1, msg);
		RemoveFromSlot(playerid, slot);
	}
	else
	{
		SendClientMessage(playerid, COLOR_LIGHTRED, "Invalid parameter.");
	}
	return 1;
}

stock ShowClothesDialog(playerid, fromslot)
{
	new string[2000], msg[128];
	for(new i = fromslot; i < fromslot + NEXT_PAGE_SLOT; i++)
	{
		if( i < sizeof( ModelsInfo ) )
		{
			format(msg, sizeof(msg), "%d. %s \t- \t{9ACD32}$%d\n", i+1, ModelsInfo[i][modelName], ModelsInfo[i][modelPrice]);
			strcat(string, msg);
		}
		if( i == ( fromslot + NEXT_PAGE_SLOT ) - 1 && i < sizeof( ModelsInfo ) )
			strcat(string, "Next Page\n");
	}
	SetPVarInt(playerid, "FromSlot", fromslot);
	ShowClothingDialog(playerid, D_BUY_CLOTHES, DIALOG_STYLE_LIST, "/buy itemID", string, "Ok", "Cancel", ON_CLOTHES_BUY);
}

LEANCMD:(buy)
{
	if(GetPVarInt(playerid, "SelectedItem") == 1) return SendClientMessage(playerid, COLOR_LIGHTRED, "Please finish the current operation.");
	ShowClothesDialog(playerid, 0);
	return 1;
}

LEANCMD:(clearclothes)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
    #endif
	new id;
	if(sscanf(params,"u", id)) return SCM(playerid, COLOR_GREY, "USAGE: /clearclothes [playerid/partofname]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	new string[128];

   	format(string, sizeof(string), "AdmWarn(%d): %s has cleared %s' clothes.", ALEVEL, GetName(playerid), GetName(id));
    SendAdminMessage(COLOR_YELLOW, string);

    ResetClothes(id);

	return 1;
}

stock SavePlayerClothes(playerid)
{
	for(new i = 0; i < MAX_MODELS; i++)
	{
		if(ClothesInfo[playerid][i][cOn])
		{
			UpdatePlayerClothing(playerid, i);
		}
	}
	return 1;
}

stock UpdatePlayerClothing(playerid, slot)
{
	new query[500];
	format(query, sizeof(query), "UPDATE `seb-clothes` SET `bone` = %d, `offestx` = %f, `offesty` = %f, `offestz` = %f, `rotx` = %f, `roty` = %f, `rotz` = %f, `scalex` = %f, `scaley` = %f, `scalez` = %f, `enabled` = %d WHERE `id` = %d",
	ClothesInfo[playerid][slot][cBoneID], ClothesInfo[playerid][slot][cOffsetX], ClothesInfo[playerid][slot][cOffsetY], ClothesInfo[playerid][slot][cOffsetZ], ClothesInfo[playerid][slot][cRotX], ClothesInfo[playerid][slot][cRotY], ClothesInfo[playerid][slot][cRotZ], ClothesInfo[playerid][slot][cScaleX], ClothesInfo[playerid][slot][cScaleY], ClothesInfo[playerid][slot][cScaleZ], ClothesInfo[playerid][slot][enabled], ClothesInfo[playerid][slot][cID]);
	mysql_function_query(1, query, false, "", "");
	return 1;
}

stock EditClothing(playerid, index)
{
    new msg[128];
	if(GetPVarInt(playerid, "EditingNow") == 1) return SendClientMessage(playerid, COLOR_LIGHTRED, "Please finish the current operation.");
	format(msg, sizeof(msg), "Editing now your {00FF00}%s{FFFFFF} - Index {00FF00}%d{FFFFFF}.", GetModelName(ClothesInfo[playerid][index][cModelID]), index);
	SendClientMessage(playerid, -1, msg);
	SetPVarInt(playerid, "EditingSlot", index);
	SetPVarInt(playerid, "EditingNow", 1);
	if(!IsPlayerAttachedObjectSlotUsed(playerid, index))
	{
		SetPlayerAttachedObject(playerid, index, ClothesInfo[playerid][index][cModelID], ClothesInfo[playerid][index][cBoneID], ClothesInfo[playerid][index][cOffsetX], ClothesInfo[playerid][index][cOffsetY], ClothesInfo[playerid][index][cOffsetZ], ClothesInfo[playerid][index][cRotX], ClothesInfo[playerid][index][cRotY], ClothesInfo[playerid][index][cRotZ], ClothesInfo[playerid][index][cScaleX], ClothesInfo[playerid][index][cScaleY], ClothesInfo[playerid][index][cScaleZ]);
	}
	EditAttachedObject(playerid, index);
	return 1;
}

stock ReplaceClothing(playerid, index)
{
	RemovePlayerAttachedObject(playerid, index);
	SetPlayerAttachedObject(playerid, index, ClothesInfo[playerid][index][cModelID], ClothesInfo[playerid][index][cBoneID], ClothesInfo[playerid][index][cOffsetX], ClothesInfo[playerid][index][cOffsetY], ClothesInfo[playerid][index][cOffsetZ], ClothesInfo[playerid][index][cRotX], ClothesInfo[playerid][index][cRotY], ClothesInfo[playerid][index][cRotZ], ClothesInfo[playerid][index][cScaleX], ClothesInfo[playerid][index][cScaleY], ClothesInfo[playerid][index][cScaleZ]);
}

stock RemoveClothing(playerid, index)
{
	RemovePlayerAttachedObject(playerid, index);
}

stock RemoveAllClothing(playerid)
{
	for(new i = 0; i < MAX_MODELS; i++)
	{
		RemovePlayerAttachedObject(playerid, i);
	}
}

stock PlaceClothing(playerid, index)
{
	new msg[128];
	if(IsPlayerAttachedObjectSlotUsed(playerid, index))
	{
		format(msg, sizeof(msg), "You have removed your {00FF00}%s{FFFFFF}.", GetModelName(ClothesInfo[playerid][index][cModelID]));
		SendClientMessage(playerid, -1, msg);
		RemovePlayerAttachedObject(playerid, index);
	}
	else
	{
		format(msg, sizeof(msg), "You have placed your {00FF00}%s{FFFFFF}.", GetModelName(ClothesInfo[playerid][index][cModelID]));
		SendClientMessage(playerid, -1, msg);
		SetPlayerAttachedObject(playerid, index, ClothesInfo[playerid][index][cModelID], ClothesInfo[playerid][index][cBoneID], ClothesInfo[playerid][index][cOffsetX], ClothesInfo[playerid][index][cOffsetY], ClothesInfo[playerid][index][cOffsetZ], ClothesInfo[playerid][index][cRotX], ClothesInfo[playerid][index][cRotY], ClothesInfo[playerid][index][cRotZ], ClothesInfo[playerid][index][cScaleX], ClothesInfo[playerid][index][cScaleY], ClothesInfo[playerid][index][cScaleZ]);
	}
	return 1;
}



stock DisplayClothing(playerid)
{
    new msg[128];
	for(new i = 0; i < MAX_MODELS; i++)
	{
		if(ClothesInfo[playerid][i][cOn])
		{
			format(msg, sizeof(msg), "%s (Index:%d)\n", GetModelName(ClothesInfo[playerid][i][cModelID]), i);
			strcat(dstr, msg);
		}

	}
	ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_LIST, "What would you like to edit?", dstr, "Select", "<<", ON_CLOTHES_LIST);
	return 1;
}

stock ShowClothingDialog(playerid, dialogid, style, caption[], info[], button1[], button2[], status)
{
	SetPVarInt(playerid, "DialogStatus", status);
	ShowPlayerDialog(playerid, dialogid, style, caption, info, button1, button2);
	dstr = "";
	return 1;
}

stock GetModelName(model)
{
	new name[64];
	for(new i = 0; i < sizeof(ModelsInfo); i++)
	{
		if(model == ModelsInfo[i][modelID])
		{
			format(name, sizeof(name), "%s", ModelsInfo[i][modelName]);
		}
	}
	return name;
}

stock RemoveFromSlot(playerid, slot)
{
	new query[120];
	format(query, sizeof(query), "DELETE FROM `seb-clothes` WHERE `id` = %d", ClothesInfo[playerid][slot][cID]);
	mysql_function_query(1, query, true, "OnRemoveFromSlot", "id", playerid, slot);
}

forward OnRemoveFromSlot(playerid, slot);
public OnRemoveFromSlot(playerid, slot)
{
	ClothesInfo[playerid][slot][cOn] = false;
	ClothesInfo[playerid][slot][cModelID] = 0;
	ClothesInfo[playerid][slot][cBoneID] = 0;
	ClothesInfo[playerid][slot][cOffsetX] = 0.0;
	ClothesInfo[playerid][slot][cOffsetY] = 0.0;
	ClothesInfo[playerid][slot][cOffsetZ] = 0.0;
	ClothesInfo[playerid][slot][cRotX] = 0.0;
	ClothesInfo[playerid][slot][cRotY] = 0.0;
	ClothesInfo[playerid][slot][cRotZ] = 0.0;
	ClothesInfo[playerid][slot][cScaleX] = 0.0;
	ClothesInfo[playerid][slot][cScaleY] = 0.0;
	ClothesInfo[playerid][slot][cScaleZ] = 0.0;
	ClothesInfo[playerid][slot][enabled] = 0;
	RemovePlayerAttachedObject(playerid, slot);
	return 1;
}

stock ResetPVARClothes(playerid)
{
	for(new i = 0; i < MAX_MODELS; i++)
	{
		if(ClothesInfo[playerid][i][cOn] == true)
		{
			OnRemoveFromSlot(playerid, i);
		}
	}
}

stock ResetClothes(playerid)
{
	for(new i = 0; i < MAX_MODELS; i++)
	{
		if(ClothesInfo[playerid][i][cOn] == true)
		{
			RemoveFromSlot(playerid, i);
		}
	}
}

stock SyntaxMSG(playerid, message[])
{
	new msg[128];
	format(msg, sizeof(msg), "{AFAFAF}USAGE:{FFFFFF} %s", message);
	return SendClientMessage(playerid, -1, msg);
}

stock GetBoneName(boneid)
{
	new bone[64];
	switch(boneid)
	{
		case 1: bone = "Spine";
		case 2: bone = "Head";
		case 3: bone = "Left upper arm";
		case 4: bone = "Right upper arm";
		case 5: bone = "Left hand";
		case 6: bone = "Right hand";
		case 7: bone = "Left thigh";
		case 8: bone = "Right thigh";
		case 9: bone = "Left foot";
		case 10: bone = "Right foot";
		case 11: bone = "Right calf";
		case 12: bone = "Left calf";
		case 13: bone = "Left forearm";
		case 14: bone = "Right forearm";
		case 15: bone = "Left clavicle (shoulder)";
		case 16: bone = "Right clavicle (shoulder)";
		case 17: bone = "Neck";
		case 18: bone = "Jaw";
	}
	return bone;
}



#define MAXSKINS 50
#define MAXSTATIONS 50




#define VEH_RESPAWN_TIME 20000


enum PInfo
{
	tpIDUsed,
	Float:tpX,
	Float:tpY,
	Float:tpZ,
	tpName[MAX_PLAYER_NAME],
	tpVW,
	tpInt,
};
new tpInfo[MAX_TELEPORTS][PInfo];


enum sTPInfo
{
	SEDtpIDUsed,
	Float:sX,
	Float:sY,
	Float:sZ,
	SEDTPName[MAX_PLAYER_NAME],
	sVW,
	sINT,
};
new sedtpInfo[MAX_TELEPORTS][sTPInfo];


enum XMInfo
{
	XMName[64],
	XMStation[96],
	XMRExist
};
new XMRInfo[MAXSTATIONS][XMInfo];





// News
new UpdateTimer[MAX_PLAYERS char];


#define MAX_DAMAGES 49


enum DamageVars
{
	dmgTime,
	dmgString[128],
	dmgTotals,
	dmgIssuerid[MAX_PLAYER_NAME]

}
new DamagesL[MAX_PLAYERS][MAX_DAMAGES][DamageVars];

new dmgAmount[MAX_PLAYERS];


enum DeathVars
{
	deathTime,
	deathString[MAX_PLAYER_NAME+MAX_PLAYER_NAME+24]

}
new DeathL[MAX_DAMAGES][DeathVars];


new LASTINCAR[MAX_VEHICLES][MAX_PLAYER_NAME+10];
new bool:LASTINCARIN[MAX_VEHICLES];

new Text3D:vehicle3Dtext[MAX_VEHICLES];

//**********
//#define MYSQL_LOCAL
#define MYSQL_NONLOCAL
//**********


#if defined MYSQL_LOCAL
#define sqlhost     "127.0.0.1"
#define sqluser     "root"
#define sqldb       "samp-pd"
#define sqlpass     ""
#endif

#if defined MYSQL_NONLOCAL



#if defined TRAINING_METRO
#define sqlhost     "151.80.246.1"
#define sqluser     "server"
#define sqldb       "samp-pd"
#define sqlpass     "hU4Lp5BmXkiiCtoX"
#endif


#if defined TRAINING_SASD
#define sqlhost     "151.80.246.1"
#define sqluser     "server"
#define sqldb       "samp-pd"
#define sqlpass     "hU4Lp5BmXkiiCtoX"
#endif



#endif
//#define sqlpass     "sCyCKPpbY9jxhJLh"



new synctimer;




#define SKIN_1 20001
#define SKIN_2 20002
#define SKIN_3 20003
#define SKIN_4 20004
#define SKIN_5 20005
#define SKIN_6 20006
#define SKIN_7 20007
#define SKIN_8 20008
#define SKIN_9 20009
#define SKIN_10 285 // DONT TOUCH, SWAT SKIN ID!!!!

#define MAX_CUSTOM_SKINS 10
#define MAX_CUSTOM_SKINS_MESSAGE "10"
#define SWAT_SKIN SKIN_10
/*
LEANCMD:(setcustomskin)
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	new skinid;
	if(sscanf(params, "d", skinid)) return SCM(playerid, -1, "USAGE: /setcustomskin [skinid] Available Skin IDS: 1-"MAX_CUSTOM_SKINS_MESSAGE" /setplayercustomskin to use a player.");
	if(skinid > MAX_CUSTOM_SKINS || skinid < 1) return SCM(playerid, -1, "Only skinid's between 1 - "MAX_CUSTOM_SKINS_MESSAGE"");
	SetPlayerSkin(playerid, 20000+skinid);
	PlayerInfo[playerid][pSkin] = 20000+skinid;
	new string[65];
	format(string, sizeof(string),"Your skinid has been set to %d",skinid);
	SCM(playerid, COLOR_YELLOW, string);
	format(string, sizeof(string),"LeadCmd(%d): %s has changed their custom skin to %d",ALEVEL, GetName(playerid), skinid);
	SendLAMessage(COLOR_YELLOW, string);
	return 1;
}


LEANCMD:(setplayercustomskin)
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	new skinid, target;
	if(sscanf(params, "ud", target, skinid)) return SCM(playerid, -1, "USAGE: /setplayercustomskin [playerid] [skinid] Available Skin IDS: 1-"MAX_CUSTOM_SKINS_MESSAGE"");
	if(target == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(skinid > MAX_CUSTOM_SKINS || skinid < 1) return SCM(playerid, -1, "Only skinid's between 1 - "MAX_CUSTOM_SKINS_MESSAGE"");
	SetPlayerSkin(target, 20000+skinid);
	PlayerInfo[target][pSkin] = 20000+skinid;
	new string[128];
	format(string, sizeof(string),"Your custom skinid has been set to %d by admin %s",skinid, GetName(playerid));
	SCM(playerid, COLOR_YELLOW, string);
	format(string, sizeof(string),"LeadCmd(%d): %s has changed %s's custom skin to %d",ALEVEL, GetName(playerid),GetName(target), skinid);
	SendLAMessage(COLOR_YELLOW, string);
	return 1;
}

*/
public OnGameModeInit()
{
	/* CUSTOM MODELS */
	
	AddCharModel(102, SKIN_1, "Dipsy.dff", "Dipsy.txd");
	AddCharModel(102, SKIN_2, "LaaLaa.dff", "LaaLaa.txd");
	AddCharModel(102, SKIN_3, "Po.dff", "Po.txd");
	AddCharModel(102, SKIN_4, "TinkWink.dff", "TinkWink.txd");
	AddCharModel(102, SKIN_5, "fam2.dff", "fam2.txd");
	AddCharModel(102, SKIN_6, "HSMale.dff", "HSMale.txd");
	AddCharModel(102, SKIN_7, "SpidermanCW.dff", "SpidermanCW.txd");
	AddCharModel(102, SKIN_8, "IronmanCW.dff", "IronmanCW.txd");
	AddCharModel(102, SKIN_9, "CaptainAmericaCW.dff", "CaptainAmericaCW.txd");
	AddCharModel(285, SKIN_10, "swat.dff", "swat.txd"); // DONT TOUCH SWAT SKIN

	
	/* END OF CUSTOM MODELS */

    AddActor( 280,1877.7728,692.3005,10.8203,85.1818, "Breaching Guard", "SYSTEM", 0 );

    Streamer_ToggleErrorCallback(1);
	// Connecting to MYSQL db.
    mysql = mysql_connect(sqlhost, sqluser, sqldb, sqlpass);



    EnableVehicleFriendlyFire();
    serveruptime = GetTickCount();


    Streamer_VisibleItems(STREAMER_TYPE_OBJECT,999);
    
   	// Connect the first bot
	//native IRC_Connect(const server[], port, const nickname[], const realname[], const username[], bool:ssl = false, const localip[] = "", const serverpassword[] = "");
	botIDs[0] = IRC_Connect(IRC_SERVER, IRC_PORT, BOT_1_MAIN_NICKNAME, BOT_1_REALNAME, BOT_1_USERNAME);
	// Set the connect delay for the first bot to 20 seconds
	IRC_SetIntData(botIDs[0], E_IRC_CONNECT_DELAY, 5);
	// Connect the second bot
	botIDs[1] = IRC_Connect(IRC_SERVER, IRC_PORT, BOT_2_MAIN_NICKNAME, BOT_2_REALNAME, BOT_2_USERNAME);
	// Set the connect delay for the second bot to 30 seconds
	IRC_SetIntData(botIDs[1], E_IRC_CONNECT_DELAY, 10);

	// Create a group (the bots will be added to it upon connect)
	groupID = IRC_CreateGroup();


    synctimer = SetTimer("SyncTime", 60000, 1);
   	gettime(ghour, gminute, gsecond);
   	SetWorldTime(ghour);
	FixHour(ghour);
	ghour = shifthour;

    AddStaticVehicle(538,1734.3827,-1958.0325,13.1788,269.1701,1,1); // TRAIIN
    SetTimer("OnIniMapping", 5000, 0);
	LoadFurnitures();
	LoadGroups();
//	LoadGraffitis();
//	loadgraffs();
	LoadTPs();
	LoadSEDTPs();
	loadserver();
    maps();
    SetWeatherEx( 13 );

    g_Load_Graffiti();
    LoadVehiclesEx();
    
	return 1;
}

#define MAX_SERVER_VEHICLES 300
#define MAX_PLATE_NAME 10

enum VehicleVars
{
	vID,
	VehicleID,
	Float:vX,
	Float:vY,
	Float:vZ,
	Float:vAngle,
	vModel,
	vColor1,
	vColor2,
	Float:vHealth,
	vPlate[MAX_PLATE_NAME],
	vType,
	vExist,
	vVehID
}

// News


new Vehicle[MAX_SERVER_VEHICLES][VehicleVars];

// Forwards.
forward CreateVehicleEx(playerid, vehid, Type, Model, Float:X, Float:Y, Float:Z, Float:angle, Color1, Color2);
forward LoadVehiclesEx();


public LoadVehiclesEx()
{
	new leanquery[94];
	for(new x = 1; x < MAX_SERVER_VEHICLES; x++)
	{
	    mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-vehicles` WHERE `vID` = %d", x);
		mysql_tquery(mysql, leanquery, "DoesVehicleExist", "i", x);
	}
}

forward DoesVehicleExist(vehID);
public DoesVehicleExist(vehID)
{
	new rows, fields, leanquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-vehicles` WHERE `vID` = %d", vehID);
		mysql_tquery(mysql, leanquery, "LoadVehs", "i", vehID);
	    return 1;
	}
	return 0;
}
forward AddSirenToCar(playerid, veh);
public AddSirenToCar(playerid, veh)
{
	new vmodel = GetVehicleModel(veh);
	Siren[veh] = true;
	switch(vmodel)
	{
	    case 560:
	    {
            // Sultan
	     	  SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
	          AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), 0.500000, 0.699999, 0.400000, 0.000000, 0.000000, 0.000000 );
 		}
   		case 482:
	    {
	        // Burrito
		      SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
		      AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), 0.400000, 1.300000, 0.500000, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 482
     	}
	    case 541:
	    {
			// Bullet
		      SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
		      AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), 0.400000, -0.000000, 0.700000, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 541
   		}
	        // Cheetah
	    case 415:
	    {
		      SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
		      AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), 0.400000, -0.399999, 0.700000, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 415
     	}
	        // Sentinel
	    case 405:
	    {
		      SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
		      AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), 0.400000, 0.700000, 0.300000, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 405
     	}
	        // Towtruck
	    case 525:
	    {
		      SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
		      AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), 0.000000, -0.499999, 1.400000, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 525
     	}
	        // Huntley
	    case 579:
	    {
	          SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
	          AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), 0.600000, 0.500000, 0.700000, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 579
     	}
	        // Premier
	    case 426:
	    {
	          SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
	          AttachObjectToVehicle(SirenObject[veh], GetPlayerVehicleID(playerid), 0.500000, 0.700000, 0.400000, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 426
     	}
 			// Elegant
	    case 507:
	    {
	     	SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
			AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), -0.649999, -0.029999, 0.839999, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 598
 		}
 			// Tahoma
	    case 566:
	    {
	     	SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
			AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), -0.669999, 0.160000, 0.849999, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 598
 		}
			// Admiral
	    case 445:
	    {
	     	SirenObject[veh] = CreateObject( 18646,0,0,0,0,0,0,80 ); // <iVO>
			AttachObjectToVehicle( SirenObject[veh], GetPlayerVehicleID(playerid), -0.589999, 0.050000, 0.869999, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 598
 		}
		default:
		{
			Siren[veh] = false;
			return 1;
		}
	}
	return 1;
}


public OnVehicleSirenStateChange(playerid, vehicleid, newstate)
{
    if(newstate)
    {
        AddSirenToCar(playerid, vehicleid);
    }
    else
    {
        Siren[vehicleid] = false;
    	DestroyObject(SirenObject[vehicleid]);
    }
    return 1;
}



forward LoadVehs(vehID);
public LoadVehs(vehID)
{
	new PlateName[MAX_PLATE_NAME];
	if(IsValidVehicle(Vehicle[vehID][VehicleID]))
	{
    	DestroyVehicle(Vehicle[vehID][VehicleID]);
	}

	Vehicle[vehID][vX] = cache_get_row_float(0, 1);
 	Vehicle[vehID][vY] = cache_get_row_float(0, 2);
  	Vehicle[vehID][vZ] = cache_get_row_float(0, 3);
   	Vehicle[vehID][vAngle] = cache_get_row_float(0, 4);
   	Vehicle[vehID][vModel] = cache_get_row_int(0, 5);
    Vehicle[vehID][vColor1] = cache_get_row_int(0, 6);
    Vehicle[vehID][vColor2] = cache_get_row_int(0, 7);
	Vehicle[vehID][vHealth] = cache_get_row_float(0, 8);
	cache_get_row(0, 9, PlateName);
	Vehicle[vehID][vType] = cache_get_row_int(0, 10);

    Vehicle[vehID][vPlate] = PlateName;

    if(Vehicle[vehID][vType] == 1)
    {
    	Vehicle[vehID][VehicleID] = CreateVehicle(Vehicle[vehID][vModel], Vehicle[vehID][vX], Vehicle[vehID][vY], Vehicle[vehID][vZ], Vehicle[vehID][vAngle], Vehicle[vehID][vColor1], Vehicle[vehID][vColor2], 700, 1);
	}
	else if(Vehicle[vehID][vType] == 2)
	{
	    Vehicle[vehID][VehicleID] = CreateVehicle(Vehicle[vehID][vModel], Vehicle[vehID][vX], Vehicle[vehID][vY], Vehicle[vehID][vZ], Vehicle[vehID][vAngle], Vehicle[vehID][vColor1], Vehicle[vehID][vColor2], 700);
	}

	SetVehicleNumberPlate(Vehicle[vehID][VehicleID], Vehicle[vehID][vPlate]);

	SetVehicleToRespawn(Vehicle[vehID][VehicleID]);

	SetVehicleHealth(Vehicle[vehID][VehicleID], Vehicle[vehID][vHealth]);

	Vehicle[vehID][vExist] = 1;

	Vehicle[vehID][vVehID] = vehID;

	return 1;
}

forward LoadVehiclesExCustom(vehid, playerid);

new playerV;
public LoadVehiclesExCustom(vehid, playerid)
{
	new leanquery[94];

	playerV = playerid;

	mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-vehicles` WHERE `vID` = %d", vehid);
	mysql_tquery(mysql, leanquery, "LoadVehsCustom", "i", vehid);
}



forward LoadVehsCustom(vehID);
public LoadVehsCustom(vehID)
{
	new PlateName[MAX_PLATE_NAME];
	if(IsValidVehicle(Vehicle[vehID][VehicleID]))
	{
    	DestroyVehicle(Vehicle[vehID][VehicleID]);
	}

	Vehicle[vehID][vX] = cache_get_row_float(0, 1);
 	Vehicle[vehID][vY] = cache_get_row_float(0, 2);
  	Vehicle[vehID][vZ] = cache_get_row_float(0, 3);
   	Vehicle[vehID][vAngle] = cache_get_row_float(0, 4);
   	Vehicle[vehID][vModel] = cache_get_row_int(0, 5);
    Vehicle[vehID][vColor1] = cache_get_row_int(0, 6);
    Vehicle[vehID][vColor2] = cache_get_row_int(0, 7);
	Vehicle[vehID][vHealth] = cache_get_row_float(0, 8);
	cache_get_row(0, 9, PlateName);
	Vehicle[vehID][vType] = cache_get_row_int(0, 10);

    Vehicle[vehID][vPlate] = PlateName;

    if(Vehicle[vehID][vType] == 1)
    {
    	Vehicle[vehID][VehicleID] = CreateVehicle(Vehicle[vehID][vModel], Vehicle[vehID][vX], Vehicle[vehID][vY], Vehicle[vehID][vZ], Vehicle[vehID][vAngle], Vehicle[vehID][vColor1], Vehicle[vehID][vColor2], 1000, 1);
	}
	else if(Vehicle[vehID][vType] == 2)
	{
	    Vehicle[vehID][VehicleID] = CreateVehicle(Vehicle[vehID][vModel], Vehicle[vehID][vX], Vehicle[vehID][vY], Vehicle[vehID][vZ], Vehicle[vehID][vAngle], Vehicle[vehID][vColor1], Vehicle[vehID][vColor2], 1000);
	}

	SetVehicleNumberPlate(Vehicle[vehID][VehicleID], Vehicle[vehID][vPlate]);

	SetVehicleToRespawn(Vehicle[vehID][VehicleID]);

	SetVehicleHealth(Vehicle[vehID][VehicleID], Vehicle[vehID][vHealth]);

	Vehicle[vehID][vExist] = 1;

	Vehicle[vehID][vVehID] = vehID;

	if(playerV != INVALID_PLAYER_ID)
	{
	    PutPlayerInVehicle(playerV, Vehicle[vehID][VehicleID], 0);
	}

	return 1;
}



public CreateVehicleEx(playerid, vehid, Type, Model, Float:X, Float:Y, Float:Z, Float:angle, Color1, Color2)
{

 	new vehID = GetNextVehicleID(), leanquery[500];

	Vehicle[vehID][vX] = X;
 	Vehicle[vehID][vY] = Y;
  	Vehicle[vehID][vZ] = Z;
   	Vehicle[vehID][vAngle] = angle;
   	Vehicle[vehID][vModel] = Model;
    Vehicle[vehID][vColor1] = Color1;
    Vehicle[vehID][vColor2] = Color2;

	mysql_format(mysql, leanquery, sizeof(leanquery), "INSERT INTO `seb-vehicles` (`vID`, `vX`, `vY`, `vZ`, `vAngle`, `vModel`, `vColor1`, `vColor2`, `vType`) VALUES ('%d', '%f', '%f', '%f', '%f', '%d', '%d', '%d', '%d')", vehID, Vehicle[vehID][vX], Vehicle[vehID][vY], Vehicle[vehID][vZ], Vehicle[vehID][vAngle], Vehicle[vehID][vModel], Vehicle[vehID][vColor1], Vehicle[vehID][vColor2], Type);
 	mysql_tquery(mysql, leanquery, "", "");

	new sd[16];
	if(Type == 1)
	{
 		format(sd, sizeof(sd),"LAW");
	}
	if(Type == 2)
	{
 		format(sd, sizeof(sd),"Criminals");
	}

 	format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has created a %s (MYSQL_ID: %d), Type: %s.",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehid), vehID, sd);
	SendAdminMessage(COLOR_YELLOW, leanquery);

	DestroyVehicle(vehid);

 	LoadVehiclesExCustom(vehID, playerid);

	return 1;
}

// Stocks
stock GetNextVehicleID()
{
	for(new x = 1; x < MAX_SERVER_VEHICLES; x++)
	{
	    if(Vehicle[x][vExist] == 0)
	    {
	        return x;
	    }
	}
	return -1;
}








LEANCMD:(vehicle)
{
	new
	    cmd[16], string[128], input[12];
	#if defined TRAINING_SASD
	if (PlayerInfo[playerid][pAdmin] > 4)
	#endif
	#if defined TRAINING_METRO
	if (PlayerInfo[playerid][pAdmin] > 3)
	#endif
	{
		if (sscanf(params,"s[16]", cmd))
		{
   			SCM(playerid, COLOR_LIGHTRED, "USAGE: "COL_WHITE"/vehicle <create | delete | park | plate | health | color | type | stats | respawn>");
		}

	 	if (strcmp("create", cmd, true, 6) == 0)
		{
			    if(IsPlayerInAnyVehicle(playerid))
			    {
			        new type;
			        if (sscanf(params, "s[16]d", cmd, type)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: "COL_WHITE"/vehicle <create> <type> "COL_LIGHTRED"INFO: 1 = LAW |2 = CRIMINALS");

			        if(type < 1 || type > 2) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Type  1 = LAW and 2 = Criminals only.");

				    new
						Float:posx[4],
						color1,
						color2,
				    	vehd = GetPlayerVehicleID(playerid),
						model = GetVehicleModel(vehd);

                    new
						veh = VehicleIDX(vehd);

					if(veh != INVALID_PLAYER_ID) return SCM(playerid, COLOR_LIGHTRED, "You cant use static vehicles to create a new vehicle, please use a non static car.");

				    GetVehicleColor(vehd, color1, color2);

				    GetVehiclePos(vehd, posx[0], posx[1], posx[2]);

				    GetVehicleZAngle(vehd, posx[3]);

				    CreateVehicleEx(playerid, vehd, type, model, posx[0], posx[1], posx[2], posx[3], color1, color2);

		            return 1;
	            }
				else return SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You are not in any vehicle. ");
		}


		else if (strcmp("delete", cmd, true, 6) == 0)
		{
			if(!IsPlayerInAnyVehicle(playerid))
			{
			    new vehicleid;
				if (!sscanf(params, "s[16]d", cmd, vehicleid))
				{


						new
								veh = VehicleIDX(vehicleid),
								leanquery[128];

                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "Are you really trying to delete a non static vehicle?");

                    	mysql_format(mysql, leanquery, sizeof(leanquery), "DELETE FROM `seb-vehicles` WHERE `vID` = '%d'", veh);
						mysql_tquery(mysql, leanquery, "", "");
                        Vehicle[veh][VehicleID] = INVALID_VEHICLE_ID;
						Vehicle[veh][vExist] = 0;

						format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has deleted %s(%d)(MYSQL_ID: %d).",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid), vehicleid, veh);
						SendAdminMessage(COLOR_YELLOW, leanquery);

						DestroyVehicle(vehicleid);

				}
				else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <delete> <vehicleid>");
			}
			else
			{
						new
						        vehicleid = GetPlayerVehicleID(playerid),
								veh = VehicleIDX(vehicleid),
								leanquery[128];

                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "Are you trying to delete a non static vehicle?");

                    	mysql_format(mysql, leanquery, sizeof(leanquery), "DELETE FROM `seb-vehicles` WHERE `vID` = '%d'", veh);
						mysql_tquery(mysql, leanquery, "", "");
                        Vehicle[veh][VehicleID] = INVALID_VEHICLE_ID;
						Vehicle[veh][vExist] = 0;

						format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has deleted %s(%d) (MYSQL_ID: %d).",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid, veh);
						SendAdminMessage(COLOR_YELLOW, leanquery);

						DestroyVehicle(vehicleid);
			}
		}

		else if (strcmp("plate", cmd, true, 5) == 0)
		{
			if(!IsPlayerInAnyVehicle(playerid))
			{
       			new vehicleid;
				if (!sscanf(params, "s[16]ds[12]",cmd, vehicleid, input))
				{
    					new
								c = strlen(input),
								veh = VehicleIDX(vehicleid),
								leanquery[128];

                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle, /setplate");

                        if(c > 9) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Only a maximum of 9 characters.");

 						mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-vehicles` SET `vPlate` = '%s' WHERE `vID` = '%d'", input, veh);
						mysql_tquery(mysql, leanquery, "", "");

						format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has changed the plate of vehicle %s(%d) (MYSQL_ID: %d) to %s.",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid,veh, input);
						SendAdminMessage(COLOR_YELLOW, leanquery);

                        LoadVehiclesExCustom(veh, INVALID_PLAYER_ID);

				}
				else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <plate> <vehicleid> <text>");
			}
			else if(IsPlayerInAnyVehicle(playerid))
			{
				if (!sscanf(params, "s[16]s[12]",cmd, input))
				{
    					new
								c = strlen(input),
								vehicleid = GetPlayerVehicleID(playerid),
								veh = VehicleIDX(vehicleid),
								leanquery[128];

                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle, /setplate");


                        if(c > 9) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Only a maximum of 9 characters.");

 						mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-vehicles` SET `vPlate` = '%s' WHERE `vID` = '%d'", input, veh);
						mysql_tquery(mysql, leanquery, "", "");

						format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has changed the plate of vehicle %s(%d) (MYSQL_ID: %d) to %s.",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid,veh, input);
						SendAdminMessage(COLOR_YELLOW, leanquery);

                        LoadVehiclesExCustom(veh, playerid);

				}
				else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <plate> <text>");
			}
		}

		else if (strcmp("health", cmd, true, 6) == 0)
		{
			if(!IsPlayerInAnyVehicle(playerid))
			{
			    new vehicleid, Float:hp;
				if (!sscanf(params, "s[16]df",cmd, vehicleid, hp))
				{
    					new
								c = strlen(input),
								veh = VehicleIDX(vehicleid),
								leanquery[128];

                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle, /vehhp");

                        if(c > 9) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Only a maximum of 9 characters.");

 						mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-vehicles` SET `vHealth` = '%f' WHERE `vID` = '%d'", hp, veh);
						mysql_tquery(mysql, leanquery, "", "");

						format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has set the health of vehicle %s(%d) (MYSQL_ID: %d) to %f.",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid,veh, hp);
						SendAdminMessage(COLOR_YELLOW, leanquery);

                        LoadVehiclesExCustom(veh, INVALID_PLAYER_ID);

				}
				else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <health> <vehicleid> <amount>");
			}
			else if(IsPlayerInAnyVehicle(playerid))
			{
			    new Float:hp;
				if (!sscanf(params, "s[16]f",cmd, hp))
				{
    					new
								c = strlen(input),
								vehicleid = GetPlayerVehicleID(playerid),
								veh = VehicleIDX(vehicleid),
								leanquery[128];
                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle, /vehhp");

                        if(c > 9) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Only a maximum of 9 characters.");

 						mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-vehicles` SET `vHealth` = '%f' WHERE `vID` = '%d'", hp, veh);
						mysql_tquery(mysql, leanquery, "", "");

						format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has set the health of vehicle %s(%d) (MYSQL_ID: %d) to %f.",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid), vehicleid,veh, hp);
						SendAdminMessage(COLOR_YELLOW, leanquery);

                        LoadVehiclesExCustom(veh, playerid);

				}
				else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <health> <amount>");
			}
		}



		else if (strcmp("color", cmd, true, 5) == 0)
		{
			if(!IsPlayerInAnyVehicle(playerid))
			{
			    new vehicleid, color1, color2;
				if (!sscanf(params, "s[16]ddd",cmd, vehicleid, color1,color2))
				{
    					new
								c = strlen(input),
								veh = VehicleIDX(vehicleid),
								leanquery[128];

                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle, /vehhp");

                        if(c > 9) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Only a maximum of 9 characters.");

 						mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-vehicles` SET `vColor1` = '%d', `vColor2` = '%d' WHERE `vID` = '%d'", color1, color2, veh);
						mysql_tquery(mysql, leanquery, "", "");

						format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has changed the color of %s(%d) (MYSQL_ID: %d) to %s[#%d] - %s[#%d].",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid,veh, HexToEmbed(VehColor[color1]),color1,HexToEmbed2(VehColor[color2]),color2);
						SendAdminMessage(COLOR_YELLOW, leanquery);

                        LoadVehiclesExCustom(veh, INVALID_PLAYER_ID);

				}
				else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <color> <vehicleid> <color1> <color2>");
			}
			else if(IsPlayerInAnyVehicle(playerid))
			{
				    new vehicleid = GetPlayerVehicleID(playerid), color1, color2;
					if (!sscanf(params, "s[16]ddd",cmd, color1,color2))
					{
	    					new
									c = strlen(input),
									veh = VehicleIDX(vehicleid),
									leanquery[128];

	                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle, /carcolor");

	                        if(c > 9) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Only a maximum of 9 characters.");

	 						mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-vehicles` SET `vColor1` = '%d', `vColor2` = '%d' WHERE `vID` = '%d'", color1, color2, veh);
							mysql_tquery(mysql, leanquery, "", "");

							format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has changed the color of %s(%d) (MYSQL_ID: %d) to %s[#%d] "COL_YELLOW"- %s[#%d].",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid,veh, HexToEmbed(VehColor[color1]),color1,HexToEmbed2(VehColor[color2]),color2);
							SendAdminMessage(COLOR_YELLOW, leanquery);

	                        LoadVehiclesExCustom(veh, playerid);

					}
					else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <color> <color1> <color2>");
			}
		}


		else if (strcmp("type", cmd, true, 4) == 0)
		{
			if(!IsPlayerInAnyVehicle(playerid))
			{
			    new vehicleid, type;
				if (!sscanf(params, "s[16]dd",cmd, vehicleid, type))
				{
    					new
								veh = VehicleIDX(vehicleid),
								leanquery[128];

                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle, /vehhp");

                        if(type < 1 || type > 2) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Type  1 = LAW and 2 = Criminals only.");

 						mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-vehicles` SET `vType` = '%d' WHERE `vID` = '%d'", type, veh);
						mysql_tquery(mysql, leanquery, "", "");
						new sd[16];
						if(type == 1)
						{
						    format(sd, sizeof(sd),"LAW");
						}
						if(type == 2)
						{
						    format(sd, sizeof(sd),"Criminals");
						}
						format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has set the type of %s(%d) (MYSQL_ID: %d) to %s.",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid,veh, sd);
						SendAdminMessage(COLOR_YELLOW, leanquery);

                        LoadVehiclesExCustom(veh, INVALID_PLAYER_ID);

				}
				else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <type> <vehicleid> <1(Law)|2(Criminals)>");
			}
			else if(IsPlayerInAnyVehicle(playerid))
			{
				    new vehicleid = GetPlayerVehicleID(playerid), type;
					if (!sscanf(params, "s[16]d",cmd, type))
					{
	    					new
									veh = VehicleIDX(vehicleid),
									leanquery[128];

	                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle, /vehhp");

	                        if(type < 1 || type > 2) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"Set vehicle type, 1 = LAW | 2 = Criminals.");

	 						mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-vehicles` SET `vType` = '%d' WHERE `vID` = '%d'", type, veh);
							mysql_tquery(mysql, leanquery, "", "");
							new sd[16];
							if(type == 1)
							{
							    format(sd, sizeof(sd),"LAW");
							}
							if(type == 2)
							{
							    format(sd, sizeof(sd),"Criminals");
							}
							format(leanquery, sizeof(leanquery),"AdmWarn(%d): %s has set the type of %s(%d) (MYSQL_ID: %d) to %s.",ALEVEL, GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid,veh, sd);
							SendAdminMessage(COLOR_YELLOW, leanquery);

	                        LoadVehiclesExCustom(veh, playerid);

					}
					else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <type> <1(Law)|2(Criminals)>");
			}
		}

		else if (strcmp("park", cmd, true, 4) == 0)
		{
			if(IsPlayerInAnyVehicle(playerid))
			{
			    new
					Float:x,
					Float:y,
					Float:z,
					Float:a,
					vehicleid = GetPlayerVehicleID(playerid),
					veh = VehicleIDX(vehicleid),
					leanquery[128];

                if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "Are you trying to park a non static vehicle?");

				GetVehiclePos(vehicleid, x, y, z);
				GetVehicleZAngle(vehicleid, a);

				mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-vehicles` SET `vX` = '%f', `vY` = '%f', `vZ` = '%f', `vAngle` = '%f' WHERE `vID` = '%d'", x, y, z, a, veh);
				mysql_tquery(mysql, leanquery, "", "");

				format(leanquery, sizeof(leanquery),"AdmCmd: %s has parked vehicle %s(%d) (MYSQL_ID: %d).",GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid,veh);
				SendClientMessageToAll(COLOR_LIGHTRED, leanquery);

  				format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has parked vehicle %s(%d) (MYSQL_ID: %d).",GetName(playerid), GetVehicleFriendlyName(vehicleid),vehicleid,veh);
       			IRC_GroupSayEx(string);

				LoadVehiclesExCustom(veh, playerid);
			}
			else return SendClientMessage(playerid, COLOR_WHITE, "ERROR: You are not in a vehicle!");
		}


		else if (strcmp("stats", cmd, true, 4) == 0)
		{
			if(!IsPlayerInAnyVehicle(playerid))
			{
			    new vehicleid;
				if (!sscanf(params, "s[16]dd",cmd, vehicleid))
				{
    					new
								veh = VehicleIDX(vehicleid),
								leanquery[128];

                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle!");

						new sd[16];
						if(Vehicle[veh][vType] == 1)
						{
						    format(sd, sizeof(sd),"LAW");
						}
						if(Vehicle[veh][vType] == 2)
						{
						    format(sd, sizeof(sd),"Criminals");
						}
						new color1 = Vehicle[veh][vColor1],
						    color2 = Vehicle[veh][vColor2];

						format(leanquery, sizeof(leanquery),"Vehicle Model: [%d] Vehicle Name: [%s] Vehicle Plate: [%s] Vehicle Type: [%s]", Vehicle[veh][vModel], GetVehicleFriendlyName(vehicleid),Vehicle[veh][vPlate], sd );
						SCM(playerid, COLOR_WHITE, leanquery);
						format(leanquery, sizeof(leanquery),"Vehicle Health: [%f] Primary Color: [%s#%d"COL_WHITE"] Secondary Color: [%s#%d"COL_WHITE"]",Vehicle[veh][vHealth], HexToEmbed(VehColor[color1]),color1,HexToEmbed2(VehColor[color2]),color2);
						SCM(playerid, COLOR_WHITE, leanquery);
						SCM(playerid, COLOR_DARKPURPLE, "A marker has been set at vehicles parking spot.");
						SetPlayerCheckpoint(playerid, Vehicle[veh][vX], Vehicle[veh][vY], Vehicle[veh][vZ] , 2.0);

				}
				else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <stats> <vehicleid>");
			}
			else if(IsPlayerInAnyVehicle(playerid))
			{
				    new vehicleid = GetPlayerVehicleID(playerid);
					if (!sscanf(params, "s[16]d",cmd))
					{
	    					new
									veh = VehicleIDX(vehicleid),
									leanquery[128];

	                        if(veh == INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This is not a static vehicle!");

							new sd[16];
							if(Vehicle[veh][vType] == 1)
							{
							    format(sd, sizeof(sd),"LAW");
							}
							if(Vehicle[veh][vType] == 2)
							{
							    format(sd, sizeof(sd),"Criminals");
							}

							new color1 = Vehicle[veh][vColor1],
						    color2 = Vehicle[veh][vColor2];

							format(leanquery, sizeof(leanquery),"Vehicle Model: [%d] Vehicle Name: [%s] Vehicle Plate: [%s] Vehicle Type: [%s]", Vehicle[veh][vModel], GetVehicleFriendlyName(vehicleid),Vehicle[veh][vPlate], sd );
							SCM(playerid, COLOR_WHITE, leanquery);
							format(leanquery, sizeof(leanquery),"Vehicle Health: [%f] Primary Color: [%s#%d"COL_WHITE"] Secondary Color: [%s#%d"COL_WHITE"]",Vehicle[veh][vHealth], HexToEmbed(VehColor[color1]),color1,HexToEmbed2(VehColor[color2]),color2);
							SCM(playerid, COLOR_WHITE, leanquery);

					}
					else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <stats>");
			}
		}


		else if (strcmp("respawn", cmd, true, 7) == 0)
		{
 			for(new i=0; i <= GetVehiclePoolSize(); i++)
    		{
        		if(Vehicle[i][vID] != INVALID_VEHICLE_ID)
        		{
              		LoadVehiclesEx();
        		}
			}

         	format(string, sizeof(string), "AdmCmd: %s has reloaded all static vehicles.", GetName(playerid));
	    	SendClientMessageToAll(COLOR_LIGHTRED, string);

			format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has reloaded all static vehicles.", GetName(playerid));
    		IRC_GroupSayEx(string);
	    	return 1;
		}
	}
	else return ADMIN_UNAUTHORIZED

	return 1;
}


public OnPlayerEnterCheckpoint(playerid)
{
  	DisablePlayerCheckpoint(playerid);
    return 1;
}


VehicleIDX(vehicleid)
{
        for(new i = 0; i < MAX_SERVER_VEHICLES; i++)
        {
                if(Vehicle[i][VehicleID] == vehicleid)
				{
                        return i;
                }
        }
        return INVALID_VEHICLE_ID;
}


public OnGameModeExit()
{
    SaveDoors();
   	// Disconnect the first bot
	IRC_Quit(botIDs[0], "CALL LEAN");
	// Disconnect the second bot
	IRC_Quit(botIDs[1], "CALL LEAN");

	// Destroy the group
	IRC_DestroyGroup(groupID);

	for(new x = 1; x < MAX_DOORS; x++)
	{
		DestroyPickup(DoorInfo[x][ddCreate]);
		DestroyDynamic3DTextLabel(DoorInfo[x][ddLabel]);
	}
	KillTimer(synctimer);

}




main()
{
       	print("Initializing "METROVERSION"...");
        print("___________________________________");
        print("                         by Lean");
        print(" ");
}




//FORWARDS
// MAPPING
forward OnConnectMapping(playerid);
forward OnIniMapping();



forward PAYCHECK();
forward TCHECK();


forward FixHour(hour);



//call back
forward gmx();
public gmx()
{
	SendRconCommand("gmx");
	return 1;
}


forward Stopanim(playerid);
public Stopanim(playerid)
{
	ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.1, 0, 0, 0, 0, 0, 0);
    return 1;
}



// PLAYER PAUSE
// NEWS
new stock TimeOfLastUpdate[MAX_PLAYERS];
new stock bool:Paused[MAX_PLAYERS];
// Defines

#define MinTimeWithoutUpdates2 (MinTimeWithoutUpdates * 1000)
#define MinTimeWithoutUpdates 6

// STOCKS
stock IsPlayerPaused(playerid)
{
    if(Paused[playerid] == true)
    {
        return 1;
    }
    return 0;
}


forward OnPlayerPause(playerid);
forward OnPlayerUnpause(playerid);


/// FURNITURE
#define MAX_FURNITURES 1800

/*-------END OF INCLUDES/DEFINES-----------*/


/*
NEWS;
*
**
*/

new Float:FURNXYZ[MAX_PLAYERS][6],
 	fOBJECTID[MAX_PLAYERS],
 	fOBJECT[MAX_PLAYERS],
 	fOBJECTNAME[MAX_PLAYERS][36];
/*-------END OF NEWS-----------*/

forward createfurniture(playerid, ID);
forward createdoorfurniture(playerid);
forward createfurnitureedit(playerid);
forward loadfurnitures();


//****ENUM****

enum FurnitureInfo
{
	FurExist,
	Fcreator[MAX_PLAYER_NAME],
	modelname[36],
	FUROBJECTID,
	FMODELID,
	FVirtual,
	FDoor,
	FDoors,
	Float:fposX,
	Float:fposY,
	Float:fposZ,
	Float:XFpos,
	Float:YFpos,
	Float:ZFpos,
}
new fInfo[MAX_FURNITURES][FurnitureInfo];



//*****STATICS*****
enum AttachmentEnum
{
    attachmodel,
	attachname[60]
}

new AttachmentObjects[][AttachmentEnum] = {
{18632, "FishingRod"},
{18633, "GTASAWrench1"},
{18634, "GTASACrowbar1"},
{18635, "GTASAHammer1"},
{19317, "bassguitar01"},
{19578, "Banana"},
{19780, "Police Insignia"},
{19786,	"LCDTVBig1"},
{19787,	"LCDTV1"},
{19355,"Wall"},
{19447,"Large Wall"},
{19385,"Door Way"},
{1256,"Bench"},
{16732,"Vent cover"},
{3791,"missile box"},
{3387,"military rack"},
{3388,"military rack 2"},
{3016,"ammo crate"},
{1967,"Carrier port door"},
{3016,"ammo crate"},
{1508,"garage door"},
{3785,"bulk head light"}
};



enum InteriorsEnum
{
    interiorID,
	Float:IntX,
	Float:IntY,
	Float:IntZ,
	interiorname[60],
}


new Interiors[][InteriorsEnum] = {
{11, 2003.1178, 1015.1948, 33.008, "Four Dragons' Managerial Suite"},
{5, 770.8033, -0.7033, 1000.7267, "Ganton Gym"},
{3, 974.0177, -9.5937, 1001.1484, "Brothel"},
{3, 961.9308, -51.9071, 1001.1172, "Brothel2"},
{3, 830.6016, 5.9404, 1004.1797, "Inside Track Betting"},
{3, 1037.8276, 0.397, 1001.2845, "Blastin' Fools Records"},
{3, 1212.1489, -28.5388, 1000.9531, "The Big Spread Ranch"},
{18, 1290.4106, 1.9512, 1001.0201, "Warehouse1"},
{1, 1412.1472, -2.2836, 1000.9241, "Warehouse2"},
{3, 1527.0468, -12.0236, 1002.0971, "BDup'sApartment"},
{2, 1523.5098, -47.8211, 1002.2699, "BDup'sCrack Palace"},
{3, 612.2191, -123.9028, 997.9922, "Wheel Arch Angels"},
{3, 512.9291, -11.6929, 1001.5653, "OGLoc'sHouse"},
{3, 418.4666, -80.4595, 1001.8047, "Barber Shop"},
{3, 386.5259, 173.6381, 1008.3828, "Planning Department"},
{3, 288.4723, 170.0647, 1007.1794, "Las Venturas Police Department"},
{3, 206.4627, -137.7076, 1003.0938, "Pro-Laps"},
{3, -100.2674, -22.9376, 1000.7188, "SexShop"},
{3, -201.2236, -43.2465, 1002.2734, "Las Venturas Tattoo parlor"},
{17, -202.9381, -6.7006, 1002.2734, "Lost San Fierro Tattoo parlor"},
{17, -25.7220, -187.8216, 1003.5469, "24/7 (version 1)"},
{5, 454.9853, -107.2548, 999.4376," Diner 1"},
{5, 372.5565, -131.3607, 1001.4922, "Pizza Stack"},
{17, 378.026, -190.5155, 1000.6328, "Rusty Brown's Donuts"},
{7, 315.244, -140.8858, 999.6016, "Ammu-nation"},
{5, 225.0306, -9.1838, 1002.218, "Victim"},
{2, 611.3536, -77.5574, 997.9995, "Loco Low Co"},
{10, 246.0688, 108.9703, 1003.2188, "San Fierro Police Department"},
{10, 6.0856, -28.8966, 1003.5494, "24/7(version 2 - large)"},
{7, 773.7318, -74.6957, 1000.6542," Below The Belt Gym (Las Venturas)"},
{1, 621.4528, -23.7289, 1000.9219," Transfenders"},
{1, 445.6003, -6.9823, 1000.7344, "World of Coq"},
{1, 285.8361, -39.0166, 1001.5156, "Ammu-nation (version 2"},
{1, 204.1174, -46.8047, 1001.8047, "SubUrban"},
{1, 245.2307, 304.7632, 999.1484," Denise's Bedroom"},
{3, 290.623, 309.0622, 999.1484," Helena's Barn"},
{5, 322.5014, 303.6906, 999.1484," Barbara's Love nest"},
{1, -2041.2334, 178.3969, 28.8465, "San Fierro Garage"},
{1, -1402.6613, 106.3897, 1032.2734, "Oval Stadium"},
{7, -1403.0116, -250.4526, 1043.5341, "8-Track Stadium"},
{2, 1204.6689, -13.5429, 1000.9219, "The Pig Pen (strip club 2)"},
{10, 2016.1156, 1017.1541, 996.875, "Four Dragons"},
{1, -741.8495, 493.0036, 1371.9766, "Liberty City"},
{2, 2447.8704, -1704.4509, 1013.5078, "Ryder's house"},
{1, 2527.0176, -1679.2076, 1015.4986, "Sweet's House"},
{10, -1129.8909, 1057.5424, 1346.4141, "RC Battlefield"},
{3, 2496.0549, -1695.1749, 1014.7422, "The Johnson House"},
{10, 366.0248, -73.3478, 1001.5078, "Burger shot"},
{1, 2233.9363, 1711.8038, 1011.6312, "Caligula's Casino"},
{2, 269.6405, 305.9512, 999.1484, "Katie's Lovenest"},
{2, 414.2987, -18.8044, 1001.8047, "Barber Shop 2 (Reece's)"},
{2, 1.1853, -3.2387, 999.4284, "Angel Pine Trailer"},
{18, -30.9875, -89.6806, 1003.5469, "24/7 (version 3)"},
{18, 161.4048, -94.2416, 1001.8047, "Zip"},
{3, -2638.8232, 1407.3395, 906.4609, "The Pleasure Domes"},
{5, 1267.8407, -776.9587, 1091.9063, "Madd Dogg's Mansion"},
{2, 2536.5322, -1294.8425, 1044.125, "Big Smoke's Crack Palace"},
{5, 2350.1597, -1181.0658, 1027.9766, "Burning Desire Building"},
{1, -2158.6731, 642.09, 1052.375, "Wu-Zi Mu's"},
{14, 256.9047, -41.6537, 1002.0234, "Wardrobe/Changing room"},
{14, 204.1658, -165.7678, 1000.5234, "Didier Sachs"},
{12, 1133.35, -7.8462, 1000.6797, "Casino (Redsands West)"},
{14, -1420.4277, 1616.9221, 1052.5313, "Kickstart Stadium"},
{17, 493.1443, -24.2607 ,1000.6797, "Club"},
{18, 1727.2853, -1642.9451, 20.2254, "Atrium"},
{16, -202.842, -24.0325, 1002.2734, "Los Santos Tattoo Parlor"},
{5, 2233.6919, -1112.8107, 1050.8828, "Safe House group 1"},
{6, 1211.2484, 1049.0234, 359.941, "Safe House group 2"},
{9, 2319.1272, -1023.9562, 1050.2109, "Safe House group 3"},
{10, 2261.0977, -1137.8833, 1050.6328, "Safe House group 4"},
{17, -944.2402, 1886.1536, 5.0051, "Sherman Dam"},
{16, -26.1856, -140.9164, 1003.5469, "24/7 (version 4)"},
{15, 2217.281, -1150.5349, 1025.7969, "Jefferson Motel"},
{1, 1.5491, 23.3183, 1199.5938, "Jet Interior"},
{1, 681.6216, -451.8933, -25.6172, "The Welcome Pump"},
{3, 234.6087, 1187.8195, 1080.2578, "Burglary House X1"},
{2, 225.5707, 1240.0643, 1082.1406, "Burglary House X2"},
{1, 224.288, 1289.1907, 1082.1406, "Burglary House X3"},
{5, 239.2819, 1114.1991, 1080.9922, "Burglary House X4"},
{15, 207.5219, -109.7448, 1005.1328, "Binco"},
{15, 295.1391, 1473.3719, 1080.2578, "4 Burglary houses"},
{15, -1417.8927, 932.4482, 1041.5313, "Blood Bowl Stadium"},
{12, 446.3247, 509.9662, 1001.4195, "Budget Inn Motel Room"},
{0, 2306.3826, -15.2365, 26.7496, "Palamino Bank"},
{0, 2331.8984, 6.7816, 26.5032, "Palamino Diner"},
{0, 663.0588, -573.6274, 16.3359, "Dillimore Gas Station"},
{18, -227.5703, 1401.5544, 27.7656, "Lil' Probe Inn"},
{0, -688.1496, 942.0826, 13.6328, "Torreno's Ranch"},
{0, -1916.1268, 714.8617, 46.5625, "Zombotech - lobby area"},
{0, 818.7714, -1102.8689, 25.794, "Crypt in LS cemetery (temple)"},
{0, 255.2083, -59.6753, 1.5703, "Blueberry Liquor Store"},
{2, 446.626, 1397.738, 1084.3047, "Pair of Burglary Houses"},
{5, 227.3922, 1114.6572, 1080.9985, "Crack Den"},
{5, 227.7559, 1114.3844, 1080.9922, "Burglary House X11"},
{4, 261.1165, 1287.2197, 1080.2578, "Burglary House X12"},
{4, 291.7626, -80.1306, 1001.5156, "Ammu-nation (version 3)"},
{4, 449.0172, -88.9894, 999.5547, "Jay's Diner"},
{4, -27.844, -26.6737, 1003.5573, "24/7 (version 5)"},
{0, 2135.2004, -2276.2815, 20.6719, "Warehouse 3"},
{4, 306.1966, 307.819, 1003.3047, "Michelle's Love Nest*"},
{10, 24.3769, 1341.1829, 1084.375, "Burglary House X14"},
{1, 963.0586, 2159.7563, 1011.0303, "Sindacco Abatoir"},
{0, 2548.4807, 2823.7429, 10.8203, "K.A.C.C. Military Fuels Depot"},
{0, 215.1515, 1874.0579, 13.1406, "Area 69"},
{4, 221.6766, 1142.4962, 1082.6094, "Burglary House X13"},
{12, 2323.7063, -1147.6509, 1050.7101, "Unused Safe House"},
{6, 344.9984, 307.1824, 999.1557, "Millie's Bedroom"},
{12, 411.9707, -51.9217, 1001.8984, "Barber Shop"},
{4, -1421.5618, -663.8262, 1059.5569, "Dirtbike Stadium"},
{6, 773.8887, -47.7698, 1000.5859, "Cobra Gym"},
{6, 246.6695, 65.8039, 1003.6406, "Los Santos Police Department"},
{14, -1864.9434, 55.7325, 1055.5276, "Los Santos Airport"},
{4, -262.1759, 1456.6158, 1084.3672, "Burglary House X15"},
{5, 22.861, 1404.9165, 1084.4297, "Burglary House X16"},
{5, 140.3679, 1367.8837, 1083.8621, "Burglary House X17"},
{3, 1494.8589, 1306.48, 1093.2953, "Bike School"},
{14, -1813.213, -58.012, 1058.9641, "Francis International Airport"},
{16, -1401.067, 1265.3706, 1039.8672, "Vice Stadium"},
{6, 234.2826, 1065.229, 1084.2101, "Burglary House X18"},
{6, -68.5145, 1353.8485, 1080.2109, "Burglary House X19"},
{6, -2240.1028, 136.973, 1035.4141, "Zero's RC Shop"},
{6, 297.144, -109.8702, 1001.5156, "Ammu-nation (version 4)"},
{6, 316.5025, -167.6272, 999.5938, "Ammu-nation (version 5)"},
{15, -285.2511, 1471.197, 1084.375, "Burglary House X20"},
{6, -26.8339, -55.5846, 1003.5469, "24/7 (version 6)"},
{6, 442.1295, -52.4782, 999.7167, "Secret Valley Diner"},
{2, 2182.2017, 1628.5848, 1043.8723, "Rosenberg's Office in Caligulas"},
{6, 748.4623, 1438.2378, 1102.9531, "Fanny Batter's Whore House"},
{8, 2807.3604, -1171.7048, 1025.5703, "Colonel Furhberger's"},
{9, 366.0002, -9.4338, 1001.8516, "Cluckin' Bell"},
{1, 2216.1282, -1076.3052, 1050.4844, "The Camel's Toe Safehouse"},
{1, 2268.5156, 1647.7682, 1084.2344, "Caligula's Roof"},
{2, 2236.6997, -1078.9478, 1049.0234, "Old Venturas Strip Casino"},
{3, -2031.1196, -115.8287, 1035.1719, "Driving School"},
{8, 2365.1089, -1133.0795, 1050.875, "Verdant Bluffs Safehouse"},
{0, 1168.512, 1360.1145, 10.9293, "Bike School"},
{9, 315.4544, 976.5972, 1960.8511, "Andromada"},
{10, 1893.0731, 1017.8958, 31.8828, "Four Dragons' Janitor's Office"},
{11, 501.9578, -70.5648, 998.7578, "Bar"},
{8, -42.5267, 1408.23, 1084.4297, "Burglary House X21"},
{11, 2283.3118, 1139.307, 1050.8984, "Willowfield Safehouse"},
{9, 84.9244, 1324.2983, 1083.8594, "Burglary House X22"},
{9, 260.7421, 1238.2261, 1084.2578, "Burglary House X23"},
{0, -1658.1656, 1215.0002, 7.25, "Otto's Autos"},
{0, -1961.6281, 295.2378, 35.4688, "Wang Cars"}
};







//*****STOCKS*******


#define DIALOG_INTERIORS 095
#define DIALOG_FURNITURES 090
#define DIALOG_FLIST 091
#define DIALOG_FDELETE 092
#define DIALOG_FEDIT 093
#define DIALOG_FSURE 094




forward LoadFurnitures();
public LoadFurnitures()
{

	new ottquery[128];
	for(new x = 1; x < MAX_FURNITURES; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-furniture` WHERE `fID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesFurnitureExist", "i", x);
	}
}



forward DoesFurnitureExist(fID);
public DoesFurnitureExist(fID)
{
	new rows, fields, ottquery[200];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-furniture` WHERE `fID` = %d", fID);
		mysql_tquery(mysql, ottquery, "LoadFurnitureObj", "i", fID);
	    return 1;
	}
	return 0;
}



forward LoadFurnitureObj(fID);
public LoadFurnitureObj(fID)
{
	new fcreator[24], fmodelname[36];

	cache_get_row(0, 1, fcreator, mysql);
	cache_get_row(0, 2, fmodelname, mysql);
	fInfo[fID][FUROBJECTID] = cache_get_row_int(0, 3, mysql);
	fInfo[fID][FMODELID] = cache_get_row_int(0, 4, mysql);
	fInfo[fID][FVirtual] = cache_get_row_int(0, 5, mysql);
	fInfo[fID][FDoor] = cache_get_row_int(0, 6, mysql);
	fInfo[fID][FDoors] = cache_get_row_int(0, 7, mysql);
	fInfo[fID][fposX] = cache_get_row_float(0, 8, mysql);
	fInfo[fID][fposY] = cache_get_row_float(0, 9, mysql);
	fInfo[fID][fposZ] = cache_get_row_float(0, 10, mysql);
	fInfo[fID][XFpos] = cache_get_row_float(0, 11, mysql);
	fInfo[fID][YFpos] = cache_get_row_float(0, 12, mysql);
	fInfo[fID][ZFpos] = cache_get_row_float(0, 13, mysql);

 	fInfo[fID][Fcreator] = fcreator;
 	fInfo[fID][modelname] = fmodelname;

 	if (fInfo[fID][FMODELID] != 0 && fInfo[fID][FVirtual] == 0)
 	{
 		fInfo[fID][FurExist] = 1;
 		totalfs++;
		new ID = fID;
		DestroyDynamicObject(fInfo[fID][FUROBJECTID]);
		fInfo[ID][FUROBJECTID] = CreateDynamicObject( fInfo[ID][FMODELID], fInfo[ID][fposX],fInfo[ID][fposY],fInfo[ID][fposZ], fInfo[ID][XFpos], fInfo[ID][YFpos], fInfo[ID][ZFpos], fInfo[ID][FVirtual],-1, -1, 50 ); //Creating the object
	}
	return 1;
}


forward LoadFurnitureHouse(property_id);
public LoadFurnitureHouse(property_id)
{

	new virtualworld = GetPropertyVirtualWorld(property_id);
	if(DoorInfo[property_id][DoorFurLoaded] == 1 || virtualworld == 0) return 0;
	
	DoorInfo[property_id][DoorFurLoaded] = 1;
	for(new ID = 1; ID < MAX_FURNITURES; ID++)
	{
	    if(fInfo[ID][FVirtual] == virtualworld)
	    {
	        DestroyDynamicObject(fInfo[ID][FUROBJECTID]);
	        fInfo[ID][FUROBJECTID] = CreateDynamicObject( fInfo[ID][FMODELID], fInfo[ID][fposX],fInfo[ID][fposY],fInfo[ID][fposZ], fInfo[ID][XFpos], fInfo[ID][YFpos], fInfo[ID][ZFpos], fInfo[ID][FVirtual],-1, -1, 50 ); //Creating the object
	    }
	}
	return 1;
}

forward UnLoadFurnitureHouse(property_id);
public UnLoadFurnitureHouse(property_id)
{
	new virtualworld = GetPropertyVirtualWorld(property_id);
	if(DoorInfo[property_id][DoorFurLoaded] == 0 || virtualworld == 0) return 0;

	DoorInfo[property_id][DoorFurLoaded] = 0;
	for(new ID = 1; ID < MAX_FURNITURES; ID++)
	{
	    if(fInfo[ID][FVirtual] == virtualworld && virtualworld != 0)
	    {
	        DestroyDynamicObject(fInfo[ID][FUROBJECTID]);
	        fInfo[ID][FurExist] = 0;
	        totalfs--;
	    }
	}
	return 1;
}



stock IsPropertyEmpty(property_id)
{
	new virtworld = GetPropertyVirtualWorld(property_id);
 	new total = 0;
	EachPlayer(i)
	{
	    new w = GetPlayerVirtualWorld(i);
	    if(w == virtworld)
	    {
	    	return false;
		}
	}
	if(total > 0)
	{
	    return false;
	}
	else
	{
		return true;
	}


}


stock isEntityObjectsLoaded(property_id)
{
	if(DoorInfo[property_id][DoorFurLoaded] == 1) return true;
	return false;
}

stock GetPropertyVirtualWorld(property_id)
{
	return DoorInfo[property_id][ddIntVW];
}


#define FURNITURE_EDIT ShowDialog(playerid, Show:FurnitureEdit, DIALOG_STYLE_LIST, "Furniture Edit", "Delete Object\nMoving Tool\nRename\nDuplicate Object\nFlatten Rotation\nSelect Object", "Submit", "<<");






public createfurniture( playerid, ID )
{
    new string[128], ottquery[1000], tmpString[400];

	totalfs++;
    if(totalfs > MAX_FURNITURES) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"All furniture slots are in use!");

	SCM(playerid,COLOR_LIGHTRED, string);
	fInfo[ID][FurExist] = 1;
	fInfo[ID][Fcreator] = GetName(playerid);
	fInfo[ID][modelname] = fOBJECTNAME[playerid];
	fInfo[ID][FMODELID] = fOBJECTID[playerid];
    fInfo[ID][FVirtual] = GetPlayerVirtualWorld(playerid);
	fInfo[ID][fposX] = FURNXYZ[playerid][0];
	fInfo[ID][fposY] = FURNXYZ[playerid][1];
	fInfo[ID][fposZ] = FURNXYZ[playerid][2];
	fInfo[ID][XFpos] = FURNXYZ[playerid][3];
	fInfo[ID][YFpos] = FURNXYZ[playerid][4];
	fInfo[ID][ZFpos] = FURNXYZ[playerid][5];

	format(tmpString, sizeof(tmpString), "INSERT INTO `seb-furniture` (`fID`, `fCreator`, `fModelName`, `fObjectID`, `fModelID`, `fVW`, `fDoor`, `fDoors`, `fPosX`, `fPosY`, `fPosZ`, `fXFPos`, `fYFPos`, `fZFpos`) ");
 	strcat(ottquery, tmpString);
 	format(tmpString, sizeof(tmpString), "VALUES (%d, '%s', '%s', %d, %d, %d, %d, %d, %f, %f, %f, %f, %f, %f)",
    ID,
	fInfo[ID][Fcreator],
	fInfo[ID][modelname],
	fInfo[ID][FUROBJECTID],
	fInfo[ID][FMODELID],
	fInfo[ID][FVirtual],
	fInfo[ID][FDoor],
	fInfo[ID][FDoors],
	fInfo[ID][fposX],
	fInfo[ID][fposY],
	fInfo[ID][fposZ],
	fInfo[ID][XFpos],
	fInfo[ID][YFpos],
	fInfo[ID][ZFpos]);
	strcat(ottquery, tmpString);

    mysql_tquery(mysql, ottquery, "", "");
	format(string, sizeof(string),"AdmWarn(%d): %s has created furniture object %s(%d) (ID: %d).",ALEVEL, GetName(playerid),fOBJECTNAME[playerid],fOBJECTID[playerid], ID );
	SendAdminMessage(COLOR_YELLOW, string);
	idd[playerid] = ID;
	FURNITURE_EDIT
	return 1;
}


public OnPlayerSelectDynamicObject(playerid, objectid, modelid, Float:x, Float:y, Float:z)
{
	idd[playerid] = objectid;
	SetPVarInt( playerid, "FurniturePosEdit",1 );
	EditDynObject(playerid, fInfo[idd[playerid]][FUROBJECTID]);
	new string[128];
	format(string,sizeof(string),"[PlayerSelectDynamicObject] Create ObjectID: %d Object List ID: %d Object Name: %s",fInfo[idd[playerid]][FUROBJECTID],idd[playerid],fInfo[idd[playerid]][modelname]);
	SCM(playerid, COLOR_WHITE, string);
	return 1;
}


/*
public OnPlayerSelectObject(playerid, type, objectid, modelid, Float:fX, Float:fY, Float:fZ)
{
	idd[playerid] = objectid;
	SetPVarInt( playerid, "FurniturePosEdit",1 );
	EditDynObject(playerid, fInfo[idd[playerid]][FUROBJECTID]);
	new string[128];
	format(string,sizeof(string),"[PlayerSelectObject] Create ObjectID: %d Object List ID: %d Object Name: %s",fInfo[idd[playerid]][FUROBJECTID],idd[playerid],fInfo[idd[playerid]][modelname]);
	SCM(playerid, COLOR_WHITE, string);
    return 1;
}
*/

LEANCMD:(totalf)
{
	new
	    string[128];

	new v = (totalfs/MAX_FURNITURES);
	new x = (v*100);
	format( string, sizeof(string),"[ ! ] "COL_WHITE"Total amount of furnitures: "COL_LIGHTRED"%d"COL_WHITE"/"COL_LIGHTRED"%d "COL_WHITE"|"COL_LIGHTRED" %f%s "COL_WHITE"full.",totalfs,MAX_FURNITURES,floatround(x),"%%" );
	SCM(playerid,COLOR_LIGHTRED, string);
	return 1;
}


public createfurnitureedit( playerid )
{
	new id = idd[playerid], leanquery[600];
    fInfo[id][FVirtual] = GetPlayerVirtualWorld(playerid);
	fInfo[id][fposX] = FURNXYZ[playerid][0];
	fInfo[id][fposY] = FURNXYZ[playerid][1];
	fInfo[id][fposZ] = FURNXYZ[playerid][2];
	fInfo[id][XFpos] = FURNXYZ[playerid][3];
	fInfo[id][YFpos] = FURNXYZ[playerid][4];
	fInfo[id][ZFpos] = FURNXYZ[playerid][5];
	mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-furniture` SET `fPosX` = '%f', `fPosY` = '%f', `fPosZ` = '%f', `fXFPos` = '%f', `fYFPos` = '%f', `fZFPos` = '%f' WHERE `fID` = '%d'",FURNXYZ[playerid][0], FURNXYZ[playerid][1], FURNXYZ[playerid][2], FURNXYZ[playerid][3], FURNXYZ[playerid][4], FURNXYZ[playerid][5], id );
	mysql_tquery(mysql, leanquery, "", "");

	FURNITURE_EDIT
	SCM(playerid,COLOR_LIGHTRED,"[ ! ]"COL_WHITE" Furniture object has been edited!");
	SetPVarInt( playerid, "FurniturePosEdit",0 );
	return 1;
}






forward selectcrim(playerid, response, skin);
//*****STOCKS*******





public OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
	new Float:oldX, Float:oldY, Float:oldZ, Float:oldRotX, Float:oldRotY, Float:oldRotZ;
	GetDynamicObjectPos(objectid, oldX, oldY, oldZ);
	GetDynamicObjectRot(objectid, oldRotX, oldRotY, oldRotZ);
	if( GetPVarInt(playerid, "GraffitiEditing") == 1 )
	{
    	Ex_OnPlayerEditDynamicObject(playerid, objectid, response, x, y, z, rx, ry, rz);
	}

	if( GetPVarInt(playerid, "Roadblocking") == 1 )
	{

		if(response == EDIT_RESPONSE_FINAL)
		{
	        CreateRoadBlock(playerid, x, y, z, rx, ry, rz);
	        SetPVarInt( playerid, "RoadBlocking",0 );
		}

		if(response == EDIT_RESPONSE_CANCEL)
		{
		    DestroyDynamicObject(objectid);
		    SetPVarInt( playerid, "RoadBlocking",0 );
		}
	}


	
	if( GetPVarInt(playerid, "DFurnituring") == 1 )
	{
		if(response == EDIT_RESPONSE_FINAL)
		{
		    FURNXYZ[playerid][0] = x; //Getting FURNXYZ
			FURNXYZ[playerid][1] = y;
			FURNXYZ[playerid][2] = z;
			FURNXYZ[playerid][3] = rx; // Getting Angles
			FURNXYZ[playerid][4] = ry;
			FURNXYZ[playerid][5] = rz;
			createdoorfurniture( playerid );
			createfurniture( playerid, idd[playerid] );
	 		SetDynamicObjectPos(objectid, x, y, z);
			SetDynamicObjectRot(objectid, rx, ry, rz);
			SetPVarInt( playerid, "DFurnituring", 0 );
			return 1;
		}
		else if(response == EDIT_RESPONSE_CANCEL)
		{
		    fInfo[idd[playerid]][FurExist] = 0;
		    SCM(playerid,COLOR_LIGHTRED,"Aborted.");
		    DestroyDynamicObject( fInfo[idd[playerid]][FUROBJECTID] );
		    SetPVarInt( playerid, "DFurnituring", 0 );
		}
	}



	if( GetPVarInt(playerid, "Furnituring") == 1 )
	{
		if(response == EDIT_RESPONSE_FINAL)
		{
		    FURNXYZ[playerid][0] = x; //Getting FURNXYZ
			FURNXYZ[playerid][1] = y;
			FURNXYZ[playerid][2] = z;
			FURNXYZ[playerid][3] = rx; // Getting Angles
			FURNXYZ[playerid][4] = ry;
			FURNXYZ[playerid][5] = rz;
			createfurniture( playerid, idd[playerid] );
	 		SetDynamicObjectPos(objectid, x, y, z);
			SetDynamicObjectRot(objectid, rx, ry, rz);
			SetPVarInt( playerid, "Furnituring", 0 );
			return 1;
		}
		else if(response == EDIT_RESPONSE_CANCEL)
		{
		    fInfo[idd[playerid]][FurExist] = 0;
		    SCM(playerid,COLOR_LIGHTRED,"Aborted.");
      		DestroyDynamicObject( fInfo[idd[playerid]][FUROBJECTID] );
		    SetPVarInt( playerid, "Furnituring", 0 );
		}
	}



    if( GetPVarInt(playerid, "RoadBlockEdit") == 1 )
	{

 		if(response == EDIT_RESPONSE_FINAL)
	    {
 	 		SetDynamicObjectPos(objectid, x, y, z);
			SetDynamicObjectRot(objectid, rx, ry, rz);
	    	SetPVarInt( playerid, "RoadBlockEdit",0 );
		}
		if(response == EDIT_RESPONSE_CANCEL)
		{
 			SetDynamicObjectPos(objectid, oldX, oldY, oldZ);
			SetDynamicObjectRot(objectid, oldRotX, oldRotY, oldRotZ);
			SetPVarInt( playerid, "RoadBlockEdit",0 );
		}
	}

	if( GetPVarInt(playerid, "FurniturePosEdit") == 1 )
	{
	    if(response == EDIT_RESPONSE_FINAL)
	    {
	    	FURNXYZ[playerid][0] = x; //Getting FURNXYZ
			FURNXYZ[playerid][1] = y;
			FURNXYZ[playerid][2] = z;
			FURNXYZ[playerid][3] = rx; // Getting Angles
			FURNXYZ[playerid][4] = ry;
			FURNXYZ[playerid][5] = rz;
	        createfurnitureedit( playerid );
	        SetPVarInt( playerid, "FurniturePosEdit",0 );
 			SetDynamicObjectPos(objectid, x, y, z);
			SetDynamicObjectRot(objectid, rx, ry, rz);
			return 1;
		}
		if(response == EDIT_RESPONSE_CANCEL)
		{
			SetDynamicObjectPos(objectid, oldX, oldY, oldZ);
			SetDynamicObjectRot(objectid, oldRotX, oldRotY, oldRotZ);
			SetPVarInt( playerid, "FurniturePosEdit",0 );
			FURNITURE_EDIT
			return 1;
		}
	}
	return 1;
}




forward Kickuban(playerid);
public Kickuban(playerid)
{
	Kick(playerid);
    return 1;
}

forward Kicku(id);
public Kicku(id)
{
	Kick(id);
    return 1;
}

forward Crim(playerid);
public Crim(playerid)
{
	SetPlayerSkin(playerid, PlayerInfo[playerid][pSkin]);
	SCM(playerid, COLOR_YELLOW, "SERVER: Changing back to your normal skin.");
    return 1;
}


forward Kickban(sP);
public Kickban(sP)
{
	Kick(sP);
    return 1;
}


forward Unfreeze(playerid);
public Unfreeze(playerid)
{
    TogglePlayerControllable(playerid, true);
    return 1;
}


forward despawnalltime(playerid);


forward ProxDetectorS(Float:radi, playerid, targetid);

public ProxDetectorS(Float:radi, playerid, targetid)
{
	new Float:posx, Float:posy, Float:posz;
	new Float:oldposx, Float:oldposy, Float:oldposz;
	new Float:tempposx, Float:tempposy, Float:tempposz;
	GetPlayerPos(playerid, oldposx, oldposy, oldposz);
	GetPlayerPos(targetid, posx, posy, posz);
	tempposx = (oldposx -posx);
	tempposy = (oldposy -posy);
	tempposz = (oldposz -posz);
	if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi)))
	{
		return 1;
	}
	return 0;
}


forward ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5);

forward ProxDetectorRadio(Float:radi, playerid, string[],col1,col2,col3,col4,col5);


forward SendAdminMessage(color, string[]);

forward SendGroupMessage(playerid, color, string[]);

forward SendRadioMessage(color, string[]);

forward SendLeadMessage(color, string[]);

forward SendHackMessage(color, string[]);

forward SendCriminalMessage(color, string[]);

forward SendCopMessage(color, string[]);

forward SendSdeathMessage(color, string[]);


OnePlayAnim(playerid,animlib[],animname[], Float:Speed, looping, lockx, locky, lockz, lp)
{
	ApplyAnimation(playerid, animlib, animname, Speed, looping, lockx, locky, lockz, lp);
}
LoopingAnim(playerid,animlib[],animname[], Float:Speed, looping, lockx, locky, lockz, lp)
{
    ApplyAnimation(playerid, animlib, animname, Speed, looping, lockx, locky, lockz, lp);
}

forward Log(logtype[],string[]);
public Log(logtype[],string[])
{
    new File: LogFile = fopen(logtype,io_append);
    new stringformat[128];
    if(LogFile)
    {
	    format(stringformat,sizeof(stringformat),"%s\r\n",string);
	    fwrite(LogFile,stringformat);
	    fclose(LogFile);
	 }
    return 1;
}


forward publicKick(playerid);
public publicKick(playerid) return Kick(playerid);

stock srtvdfhsfthvsfthd_Kick(playerid) return SetTimerEx("publicKick",500,false,"i",playerid), 1;
//#define Kick    srtvdfhsfthvsfthd_Kick



forward DropPlayerWeapon(playerid,weaponid);
public DropPlayerWeapon(playerid,weaponid)
{
    if(weaponid == 0) return 0;
    new wp,ammo,weap[13][2];
   	new slot = GetWSlotID(weaponid);
	Weapons[playerid][slot] = -1;
    for (new i=0; i<13; i++)
    {
        GetPlayerWeaponData(playerid,i,wp,ammo);
        if(ammo <= -1 && i >= 2)
        {
            wp = 0;
            ammo = 0;
        }
        if(wp != weaponid)
        {
            weap[i][0] = wp;
            weap[i][1] = ammo;
        }
    }
    ResetWeapons(playerid);
    for(new i=0;i<13;i++)
    {
        new wid = weap[i][0];
        new wam = weap[i][1];
        if(wid != 0 && wam >0)
        {
            GiveWeapon(playerid,wid,wam);
        }
    }
    return 1;
}

stock IsVehicleOccupied(vehicleid)
{
	EachPlayer(i)
	{
		if(IsPlayerInVehicle(i,vehicleid)) return 1;
	}
	return 0;
}

stock GetName(playerid)
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName( playerid, name, sizeof( name ) );
	return name;
}


stock GetICName( playerid )
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName( playerid, name, sizeof( name ) );
 	name[strfind(name, "_")] = ' ';
 	return name;
}




//****END OF DEFINES*****//

//***ENUMS*****//







stock GetICMame(playerid)
{

    if(GetPVarInt(playerid, "Masked") == 1)
    {
    	new maski[16], string[24];
    	GetPVarString(playerid, "MaskID", maski, sizeof(maski));
    	format(string, sizeof(string), "[Mask %s]",maski);
    	return string;
    }
    else
	{
		new name[MAX_PLAYER_NAME];
 		GetPlayerName(playerid,name,sizeof(name));
 		name[strfind(name,"_")] = ' ';
		return name;
	}
}

//STOCK FOR GETDAY/YEAR/MONTH
stock GetDay()
{
	new y,m,day;
	getdate(y,m,day);
	return day;
}
stock GetMonth()
{
	new y,month,d;
	getdate(y,month,d);
	return month;
}
stock GetYear()
{
	new year,m,d;
	getdate(year,m,d);
	return year;
}

stock GetXYBehindOfVehicle(vehicleid, &Float:x, &Float:y, Float:distance)
{
    new
        Float:a;
    GetVehiclePos( vehicleid, x, y, a );
    GetVehicleZAngle( vehicleid, a );
    x += ( distance * floatsin( -a+180, degrees ));
    y += ( distance * floatcos( -a+180, degrees ));
}


stock GetPosBehindVehicle(vehicleid, &Float:x, &Float:y, &Float:z, Float:offset=0.5)
{
	new Float:vehicleSize[3], Float:vehiclePos[3];
	GetVehiclePos(vehicleid, vehiclePos[0], vehiclePos[1], vehiclePos[2]);
	GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_SIZE, vehicleSize[0], vehicleSize[1], vehicleSize[2]);
	GetXYBehindOfVehicle(vehicleid, vehiclePos[0], vehiclePos[1], (vehicleSize[1]/2)+offset);
	x = vehiclePos[0];
	y = vehiclePos[1];
	z = vehiclePos[2];
	return 1;
}



//
//STOCKS
#define MAX_STRING MAX_PLAYER_NAME

stock GetPlayerID(const playername[]) //By Jan "DracoBlue" Sch�tze (edited by Gabriel "Larcius" Cordes)
{
	new playername1[MAX_STRING];
	EachPlayer(i)
	{
			GetPlayerName(i,playername1,sizeof(playername1));
			if (strcmp(playername1,playername,true)==0)
			{
				return i;
			}
	}
	new correctsigns_userid=-1;
	return correctsigns_userid;
}


stock SendBMessage(playerid, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s ))", _Line );
            }
        }
        #endif
        ////////////
        ProxDetector(20.0, playerid, _Line,COLOR_GREY,COLOR_GREY,COLOR_GREY,COLOR_GREY,COLOR_GREY);
    //    SendClientMessage(playerid, colr, _Line );
        ///////////
        _i@Index++;
    }
}
stock SendDdoMessage(playerid, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s", _Line );
            }
        }
        #endif
        ////////////
        ProxDetector(20.0, playerid, _Line, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
        //SendClientMessage(playerid, colr, _Line );
        ///////////
        _i@Index++;
    }
}


stock SendMeessage(playerid, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s ((%s))", _Line,GetICMame(playerid) );
            }
        }
        #endif
        ////////////
        ProxDetector(20.0, playerid, _Line, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
        //SendClientMessage(playerid, colr, _Line );
        ///////////
        _i@Index++;
    }
}

#define MAX_LENGTH 100
stock SendMessageToAll(color, message[], length = MAX_LENGTH)
{
    new len = strlen(message);
    if(len <= length)
    {
        EachPlayer(i)
        {
            SendClientMessage(i, color, message);
        }
    }
    else
    {
        new string[164], lastspace, escape = floatround(length / 1.2);
        while(len > length)
        {
            format(string, sizeof(string), "%s", message);
            for(new i = 0; i <= len; i ++)
            {
                if(message[i] == ' ' && i <= length) lastspace = i;
                if(i > length) i = len;
            }

            if(lastspace == 0)
            {
                strdel(string, length, strlen(string));
                strdel(message, 0, length);
                len -= length;
            }
            else if(lastspace < escape)
            {
                strdel(string, escape, strlen(string));
                strdel(message, 0, escape);
                len -= escape;
                lastspace = 0;
            }
            else
            {
                strdel(string, lastspace, strlen(string));
                strdel(message, 0, lastspace + 1);
                len -= lastspace;
                lastspace = 0;
            }

            EachPlayer(i)
            {
                SendClientMessage(i, color, string);
				if(len < length) SendClientMessage(i, color, message);
            }
        }
    }
    return 1;
}



stock SendMeLowessage(playerid, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s ((%s))", _Line,GetICMame(playerid) );
            }
        }
        #endif
        ////////////
        ProxDetector(15.0, playerid, _Line, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
        //SendClientMessage(playerid, colr, _Line );
        ///////////
        _i@Index++;
    }
}




stock ConfirmDialog(playerid, caption[], info[], callback[], ...){
   new n = numargs(),       // number of arguments, static + optional
      szParamHash[64];   // variable where the passed arguments will be stored
   for(new arg = 4; arg < n; arg++){   // loop all additional arguments
      format(szParamHash, sizeof(szParamHash), "%s%d|", szParamHash, getarg(arg)); // store them in szParamHash
   }
   SetPVarInt(playerid, "confDialogArgs", n -4);         // store the amount of additional arguments
   SetPVarString(playerid, "confDialCallback", callback);   // store the callback that needs to be called after response
   SetPVarString(playerid, "confDialog_arg", szParamHash);   // store the additional arguments

   ShowPlayerDialog(playerid, DIALOG_CONFIRM_SYS, DIALOG_STYLE_MSGBOX, caption, info, "Yes", "No"); // display the dialog message itself

   return;
}

stock ConfirmDialog_Response(playerid, response){
   new szCallback[33],      // variable to fetch our callback to
      szParamHash[64],    // variable to check raw compressed argument string
      n,               // variable to fetch the amount of additional arguments
      szForm[12];         // variable to generate the CallLocalFunction() "format" argument

   n = GetPVarInt(playerid, "confDialogArgs");   // Fetch the amount of additional arguments
   GetPVarString(playerid, "confDialCallback", szCallback, sizeof(szCallback));   // fetch the callback
   GetPVarString(playerid, "confDialog_arg", szParamHash, sizeof(szParamHash));   // fetch the raw compressed additional arguments

   new hashDecoded[12];   // variable to store extracted additional arguments from the ConfirmDialog() generated string

   sscanf(szParamHash, "p<|>A<d>(0)[12]", hashDecoded);   // extraction of the additional arguments

   new args,    // amount of cells passed to CallLocalFunction
      addr,    // pointer address variable for later use
      i;      // i

   format(szForm, sizeof(szForm), "dd");   // static parameters for the callback, "playerid" and "response"

   #emit ADDR.pri hashDecoded   // get pointer address of the extracted additional arguments
   #emit STOR.S.pri addr      // store the pointer address in variable 'addr'
   if(n){   // if there's any additional arguments
      for(i = addr + ((n-1) * 4); i >= addr; i-=4){ // loops all additional arguments by their addresses
         format(szForm, sizeof(szForm), "%sd", szForm); // adds an aditional specifier to the "format" parameter of CallLocalFunction
         #emit load.s.pri i   // load the argument at the current address
         #emit push.pri      // push it to the CallLocalFunction argument list
         args+=4;         // increase used cell number by 4
      }
   }


   args+=16;   // preserve 4 more arguments for CallLocalFunction (16 cause 4 args by 4 cells (4*4))

   #emit ADDR.pri response            // fetch "response" pointer address to the primary buffer
   #emit push.pri                  // push it to the argument list

   #emit ADDR.pri playerid            // fetch "playerid" pointer address to the primary buffer
   #emit push.pri                  // push it to the argument list

   #emit push.adr szForm            // push the szForm ("format") to the argument list by its referenced address
   #emit push.adr szCallback         // push the szCallback (custom callback) to the argument list by its referenced address
   #emit push.s args               // push the amount of arguments
   #emit sysreq.c CallLocalFunction   // call the function

   // Clear used data
   #emit LCTRL 4
   #emit LOAD.S.ALT args
   #emit ADD.C 4
   #emit ADD
   #emit SCTRL 4

   // Clear used PVars
   DeletePVar(playerid, "confDialCallback");
   DeletePVar(playerid, "confDialog_arg");
   DeletePVar(playerid, "confDialogArgs");

   return;
}


//ENUMS FOR ATTACHMENTS


//PUBLICS


public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	LASTINCARIN[vehicleid] = true;
	new dstring[MAX_PLAYER_NAME+10];
	format(dstring,sizeof(dstring),"%s(DBID%d)",GetName(playerid),PlayerInfo[playerid][userid]);
	LASTINCAR[vehicleid] = dstring;
	entering[playerid] = true;
	new stringlog[MAX_PLAYER_NAME+45];
	format(stringlog, sizeof(stringlog),"%s(DBID%d) is entering vehicle %d",GetName(playerid),PlayerInfo[playerid][userid],vehicleid);
	WriteLog("VehicleEnter", stringlog);
    return 1;
}

LEANCMD:(lastincar)
{
	new vehid,string[128];
	if(sscanf(params,"d",vehid)) return SCM(playerid,COLOR_GREY,"USAGE: /lastincar [carid]");
	if(!IsValidVehicle(vehid)) return SCM(playerid,COLOR_LIGHTRED,"invalid vehicleid.");
	if(LASTINCARIN[vehid] == false) return SCM(playerid,COLOR_LIGHTRED,"No one has been in this vehicle since restart.");
	format(string,sizeof(string),"Last in the %s was %s.",GetVehicleFriendlyName(vehid),LASTINCAR[vehid]);
	SCM(playerid,COLOR_LIGHTRED,string);
	return 1;
}


forward SyncTime();

public SyncTime()
{
	new string[64];
	new tmphour;
	new tmpminute;
	new tmpsecond;
	gettime(tmphour, tmpminute, tmpsecond);
	FixHour(tmphour);
	tmphour = shifthour;
	if ((tmphour > ghour) || (tmphour == 0 && ghour == 23))
	{
		format(string, sizeof(string), "SERVER: The Time Is Now %d:00 Hours",tmphour);
		SendClientMessageToAll(COLOR_WHITE, string);
		format(string, sizeof(string), "PAYDAY: %d:00 Hours",tmphour);
		IRC_GroupSayEx(string);

		ghour = tmphour;
		EachPlayer(i)
		{
			PayDay(i);
		}
		SetWorldTime(tmphour);
		// Unload empty houses with furniture!
		for(new i = 0; i < sizeof(DoorInfo); i++)
		{
			if(IsPropertyEmpty(i))
			{
        		UnLoadFurnitureHouse(i);
			}
		}
	}
	
}


forward PlayerPlayMusic(playerid);
forward StopMusic();

public PlayerPlayMusic(playerid)
{
	SetTimer("StopMusic", 5000, 0);
	PlayerPlaySound(playerid, 1068, 0.0, 0.0, 0.0);
}

public StopMusic()
{
	EachPlayer(i)
	{
			PlayerPlaySound(i, 1069, 0.0, 0.0, 0.0);
	}
}

stock OnlinePlayersCount()
{
	new count = 0;
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(!IsPlayerNPC(i)) count++;
	}
	return count;
}



forward PayDay(playerid);
public PayDay(playerid)
{
    new string[128];
   	if(PlayerInfo[playerid][Level] == 0)
	{
	    PlayerInfo[playerid][Level] = 1;
	    PlayerInfo[playerid][LevelUp] = 0;
        PlayerInfo[playerid][LevelUpNeeded] = 8;
        return 1;
	}

	PlayerInfo[playerid][LevelUp] ++;

	if(PlayerInfo[playerid][LevelUp] >= PlayerInfo[playerid][LevelUpNeeded])
	{
		PlayerInfo[playerid][LevelUpNeeded] += 4;
	    PlayerInfo[playerid][Level] ++;
	    PlayerInfo[playerid][LevelUp] = 0;
		GameTextForPlayer(playerid,"Levelup!",5000,1);
		format(string,sizeof(string),"[ Levelup ] "COL_WHITE"You are now level "COL_LIGHTRED"%d"COL_WHITE"! Experience points needed for next level: "COL_LIGHTRED"%d"COL_WHITE"!",PlayerInfo[playerid][Level],PlayerInfo[playerid][LevelUpNeeded]);
		SCM(playerid,COLOR_LIGHTRED,string);
		SetPlayerScore(playerid,PlayerInfo[playerid][Level]);
	}

    PlayerPlayMusic(playerid);


	if(PlayerInfo[playerid][pCash] < 0)
	{
	    SCM(playerid, COLOR_WHITE, "You have received $10,000 extra for being poor..");
	    GiveMoney(playerid, 10000);
	    GivePropMoney(PROPERTY_BANK, -10000);
	}
	new players = OnlinePlayersCount();
	
	new pay;
//	new playersz = (players+10-PlayerInfo[playerid][Level]);
	pay = (DoorInfo[PROPERTY_BANK][DoorCash]/players);
	if(pay > 10000)
	{
	    pay = 3500;
	}
	if(pay < 1000)
	{
		pay += 800;
	}
	GivePropMoney(PROPERTY_BANK, -pay);
	
	GiveMoney(playerid, pay);
	PlayerInfo[playerid][hOn] ++;

	format(string, sizeof(string), "~y~PayDay~n~~w~Paycheck ~n~~g~$%d", pay);
	GameTextForPlayer(playerid, string, 5000, 1);

	SCM(playerid,COLOR_WHITE, "|___ Bank Statement ___|");
	format(string, sizeof(string)," Hours On: %d",PlayerInfo[playerid][hOn]);
	SCM(playerid,COLOR_GRAD2, string);
	format(string, sizeof(string)," Experience Points: %d/%d.",PlayerInfo[playerid][LevelUp], PlayerInfo[playerid][LevelUpNeeded]);
	SCM(playerid,COLOR_GRAD2,string);
	SCM(playerid,COLOR_WHITE,"|______________________|");
	format(string, sizeof(string)," Money Balance: %s",currency_format(PlayerInfo[playerid][pCash]));
	
	SCM(playerid,COLOR_WHITE, string);
	
	return 1;
}

LEANCMD:(charity)
{
		new moneys;
		if(sscanf(params, "d",moneys)) return SCM(playerid, COLOR_GRAD3, "USAGE: /charity [amount]");

        new playermoney = GetPlayerMoney(playerid);
		if(moneys > playermoney || moneys < 0)
		{
			SendClientMessage(playerid, COLOR_GRAD1, "Insufficient amount.");
			return 1;
		}
		GiveMoney(playerid, (-moneys));
		GivePropMoney(PROPERTY_BANK, moneys);
		new string[128];
		format(string, sizeof(string), "%s Thank you for you donation of, %s. Current money in the server bank: %s",GetName(playerid), currency_format(moneys), currency_format(DoorInfo[PROPERTY_BANK][DoorCash]));
		SCM(playerid, COLOR_GRAD1, string);
		PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
		return 1;

}



LEANCMD:(levelup)
{
	new string[128];

	format(string, sizeof(string), "Current experience points [%d], experience points needed for next level %d.",PlayerInfo[playerid][LevelUp],PlayerInfo[playerid][LevelUpNeeded]);
	SCM(playerid, COLOR_GREY, string);
	return 1;
}

stock GiveMoney(playerid, amount)
{
	new string[128];
	format(string, sizeof(string),"Player %s - Money added/removed: %s",GetName(playerid), currency_format(amount));
	WriteLog("PlayerCash", string);
	PlayerInfo[playerid][pCash] += amount;
	return GivePlayerMoney(playerid, amount);
}

stock GivePropMoney(propertyid, amount)
{
    DoorInfo[propertyid][DoorCash] += amount;
    new LeanQuery[256];
   	mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "UPDATE `seb-doors` SET `dCash` = '%d' WHERE `dID` = '%d'", DoorInfo[propertyid][DoorCash], propertyid);
	mysql_tquery(mysql, LeanQuery, "", "");
	format(LeanQuery, sizeof(LeanQuery),"Property ID: %d, Money added/removed: %s",propertyid, currency_format(amount));
	WriteLog("PropCash", LeanQuery);
    return 1;
}

stock LoadMoney(playerid, amount)
{
	PlayerInfo[playerid][pCash] = amount;
	return GivePlayerMoney(playerid, amount);
}

LEANCMD:(pay)
{
		new moneys, giveplayerid, string[128];
		if(sscanf(params, "ud",giveplayerid, moneys)) return SendClientMessage(playerid, COLOR_GRAD1, "USAGE: /pay [playerid/PartOfName] [amount]");

		if (giveplayerid != INVALID_PLAYER_ID)
		{
		    if(playerid == giveplayerid) return SCM(playerid, COLOR_LIGHTRED, "You cannot pay yourself.");
			if(IsPlayerNearPlayer(playerid, giveplayerid, 5.0))
			{
				new playermoney = GetPlayerMoney(playerid);
				if (moneys > 0 && playermoney >= moneys)
				{
					GiveMoney(playerid, (0 - moneys));
					GiveMoney(giveplayerid, moneys);
					format(string, sizeof(string), "   You have sent %s(%d), %s.", GetICMame(giveplayerid), giveplayerid, currency_format(moneys));
					PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
					SendClientMessage(playerid, COLOR_GRAD1, string);
					format(string, sizeof(string), "   You have recieved %s from %s(%d).", currency_format(moneys), GetICMame(playerid), playerid);
					SendClientMessage(giveplayerid, COLOR_GRAD1, string);
					PlayerPlaySound(giveplayerid, 1052, 0.0, 0.0, 0.0);
					format(string, sizeof(string), "* %s takes out some cash, and hands it to %s.", GetICMame(playerid), GetICMame(giveplayerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
					format(string, sizeof(string), "AdmWarn: %s has paid %s to %s", GetName(playerid), currency_format(moneys), GetName(giveplayerid));
					SendAdminMessage(COLOR_LIGHTRED, string);
				}
				else
				{
					SendClientMessage(playerid, COLOR_GRAD1, "   Invalid transaction amount.");
				}
			}
			else
			{
				SendClientMessage(playerid, COLOR_GRAD1, "   You're too far away.");
			}
		}
		else
		{
				format(string, sizeof(string), "   %d is not an active player.", giveplayerid);
				SendClientMessage(playerid, COLOR_GRAD1, string);
		}
		return 1;
}



public FixHour(hour)
{
	hour = timeshift+hour;
	if (hour < 0)
	{
		hour = hour+24;
	}
	else if (hour > 23)
	{
		hour = hour-24;
	}
	shifthour = hour;
	return 1;
}

public Count()
{
	if(!iscountactivated){KillTimer(CountTimer);}//Checking if the timer is activated, if not kill the timer.
	else
	{
		new string[4];//Creating the string variable, where we will store the count down value.
		format(string,sizeof(string),"%i",countamount);//Formating it.
		GameTextForAll(string,1000,3);//Showing it to everyone.
		EachPlayer(i)
		{
			PlayerPlaySound(i, 1056, 0.0, 0.0, 0.0);
		}
		countamount--;//Counting less 1 to the count down variable.
		if(countamount == -1)
		{
			iscountactivated = false,
			GameTextForAll("~g~~h~Go!",1000,3);
			EachPlayer(i)
			{
				PlayerPlaySound(i,1057, 0.0,0.0,0.0);
			}
		}
	}
	return 1;
}








public SendSdeathMessage(color, string[])
{
	EachPlayer(i)
	{
		    if(PlayerInfo[i][pSdeath] == 0 && PlayerInfo[i][pAdmin] > 0)
		    {
				SendClientMessage(i, color, string);
			}
	}
}


public SendLeadMessage(color, string[])
{
	EachPlayer(i)
	{
		    if(PlayerInfo[i][pAdmin] > 5)
		    {
				SendClientMessage(i, color, string);
			}
	}
 	new stringz[128];
	format(stringz, sizeof(stringz), "04[LeadCMD] 01%s",string);
 	IRC_GroupSayEx(stringz);
}


LEANCMD:(togadminwarn)
{
	if(PlayerInfo[playerid][pAdmin] < 5) return 0;
    togamsg[playerid] = !togamsg[playerid];
    SCM(playerid, COLOR_LIGHTRED, togamsg[playerid] ?  (" You have disabled anti hack messages.  ") : "  You have enabled anti hack messages. ");
	return 1;
}


public SendHackMessage(color, string[])
{
	EachPlayer(i)
	{
		    if(PlayerInfo[i][pAdmin] > 4 && togamsg[i] == false)
		    {
				SendClientMessage(i, color, string);
			}
	}
 	new stringz[128];
	format(stringz, sizeof(stringz), "04[LeadCMD] 01%s",string);
 	IRC_GroupSayEx(stringz);
}

#if defined TRAINING_METRO
new Float:RandomSpawns[][] =
{
    {1429.0466, -1669.5758, 45.0646},
    {1519.3956, -1588.2155, 105.2915, 200.7626},
    {1498.4087, -1814.9478, 120.4657, 339.0145}, 
    {1619.5819, -1750.6022, 37.8976, 324.3735}, 
    {1688.9420, -1734.5621, 99.8389, 67.4222}, 
    {2125.6587, -1887.1122, 90.9503, 25.1453}, 
    {2163.9011, -1832.9407, 93.6786, 333.3272},
    {2041.0591, -1669.5342, 73.7570, 49.7267},
    {1065.5793, -1534.2070, 106.3314, 89.2071},
    {951.0137, -1636.9524, 94.9356, 123.2589}
};
#endif




public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
		new
		     Float:X,
		     Float:Y,
		     Float:Z;
		if(clickedplayerid == playerid) return SCM(playerid, COLOR_LIGHTRED, "You can't teleport to yourself.");
	    if ((notp) && PlayerInfo[playerid][pAdmin] < 1)
		{
			SendClientMessage(playerid, COLOR_GRAD2, "The teleport system has been disabled by an admin.");
			return 1;
		}
		GetPlayerPos(clickedplayerid, X, Y, Z);
		SetPlayerPosEx(playerid, X, Y+0.2, Z, 1000);
		SetPlayerInterior(playerid, GetPlayerInterior(clickedplayerid));
		SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(clickedplayerid));
		WORLD[playerid] = WORLD[clickedplayerid];
		SCM(playerid, COLOR_GREY, " You have been teleported");
		return 1;
}




public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	if(PlayerInfo[playerid][pAdmin] >= 1)
    {
  	 	XTP[playerid] = fX, YTP[playerid] = fY, ZTP[playerid] = fZ;
		TogglePlayerControllable(playerid, false);
		SetTimerEx( "Unfreeze", 3000, false, "i", playerid );
 		SetPlayerPosFindZ(playerid, fX, fY, fZ+25);
	   	SendClientMessage(playerid, COLOR_GRAD1, "You have been teleported to the clicked location on your map.");
	}
	return 1;

}


stock MsToString(millisecond, format[])
{
    new
        tmp[4],
        result[64],
        hour,
        minute,
        second,
        format_char,
        result_lenght,
        bool:padding,
        len = strlen(format);

    hour            = (millisecond / (1000 * 60 * 60));
    minute          = (millisecond % (1000 * 60 * 60)) / (1000 * 60);
    second          = ((millisecond % (1000 * 60 * 60)) % (1000 * 60)) / 1000;
    millisecond     = millisecond - (hour * 60 * 60 * 1000) - (minute * 60 * 1000) - (second * 1000);

    while(format_char < len)
    {
        if(format[format_char] == '%')
        {
            format_char++;

            if(format[format_char] == '1')
            {
                padding = true;
                format_char++;
            }
            else
            {
                padding = false;
            }

            switch(format[format_char])
            {
                case 'h':
                {
                    valstr(tmp, hour);

                    if(padding)
                    {
                        if(hour < 10)
                            strcat(result, "0");
                    }

                    strcat(result, tmp);
                    result_lenght = strlen(result);
                }

                case 'm':
                {
                    valstr(tmp, minute);

                    if(padding)
                    {
                        if(minute < 10)
                            strcat(result, "0");
                    }

                    strcat(result, tmp);
                    result_lenght = strlen(result);
                }

                case 's':
                {
                    valstr(tmp, second);

                    if(padding)
                    {
                        if(second < 10)
                            strcat(result, "0");
                    }

                    strcat(result, tmp);
                    result_lenght = strlen(result);
                }

                case 'd':
                {
                    valstr(tmp, millisecond);

                    if(padding)
                    {
                        if(millisecond < 10)
                            strcat(result, "00");

                        else if(millisecond < 100)
                            strcat(result, "0");
                    }

                    strcat(result, tmp);
                    result_lenght = strlen(result);
                }
            }
        }
        else
        {
            result[result_lenght] = format[format_char];
            result_lenght++;
        }

        format_char++;
    }

    return result;
}


public OnPlayerPause(playerid)
{
	gPlayerStopWatchTick[playerid] = GetTickCount();
	isplayerpaused[playerid] = true;
	return 1;

}



public OnPlayerUnpause(playerid)
{
    GetPlayerPos(playerid, XTP[playerid], YTP[playerid], ZTP[playerid]);
    isplayerpaused[playerid] = false;
    gPlayerStopWatchTick[playerid] = 0;
	return 1;

}






public SendCriminalMessage(color, string[])
{
	EachPlayer(i)
	{
		    if(Criminal[i] == true)
		    {
				SendClientMessage(i, color, string);
			}
	}
}

public SendCopMessage(color, string[])
{
	EachPlayer(i)
	{
		    if(Duty[i] == true)
		    {
				SendClientMessage(i, color, string);
			}
	}
}

//PUBLIC

public ProxDetectorRadio(Float:radi, playerid, string[], col1, col2, col3, col4, col5)
{
        new Float:posx, Float:posy, Float:posz;
        new Float:oldposx, Float:oldposy, Float:oldposz;
        new Float:tempposx, Float:tempposy, Float:tempposz;
        GetPlayerPos(playerid, oldposx, oldposy, oldposz);
		EachPlayer(i)
		{
                GetPlayerPos(i, posx, posy, posz);
                tempposx = (oldposx -posx);
                tempposy = (oldposy -posy);
                tempposz = (oldposz -posz);
                if(GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(i) && i != playerid)
                {
                    if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16)))
                    {
                        SendClientMessage(i, col1, string);
                    }
                    else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8)))
                    {
                        SendClientMessage(i, col2, string);
                    }
                    else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4)))
                    {
                        SendClientMessage(i, col3, string);
                    }
                    else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2)))
                    {
                        SendClientMessage(i, col4, string);
                    }
                    else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi)))
                    {
                        SendClientMessage(i, col5, string);
                    }
                }
        }
    	return 1;
}


public ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5)
{
        new Float:posx, Float:posy, Float:posz;
        new Float:oldposx, Float:oldposy, Float:oldposz;
        new Float:tempposx, Float:tempposy, Float:tempposz;
        GetPlayerPos(playerid, oldposx, oldposy, oldposz);
		EachPlayer(i)
		{
                GetPlayerPos(i, posx, posy, posz);
                tempposx = (oldposx -posx);
                tempposy = (oldposy -posy);
                tempposz = (oldposz -posz);
                if(GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(i))
                {
                    if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16)))
                    {
                        SendClientMessage(i, col1, string);
                    }
                    else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8)))
                    {
                        SendClientMessage(i, col2, string);
                    }
                    else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4)))
                    {
                        SendClientMessage(i, col3, string);
                    }
                    else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2)))
                    {
                        SendClientMessage(i, col4, string);
                    }
                    else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi)))
                    {
                        SendClientMessage(i, col5, string);
                    }
                }
        }
    	return 1;
}








stock GetClosestVehicleForPlayer(playerid)
{
    new vehicleid = INVALID_VEHICLE_ID;
    new Float:distance = 99999.0;
    new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);
    for(new i=0; i <= GetVehiclePoolSize(); i++)
    {
        if(GetVehicleDistanceFromPoint(i, X, Y, Z) < distance && distance < 4.0) //you can change this value
        {
            vehicleid = i;
            distance = GetVehicleDistanceFromPoint(i, X, Y, Z);
        }
    }
    return vehicleid;
}








stock NextSt()
{
    new id, lastid;
    new PickupD = NextStation();
    for(new ID = 0; ID < PickupD; ID++)
    {
        id = ID;
	}
	lastid = id;
	return lastid;
}



stock NextStation()
{
	for(new x = 1; x < MAX_STATIONS; x++)
	{
	    if(XMRInfo[x][XMRExist] == 0)
	    {
	        return x;
	    }
	}
	return 1;
}




forward LoadStations();
public LoadStations()
{
	new ottquery[52];
	for(new x = 1; x < MAX_STATIONS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-stations` WHERE `sID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesStationExist", "i", x);
	}
}

forward DoesStationExist(tpID);
public DoesStationExist(tpID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-stations` WHERE `sID` = %d", tpID);
		mysql_tquery(mysql, ottquery, "LoadStation", "i", tpID);
	    return 1;
	}
	return 0;
}

forward LoadStation(tpID);
public LoadStation(tpID)
{
	new sName[64],urlname[96];
 	cache_get_row(0, 1, sName);
	cache_get_row(0, 2, urlname);
  	XMRInfo[tpID][XMName] = sName;
  	XMRInfo[tpID][XMStation] = urlname;
  	XMRInfo[tpID][XMRExist] = 1;
	return 1;
}





forward LoadRanks();
public LoadRanks()
{
	new ottquery[52];
	for(new x = 1; x < MAX_RANKS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-ranks` WHERE `rID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesRankExist", "i", x);
	}
}

forward DoesRankExist(tpID);
public DoesRankExist(tpID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-ranks` WHERE `rID` = %d", tpID);
		mysql_tquery(mysql, ottquery, "LoadRank", "i", tpID);
	    return 1;
	}
	return 0;
}

forward LoadRank(tpID);
public LoadRank(tpID)
{
	new RName[64];
 	cache_get_row(0, 1, RName);

  	RANKINFO[tpID][RankName] = RName;
  	RANKINFO[tpID][RankExist] = 1;

	return 1;
}



stock GetNextRankID()
{
	for(new x = 1; x < MAX_RANKS; x++)
	{
	    if(RANKINFO[x][RankExist] == 0)
	    {
	        return x;
	    }
	}
	return 1;
}

//new total_vehicles_from_files=0;






forward loadserver();
public loadserver()
{
	ShowPlayerMarkers(0);
	LoadRanks();
	LoadStations();
    SendRconCommand("mapname Scripted By Lean");
   	SetNameTagDrawDistance(20.0);
	SetGameModeText(METROVERSION);
	DisableInteriorEnterExits();
	EnableStuntBonusForAll(0);
	lockedserver = 0;
	LoadDoors();
	return 1;
}

forward maps();
public maps()
{
	CreateDynamicObject(1300,1801.2136231,-1940.0949707,12.9306879,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1300,1794.2426758,-1940.2672119,12.9306879,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(1597,1785.4516602,-1926.3854981,15.0447912,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(1597,1795.3438721,-1925.9678955,15.0447912,0.0000000,0.0000000,270.0000000); //
	CreateDynamicObject(1256,1797.8286133,-1940.8383789,13.2071476,0.0000000,0.0000000,269.9921875); //
	CreateDynamicObject(1231,1799.5804443,-1926.2221680,15.0952606,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(1231,1790.3824463,-1925.5693359,15.1330605,0.0000000,0.0000000,270.0000000); //
	CreateDynamicObject(1231,1781.1400147,-1926.2642822,15.1372604,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(1340,1776.6606445,-1938.7202148,13.5690718,0.0000000,0.0000000,90.0000000); //
	CreateDynamicObject(8843,1803.3835449,-1919.7387695,12.3929596,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(8558,1790.8880615,-1939.2844238,14.0762348,0.0000000,0.0000000,180.0000000); //
	CreateDynamicObject(8843,1790.2398682,-1929.7310791,12.3929596,0.0000000,0.0000000,270.1756592); //
	CreateDynamicObject(8843,1777.4858398,-1932.2276611,12.3929596,0.0000000,0.0000000,181.0000000); //
	CreateDynamicObject(1256,1804.9570312,-1940.8364258,13.2071476,0.0000000,0.0000000,269.9890137); //
	CreateDynamicObject(1256,1790.7608643,-1940.7198486,13.2071476,0.0000000,0.0000000,269.9890137); //
	CreateDynamicObject(4199,1601.7242400,-1618.8313000,14.4264900,0.0000000,0.0000000,179.6449700); //
	CreateDynamicObject(3037,2293.6950700,2497.6210900,-6.3245000,0.0000000,0.0000000,0.0000000); //
	CreateDynamicObject(3037,2293.6945800,2497.6210900,-3.2075000,0.0000000,0.0000000,0.0000000); //
	return 1;
}



forward split(const strsrc[], strdest[][], delimiter);
public split(const strsrc[], strdest[][], delimiter)
{
	new i, li;
	new aNum;
	new len;

	while(i <= strlen(strsrc)){
	    if(strsrc[i]==delimiter || i==strlen(strsrc)){
	        len = strmid(strdest[aNum], strsrc, li, i, 128);
	        strdest[aNum][len] = 0;
	        li = i+1;
	        aNum++;
		}
		i++;
	}

	return 1;
}

/* ------------------------------------------------------------- */


new brokenleg[MAX_PLAYERS] = 0;




#define BODY_PART_TORSO (3)
#define BODY_PART_GROIN (4)
#define BODY_PART_LEFT_ARM (5)
#define BODY_PART_RIGHT_ARM (6)
#define BODY_PART_LEFT_LEG (7)
#define BODY_PART_RIGHT_LEG (8)
#define BODY_PART_HEAD (9)


new drt[MAX_PLAYERS] = -1;
new HPS[MAX_PLAYERS];
new ts[MAX_PLAYERS];






forward resetdmg(playerid);
public resetdmg(playerid)
{
    ddmg[playerid] = 0;
	ts[playerid] = 0;
	dmgAmount[playerid] = 0;
	SetPlayerChatBubble(playerid, "", COLOR_LIGHTRED, 15.0, 3200);
	for(new ID = 0; ID < dmgAmount[playerid]+1; ID++)
	{
		strdel(DamagesL[playerid][ID][dmgString], 0, 128);
	}
	return 1;
}



new bool:RESPAWNME[MAX_PLAYERS];
forward DPDS(playerid);
public DPDS(playerid)
{
	RESPAWNME[playerid] = true;
	KillTimer(drt[playerid]);
	SCM(playerid,COLOR_YELLOW,"-> Time is up, you can now use /respawnme in order to spawn.");
	return 1;
}

forward DPDSR(playerid);
public DPDSR(playerid)
{
	SpawnPlayer(playerid);
	SetCameraBehindPlayer(playerid);
	DM[playerid] = false;
	TogglePlayerControllable(playerid, 1);
	resetdmg(playerid);
	KillTimer(drt[playerid]);
	SetPlayerChatBubble(playerid, "* Respawned.", COLOR_LIGHTRED, 100.0, 3200);
	SetPlayerWeather(playerid, GetWeatherID());
	return 1;
}


#define DEATH_TIMER 15000


forward DPDD(playerid);
public DPDD(playerid)
{
	SCM(playerid, COLOR_YELLOW, "-> You're now dead. You need to wait 15 seconds and then you'll get the ability to /respawnme.");
    SetPlayerHealthEx(playerid, 20);
    SetPlayerChatBubble(playerid, "(( THIS PLAYER IS DEAD. ))", COLOR_LIGHTRED, 10.0, 999999);
    TogglePlayerControllable(playerid, false);
    DM1[playerid] = true;
    DM[playerid] = false;
	respawntimer[playerid] = SetTimerEx("DPDS", DEATH_TIMER, false, "i", playerid);
	ApplyAnimation(playerid, "WUZI", "CS_Dead_Guy", 4.1, 0, 1, 1, 1, 0, 0);
	executed[playerid] = true;
	return 1;
}


forward DPDFINAL( playerid );
public DPDFINAL( playerid )
{
		ClearAnimations(playerid);
		ApplyAnimation(playerid, "WUZI", "CS_Dead_Guy",4.1,0,1,1,1,0);
  		return 1;
}


forward DPD(playerid, issuerid, reason);
public DPD(playerid, issuerid, reason)
{
		if(BWMODE[playerid] == true) return 0;
  		executed[playerid] = false;
        BWMODE[playerid] = true;
        DM[playerid] = true;
		ResetWeapons(playerid);
		ClearAnimations(playerid);
		ApplyAnimation(playerid, "WUZI", "CS_Dead_Guy",4.1,0,1,1,1,0);
		
        new string[128];

		new bill = (PlayerInfo[playerid][pDeaths]);
		format(string,sizeof(string),"EMT: Your medical bill are $%i", bill);
		SCM(playerid, COLOR_DEPARTMENT, string);
		GiveMoney(playerid, (0 - bill));
		GivePropMoney(PROPERTY_BANK, bill);
		SCM(playerid, COLOR_LIGHTRED, "You were brutally wounded, now if a medic or anyone else doesn't save you, you will die.");
		SCM(playerid, COLOR_LIGHTRED, "To accept death type /acceptdeath");
		format(string, sizeof(string), "(( Has been injured %d times. /damages %d for more information. ))",ts[playerid], playerid);
		SCM(playerid, COLOR_LIGHTRED, string);
  		SetPlayerChatBubble(playerid, string, COLOR_LIGHTRED, 20.0, 300000);
		SetPlayerHealthEx(playerid, 20);
		SetTimerEx("Execute", 5000, false, "i", playerid);
		GameTextForPlayer(playerid, "~b~BRUTALLY WOUNDED", 2000, 6);
		KillTimer(drt[playerid]);
		if(dmSent[playerid] == false)
		{
		    WriteDeathMessage(playerid,issuerid, reason);
	    	dmSent[playerid] = true;
		}
		return 1;
}



forward Execute(playerid);
public Execute(playerid)
{
    executed[playerid] = true;
    return 1;
}



forward taserfix(playerid);
public taserfix(playerid)
{
	ClearAnimations(playerid);
	ApplyAnimation(playerid, "PED", "KO_skid_front",4.1,0,1,1,0,0);
	return 1;
}

new HTIMER[MAX_PLAYERS];

forward htimerr(playerid);
public htimerr(playerid)
{
	HTIMER[playerid] = 0;
	KillTimer(HPS[playerid]);
	return 1;
}

new	LEGTIMER[MAX_PLAYERS],
	LEGNOTICE[MAX_PLAYERS];

#define LEGMSG "-> You've been hit in the leg, you're gonna struggle with running and jumping."

forward LEGRESET(playerid);
public LEGRESET(playerid)
{
    brokenleg[playerid] = 0;
    LEGNOTICE[playerid] = 0;
    return 1;
}

#define DIALOG_DMGS 19193


stock MinTime()
{
		new hour,minute,second,string[64];
		gettime(hour,minute,second);
		FixHour(hour);
		hour = shifthour;
		format(string, sizeof(string), "%02d:%02d", minute,second);
		return string;
}

stock GetWName(weaponid)
{
	new weapon[24];
	if(weaponid == 0)
	{
		format(weapon,sizeof(weapon),"Fist");
	}
    GetWeaponName(weaponid, weapon, 24);
    return weapon;
}

enum E_GUNDAMAGE
{
	Float:E_DAMAGE
};

new G_WEAPONDAMAGE[][E_GUNDAMAGE] = {
	// Fists (0)
	{	3.0	},
	// WEAPON_BRASSKNUCKLE (1)
	{	15.0	},
	// WEAPON_GOLFCLUB (2)
	{	15.0	},
	// WEAPON_NITESTICK (3)
	{	20.0	},
	// WEAPON_KNIFE (4)
	{	30.0	},
	// WEAPON_BAT (5)
	{	10.0	},
	// WEAPON_SHOVEL (6)
	{	15.0	},
	// WEAPON_POOLSTICK (7)
	{	10.0	},
	// WEAPON_KATANA (8)
	{	35.0	},
	// WEAPON_CHAINSAW (9)
	{	0.0	},
	// WEAPON_DILDO (10)
	{	0.0	},
	// WEAPON_DILDO2 (11)
	{	0.0	},
	// WEAPON_VIBRATOR (12)
	{	0.0	},
	// WEAPON_VIBRATOR2 (13)
	{	0.0	},
	// WEAPON_FLOWER (14)
	{	0.0	},
	// WEAPON_CANE (15)
	{	7.0	},
	// WEAPON_GRENADE (16)
	{	15.0 },
	// WEAPON_TEARGAS (17)
	{	0.0	},
	// WEAPON_MOLTOV (18)
	{	0.0	},
	{	0.0	},
	{	0.0	},
	{	0.0	},
	// WEAPON_COLT45 (22)
	{	20.0	},
	// WEAPON_SILENCED (23)
	{	40.0	},
	// WEAPON_DEAGLE (24)
	{	45.0	},
	// WEAPON_SHOTGUN (25)
	{	35.0	},
	// WEAPON_SAWEDOFF (26)
	{	0.0	},
	// WEAPON_SHOTGSPA (27)
	{	53.0	},
	// WEAPON_UZI (28)
	{	15.0	},
	// WEAPON_MP5 (29)
	{	28.0	},
	// WEAPON_AK47 (30)
	{	40.0	},
	// WEAPON_M4 (31)
	{	35.0	},
	// WEAPON_TEC9 (32)
	{	15.0	},
	// WEAPON_RIFLE (33)
	{	70.0	},
	// WEAPON_SNIPER (34)
	{	500.0	},
	// WEAPON_ROCKETLAUNCHER (35)
	{	0.0	},
	// WEAPON_HEATSEEKER (36)
	{	0.0	},
	// WEAPON_FLAMETHROWER (37)
	{	0.0	},
	// WEAPON_MINIGUN (38)
	{	0.0	},
	// WEAPON_SATCHEL (39)
	{	0.0	},
	// WEAPON_BOMB (40)
	{	0.0	},
	// WEAPON_SPRAYCAN (41)
	{	0.0	},
	// WEAPON_FIREEXTINGUISHER (42)
	{	0.0	},
	// WEAPON_CAMERA (43)
	{	0.0	},
	{	0.0	},
	{	0.0	},
	// WEAPON_PARACHUTE (46)
	{	0.0	},
	{	0.0	},
	{	0.0	},
	// WEAPON_VEHICLE (49)
	{	10.0},
	{	0.0	},
	{	0.0	},
	{	0.0	},
	// WEAPON_DROWN (53)
	{	0.0	},
	// WEAPON_COLLISION (54)
	{   10.0 }

};
#define TAZER 30
#define RUBBER 31

forward WriteDMGMessage(playerid, issuerid, Float:health, weaponid, Float:armor, bodypart);
public WriteDMGMessage(playerid, issuerid, Float:health, weaponid, Float:armor, bodypart)
{

	if(playerid == INVALID_PLAYER_ID || issuerid == INVALID_PLAYER_ID) return 1;
	if(dmgAmount[playerid] >= MAX_DAMAGES) return 1;
	new tempdmg[128];
	if( health > 0.0)
	{
		armor -= health;
	}
	if(bodypart == TAZER)
	{
		new slot = dmgAmount[playerid];
		DamagesL[playerid][slot][dmgTime] = GetTickCount();
		DamagesL[playerid][slot][dmgIssuerid] = GetName(issuerid);
		format(tempdmg, sizeof(tempdmg), "Tazerd.");
		strmid(DamagesL[playerid][slot][dmgString] , tempdmg, 0, strlen(tempdmg), 128);
		dmgAmount[playerid] ++;
		return 1;
	}
	if(bodypart == RUBBER)
	{
		new slot = dmgAmount[playerid];
		DamagesL[playerid][slot][dmgTime] = GetTickCount();
		DamagesL[playerid][slot][dmgIssuerid] = GetName(issuerid);
		format(tempdmg, sizeof(tempdmg), "Rubberbullet (%s)",GetWName(weaponid));
		strmid(DamagesL[playerid][slot][dmgString] , tempdmg, 0, strlen(tempdmg), 128);
		dmgAmount[playerid] ++;
		return 1;
	}

	if(armor > 0.0)
	{
		new slot = dmgAmount[playerid];
		DamagesL[playerid][slot][dmgTime] = GetTickCount();
		DamagesL[playerid][slot][dmgIssuerid] = GetName(issuerid);
		format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to %s (kevlarhit: 1)", armor, GetWName(weaponid),GetBodyPart(bodypart));
		strmid(DamagesL[playerid][slot][dmgString] , tempdmg, 0, strlen(tempdmg), 128);
		dmgAmount[playerid] ++;
	}
	if(health > 0.0)
	{
		new slot = dmgAmount[playerid];
		DamagesL[playerid][slot][dmgTime] = GetTickCount();
		DamagesL[playerid][slot][dmgIssuerid] = GetName(issuerid);
		format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to %s (kevlarhit: 0)", health, GetWName(weaponid),GetBodyPart(bodypart));
		strmid(DamagesL[playerid][slot][dmgString] , tempdmg, 0, strlen(tempdmg), 128);
		dmgAmount[playerid] ++;
	}
	return 1;
}



forward WriteDeathMessage(playerid, killerid,  weaponid);
public WriteDeathMessage(playerid, killerid,  weaponid)
{


	new
		tmpdmg[128],
 		sslot = deathAmount;

  	format(tmpdmg, sizeof(tmpdmg), "[MURDER] %s killed %s with a %s.", GetICName(killerid), GetICName(playerid), GetWName(weaponid));
	SendSdeathMessage(COLOR_LIGHTRED, tmpdmg);

	format(tmpdmg, sizeof(tmpdmg), "07[MURDER]01 %s killed %s with a %s",GetICName(killerid), GetICName(playerid), GetWName(weaponid));
	IRC_GroupSayEx(tmpdmg);


	DeathL[sslot][deathTime] = GetTickCount();

	format(tmpdmg, sizeof(tmpdmg), "%s murdered %s (%s)", GetName(killerid), GetName(playerid), GetWName(weaponid) );

	strmid(DeathL[sslot][deathString] , tmpdmg, 0, strlen(tmpdmg), 128);

	if(!rpd)
	{
	    new bill = (PlayerInfo[playerid][pDeaths]);
	    GiveMoney(playerid, (0 - bill));
	    GivePropMoney(PROPERTY_BANK, bill);
	}


	if(deathAmount > MAX_DAMAGES)
	{
		for(new ID = 0; ID < MAX_DAMAGES; ID++)
		{
        	strdel(DeathL[ID][deathString], 0, 128 );
		}
		deathAmount = 0;
		IRC_GroupSayEx("04Death list has been cleared due to maximum amounts.");
		SendClientMessageToAll(COLOR_LIGHTRED, "Deathlist has been cleared due to exceeded death amounts (100)");
	}


	deathAmount ++;
	return 1;
}


LEANCMD:(deathlist)
{
	if(deathAmount == 0) return SCM(playerid, COLOR_LIGHTRED,"[ ! ] "COL_WHITE"There has been no deaths since restart or the list has recently been cleared.");

	new DynamicString[3350];
	for(new ID = 0; ID < deathAmount+1; ID++)
	{
 			new LE = strlen(DeathL[ID][deathString]);
	        if( LE > 0)
	        {
				new	interval = GetTickCount() - DeathL[ID][deathTime];
				new Seconds = (interval  / 1000);
				if(Seconds < 300)
				format(DynamicString, sizeof(DynamicString), "%s\n%s %d s ago\n",DynamicString,DeathL[ID][deathString],Seconds);
				ShowPlayerDialog(playerid, 14240, DIALOG_STYLE_LIST, "NOTICE: "COL_LIGHTRED"/cleardeathlist "COL_GREY"in order to clear the list.", DynamicString, "Close", "");
			}
	}
	return 1;
}





LEANCMD:(cleardeathlist)
{
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED

	new string[128];

	format(string,sizeof(string),"AdmCmd: %s has cleared the deathlist.",GetName(playerid));
	SendClientMessageToAll(COLOR_LIGHTRED, string);

	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has cleared the deathlist.",GetName(playerid));
  	IRC_GroupSayEx(string);

	for(new ID = 0; ID < deathAmount+1; ID++)
	{
        strdel(DeathL[ID][deathString], 0, 128 );
	}
	deathAmount = 0;
	return 1;
}


LEANCMD:(damages)
{
	new
	    id,
	    str[MAX_PLAYER_NAME];
	if(sscanf(params,"u",id)) return SCM(playerid,COLOR_LIGHTRED,"USAGE:"COL_WHITE" /damages [playerid/PartOfName]");
 	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
 	format(str,sizeof(str),"%s",GetName(id));
	if(ddmg[id] == 0) return ShowPlayerDialog(playerid,14241,DIALOG_STYLE_LIST,str,"No damages to show...","Close","");
	new DynamicString[3350];
	for(new ID = 0; ID < dmgAmount[id]+1; ID++)
	{
	        new LE = strlen(DamagesL[id][ID][dmgString]);
	        if( LE > 0)
	        {
				new	interval = GetTickCount() - DamagesL[id][ID][dmgTime];
				new Seconds = (interval  / 1000);
	            if(PlayerInfo[playerid][pAdmin] == 0)
	            {
					format(DynamicString, sizeof(DynamicString), "%s\n%s %d s ago\n",DynamicString,DamagesL[id][ID][dmgString],Seconds);
					ShowPlayerDialog(playerid, 14241, DIALOG_STYLE_LIST, str, DynamicString, "Close", "");
				}
				else
				{
					format(DynamicString, sizeof(DynamicString), "%s\n%s -> %s %d s ago\n",DynamicString,DamagesL[id][ID][dmgIssuerid],DamagesL[id][ID][dmgString],Seconds);
					ShowPlayerDialog(playerid, 14241, DIALOG_STYLE_LIST, str, DynamicString, "Close","");
				}
			}
	}
	return 1;
}




stock GetBodyPart(bodypart)
{
	new d[15];
	switch(bodypart)
	{
	    case 3:
	    {
	        d = "TORSO";
	        return d;
		}
  		case 4:
	    {
	        d = "GROIN";
	        return d;
		}
  		case 5:
	    {
	        d = "LEFT ARM";
	        return d;
		}
  		case 6:
	    {
	        d = "RIGHT ARM";
	        return d;
		}
  		case 7:
	    {
	        d = "LEFT LEG";
	        return d;
		}
  		case 8:
	    {
	        d = "RIGHT LEG";
	        return d;
		}
  		case 9:
	    {
	        d = "HEAD";
	        return d;
		}
	}
	return d;
}


forward FreezePlayer(playerid, time);
public FreezePlayer(playerid, time)
{
	TogglePlayerControllable(playerid, false);
	SetTimerEx("Unfreeze",time,false,"i",playerid);
	return 1;
}

new bool:cdead[MAX_PLAYERS];

forward KillPlayerid(playerid, killerid, reason);
public KillPlayerid(playerid, killerid, reason)
{
    SetPlayerHealthEx(playerid, 0.0);
	if(cdead[playerid] == false)
	{
	    cdead[playerid] = true;
		WriteDeathMessage(playerid, killerid,  reason);
	 	PlayerInfo[killerid][pKills]++;
	 	PlayerInfo[playerid][pDeaths]++;
	 	SetPlayerVirtualWorld(playerid, 0);
	    ResetPlayerWeapons(playerid);
	}

	return 1;
}
stock SetPlayerHealthEx(playerid, Float:health)
{
    	SetPlayerHealth(playerid, health);
    

		if (health > MINIMUMHEALTH)
		{
  			SetPlayerSkillLevel(playerid, WEAPONSKILL_PISTOL, 800);
        	SetPlayerSkillLevel(playerid, WEAPONSKILL_PISTOL_SILENCED, 1000);
        	SetPlayerSkillLevel(playerid, WEAPONSKILL_DESERT_EAGLE, 1000);
        	SetPlayerSkillLevel(playerid, WEAPONSKILL_SHOTGUN, 1000);
        	SetPlayerSkillLevel(playerid, WEAPONSKILL_SAWNOFF_SHOTGUN, 1000);
        	SetPlayerSkillLevel(playerid, WEAPONSKILL_SPAS12_SHOTGUN, 1000);
        	SetPlayerSkillLevel(playerid, WEAPONSKILL_MICRO_UZI, 800);
        	SetPlayerSkillLevel(playerid, WEAPONSKILL_MP5, 1000);
        	SetPlayerSkillLevel(playerid, WEAPONSKILL_AK47, 1000);
        	SetPlayerSkillLevel(playerid, WEAPONSKILL_M4, 1000);
			return 1;
		}
		if (health > CRITICALHEALTH && health < MINIMUMHEALTH)
		{
			SetPlayerSkillLevel(playerid, WEAPONSKILL_PISTOL, 650);
 			SetPlayerSkillLevel(playerid, WEAPONSKILL_PISTOL_SILENCED, 650);
  			SetPlayerSkillLevel(playerid, WEAPONSKILL_DESERT_EAGLE, 650);
   			SetPlayerSkillLevel(playerid, WEAPONSKILL_SHOTGUN, 650);
    		SetPlayerSkillLevel(playerid, WEAPONSKILL_SAWNOFF_SHOTGUN, 650);
    		SetPlayerSkillLevel(playerid, WEAPONSKILL_SPAS12_SHOTGUN, 650);
    		SetPlayerSkillLevel(playerid, WEAPONSKILL_MICRO_UZI, 650);
    		SetPlayerSkillLevel(playerid, WEAPONSKILL_MP5, 650);
    		SetPlayerSkillLevel(playerid, WEAPONSKILL_AK47, 650);
    		SetPlayerSkillLevel(playerid, WEAPONSKILL_M4, 650);
			return 1;
		}
		return 1;
}



new
	AC_Info_Shots_Success[MAX_PLAYERS] = 0,
 	AC_Info_Shots_Total[MAX_PLAYERS] = 0;

stock Damage_SetPlayerHealthEx(damagedid, Float:amount)
{
 		SetPlayerHealth(damagedid, amount);

		if(MINIMUMHEALTH > amount && amount > CRITICALHEALTH)
		{
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_PISTOL, 650);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_PISTOL_SILENCED, 650);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_DESERT_EAGLE, 650);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_SHOTGUN, 650);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_SAWNOFF_SHOTGUN, 650);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_SPAS12_SHOTGUN, 650);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_MICRO_UZI, 650);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_MP5, 650);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_AK47, 650);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_M4, 650);
			SendClientMessage(damagedid, COLOR_LIGHTRED, "-> Low health, shooting skills at medium.");
		}

		if(CRITICALHEALTH > amount && amount < MINIMUMHEALTH)
		{
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_PISTOL, 50);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_PISTOL_SILENCED, 50);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_DESERT_EAGLE, 50);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_SHOTGUN, 50);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_SAWNOFF_SHOTGUN, 50);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_SPAS12_SHOTGUN, 50);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_MICRO_UZI, 50);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_MP5, 50);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_AK47, 50);
        	SetPlayerSkillLevel(damagedid, WEAPONSKILL_M4, 50);
			SendClientMessage(damagedid,COLOR_LIGHTRED, "-> Critical health, weapon skill at minimum.");
		}
		
		
		ts[damagedid] ++;
		KillTimer(drt[damagedid]);
		drt[damagedid] = SetTimerEx("resetdmg", 80000, false, "i", damagedid);
        SetTimerEx("Damage_AntiCheat", 400, false, "if", damagedid, amount);
		return 1;
}

forward Damage_AntiCheat(playerid, Float:damage);
public Damage_AntiCheat(playerid, Float:damage)
{
	new Float:fCurrentHealth;
	GetPlayerHealth(playerid, fCurrentHealth);
	
	AC_Info_Shots_Total[playerid] ++;
	if(fCurrentHealth <= damage)
	{
	    AC_Info_Shots_Success[playerid] ++;
	}

}


LEANCMD:(ac)
{
	if(ALEVEL == 0) return ADMIN_UNAUTHORIZED
	new id;
	if(sscanf( params, "u", id )) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /ac [playerid/partofname]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	
	new dString[128];
	format(dString, sizeof(dString), "%s (ID: %d)",GetName(id),id);
	SCM(playerid, COLOR_WHITE, dString);
	new Float:ploss;
	GetPlayerPacketloss(id, ploss);
	format(dString, sizeof(dString), "PacketLoss: %f",ploss);
	SCM(playerid, COLOR_LIGHTRED, dString);

	if(AC_Info_Shots_Total[id] > 0)
	{

		new Float:MaxF;
		new Valued = AC_Info_Shots_Total[id];
		MaxF = float(Valued);
		
		new Float:CurrentF;
		new Value = AC_Info_Shots_Success[id];
		CurrentF = float(Value);
		
		new Float:percentage = (CurrentF/MaxF) * 100;
		
		new fperc = floatround(percentage, floatround_round);

		format(dString, sizeof(dString), "%d shots, %d registered %d%s",AC_Info_Shots_Total[id], AC_Info_Shots_Success[id], fperc,"%%");
		SCM(playerid, COLOR_LIGHTRED, dString);
	}
	else return SCM(playerid, COLOR_LIGHTRED, "ANTI CHEAT: This player have not been shot yet.");
	return 1;

}





public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart)
{
    if(issuerid == INVALID_PLAYER_ID)
    {

   		if(weaponid >= 0 && weaponid < sizeof(G_WEAPONDAMAGE))
		{
	  			new
				  	Float:fCurrentHealth,
					Float:fAdditionalDamage = G_WEAPONDAMAGE[weaponid][E_DAMAGE];

				GetPlayerHealth(playerid, fCurrentHealth);

				if(fAdditionalDamage > 0.0)
				{
						if(fCurrentHealth > fAdditionalDamage)
						{
							Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
							SetPlayerHealthEx(playerid, 0.0);
						}
						fAdditionalDamage = 0.0;
				}
				return 1;
		}
        return 1;
    }
    return 1;
}

#include <LeanInc/DamageSystem>

/*
public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart)
{
    if(issuerid == INVALID_PLAYER_ID)
    {

   		if(weaponid >= 0 && weaponid < sizeof(G_WEAPONDAMAGE))
		{
	  			new
				  	Float:fCurrentHealth,
					Float:fAdditionalDamage = G_WEAPONDAMAGE[weaponid][E_DAMAGE];

				GetPlayerHealth(playerid, fCurrentHealth);

				if(fAdditionalDamage > 0.0)
				{
						if(fCurrentHealth > fAdditionalDamage)
						{
							Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
							SetPlayerHealthEx(playerid, 0.0);
						}
						fAdditionalDamage = 0.0;
				}
				return 1;
		}
        return 1;
    }


	if(AdminDuty[playerid] == true)
	{
	        SetPlayerHealthEx(playerid, 250);
			return 0;
	}



	new
		Float:ad[MAX_PLAYERS],
		Float:a[MAX_PLAYERS];

	if(DM[playerid] == true && executed[playerid] == false)
	{
	    SetPlayerHealthEx(playerid, 20);
	    return 1;
	}

	if(DM[playerid] == true && executed[playerid] == true)
	{
 			DPDD(playerid);
 			return 1;
	}

	if ( DM1[playerid] == true )
	{
		SetPlayerHealthEx(playerid, 20);
		return 1;
	}



	if(Taser[issuerid] == true && weaponid == 23)
	{
		if(IsPlayerNearPlayer(issuerid, playerid, 15.0))
		{
		    SetPlayerDrunkLevel(playerid, 6000);
		    FreezePlayer(playerid, 4000);
			new stringt[MAX_PLAYER_NAME+77];
			ClearAnimations(playerid);
			format(stringt, sizeof(stringt), "SERVER: You hit %s with a tazer!", GetName(playerid));
			SendClientMessage(issuerid, COLOR_YELLOW, stringt);
			format(stringt, sizeof(stringt), "SERVER: You were hit by %s with a tazer!", GetName(issuerid));
			SendClientMessage(playerid, COLOR_YELLOW, stringt);
			LoopingAnim(playerid, "PED", "KO_skid_front",4.1,0,1,1,1,0);
			format(stringt, sizeof(stringt), "* %s was hit by %s' tazer and fell on the ground.", GetICName(playerid), GetICName(issuerid));
			ProxDetector(30.0, playerid, stringt, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
			WriteDMGMessage(playerid,issuerid, 0.0 , 23, 0.0, TAZER);
			return 1;
		}
		else
		{
		    SCM(issuerid, COLOR_YELLOW, "-> Target too far away.");
		    return 1;
		}
	}




	if(Rubber[issuerid] == true)
	{
	    if(weaponid == 25)
	    {
		    SetPlayerDrunkLevel(playerid, 6000);
			ClearAnimations(playerid);
			new string[128];
			format(string, sizeof(string), "SERVER: You hit %s with a rubberbullet!", GetName(playerid));
			SendClientMessage(issuerid, COLOR_YELLOW, string);
			format(string, sizeof(string), "SERVER: You were hit with a rubberbullet by %s", GetName(issuerid));
			SendClientMessage(playerid, COLOR_YELLOW, string);
			format(string, sizeof(string), "* %s was hit by a rubberbullet and falls on the ground.", GetICName(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
			ApplyAnimation(playerid, "SWEET", "Sweet_injuredloop", 4.0, 0, 1, 1, 1, 0);
			SetPlayerDrunkLevel(playerid, 4000);
			WriteDMGMessage(playerid,issuerid, 0.0 , weaponid, 0.0, RUBBER);
			return 1;
		}
	}


	if(weaponid >= 0 && weaponid < sizeof(G_WEAPONDAMAGE))
	{
		a[playerid] = 0.0;
		ad[playerid] = 0.0;
		new Float:fCurrentHealth,
		Float:fCurrentArmour,
		Float:fAdditionalDamage = G_WEAPONDAMAGE[weaponid][E_DAMAGE];
		GetPlayerHealth(playerid, fCurrentHealth);
		GetPlayerArmour(playerid, fCurrentArmour);
		if(fAdditionalDamage < 1.0)
		{
			return 1;
		}

		if(weaponid == WEAPON_SHOTGUN || weaponid == 27)
  		{
  			if(IsPlayerNearPlayer(issuerid, playerid, 15.0))
			{
    			fAdditionalDamage += amount;
			}
		}

		if(weaponid == WEAPON_SPRAYCAN)
		{
		    SetPlayerDrunkLevel(playerid, 3500);
		}

		ddmg[playerid] = 1;
		switch(bodypart)
		{
			case 3: //TORSO 1
			{

				if(fCurrentArmour > 0.0)
				{
					ad[playerid] += fAdditionalDamage;
					if(fCurrentArmour > fAdditionalDamage)
					{
						SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
						fAdditionalDamage = 0.0;
					}
					else
					{
						fAdditionalDamage -= fCurrentArmour;
						SetPlayerArmour(playerid, 0.0);
					}
				}


				// Still damage to take after armour?
				if(fAdditionalDamage > 0.0)
				{
					// Will he survive? :o
					a[playerid] = fAdditionalDamage;
					if(fCurrentHealth > fAdditionalDamage)
					{
						Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - fAdditionalDamage));
					}
					else
					{
	   					if( rpd == true )
	   					{
		  					DPD(playerid, issuerid, weaponid);
	   					}
	   					else
	   					{
							// Dies. Kill.
							KillPlayerid(playerid, issuerid, weaponid);
						}
					}
					fAdditionalDamage = 0.0;
				}
				WriteDMGMessage(playerid,issuerid, a[playerid], weaponid, ad[playerid], bodypart);
				return 1;

			}
			case 4: //GROIN 2
			{
				if(Swat[playerid] == true)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[playerid] = fAdditionalDamage;
						if(fCurrentArmour > fAdditionalDamage)
						{
							SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
							fAdditionalDamage = 0.0;
						}
						else
						{
							SetPlayerArmour(playerid, 0.0);
							fAdditionalDamage -= fCurrentArmour;

						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[playerid] = fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - fAdditionalDamage));

						}
						else
						{
	 						if( rpd == true )
		   					{
			  					DPD(playerid, issuerid, weaponid);
		   					}
		   					else
		   					{
								// Dies. Kill.
								KillPlayerid(playerid, issuerid, weaponid);
							}

						}
						fAdditionalDamage = 0.0;
					}
					WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
					return 1;
				}

				if(fAdditionalDamage > 0.0)
				{
					a[playerid] = fAdditionalDamage;
					if(fCurrentHealth > fAdditionalDamage)
					{
						// Survives, deduct health.
						Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - fAdditionalDamage));
					}
					else
					{
	   					if( rpd == true )
	   					{
		  					DPD(playerid, issuerid, weaponid);
	   					}
	   					else
	   					{
							// Dies. Kill.
							KillPlayerid(playerid, issuerid, weaponid);
						}

					}
					fAdditionalDamage = 0.0;
				}
				WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
				return 1;
			}
			case 5,6: //LEFT ARM / RIGHT ARM
			{
				if(Swat[playerid] == true)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[playerid] = fAdditionalDamage;
						if(fCurrentArmour > fAdditionalDamage)
						{
							SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
							fAdditionalDamage = 0.0;
						}
						else
						{
							SetPlayerArmour(playerid, 0.0);
							fAdditionalDamage -= fCurrentArmour;
						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[playerid] = fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
		   					if( rpd == true )
		   					{
			  					DPD(playerid, issuerid, weaponid);
		   					}
		   					else
		   					{
								// Dies. Kill.
								KillPlayerid(playerid, issuerid, weaponid);
							}
						}
						fAdditionalDamage = 0.0;
					}
					WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
					return 1;

				}

				new rand = random(3);
				switch(rand)
				{
					case 0:
					{
						if(fCurrentArmour > 0.0)
						{
							ad[playerid] = fAdditionalDamage;
							if(fCurrentArmour > fAdditionalDamage)
							{
								SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
								fAdditionalDamage = 0.0;
							}
							else
							{
								SetPlayerArmour(playerid, 0.0);
								fAdditionalDamage -= fCurrentArmour;
							}

						}
						if(fAdditionalDamage > 0.0)
						{
							a[playerid] = fAdditionalDamage;
							if(fCurrentHealth > fAdditionalDamage)
							{
								// Survives, deduct health.
								Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - fAdditionalDamage));
							}
							else
							{
			   					if( rpd == true )
			   					{
				  					DPD(playerid, issuerid, weaponid);
			   					}
			   					else
			   					{
									// Dies. Kill.
									KillPlayerid(playerid, issuerid, weaponid);
								}
							}
							fAdditionalDamage = 0.0;
						}
                        WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
						return 1;
					}
					case 1, 2:
					{
						a[playerid] = fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							Damage_SetPlayerHealthEx(playerid,(fCurrentHealth - fAdditionalDamage));
						}
						else
						{
		   					if( rpd == true )
		   					{
			  					DPD(playerid, issuerid, weaponid);
		   					}
		   					else
		   					{
								// Dies. Kill.
								KillPlayerid(playerid, issuerid, weaponid);
							}
						}
						fAdditionalDamage = 0.0;
					}

				}
                WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
				return 1;
			}

			case 7,8: //LEFT LEG & RIGHTLEG
			{
				new Float:HSD;
				HSD = (fAdditionalDamage * 0.50);
				if(Swat[playerid] == true)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[playerid] = HSD;
						if(fCurrentArmour > HSD)
						{
							SetPlayerArmour(playerid, (fCurrentArmour - HSD));
							HSD = 0.0;
                            WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
                            return 1;
						}
						else
						{
							SetPlayerArmour(playerid, 0.0);
							HSD -= fCurrentArmour;
						}

					}
					if(HSD > 0.0)
					{
						a[playerid] = HSD;
						if(fCurrentHealth > HSD)
						{
							// Survives, deduct health
							Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - HSD));
						}
						else
						{
			   					if( rpd == true )
			   					{
				  					DPD(playerid, issuerid, weaponid);
			   					}
			   					else
			   					{
									// Dies. Kill.
									KillPlayerid(playerid, issuerid, weaponid);
								}
						}
						HSD = 0.0;
					}
					WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
					return 1;

				}

				a[playerid] = HSD;
				if(fCurrentHealth > HSD)
				{
					// Survives, deduct health.
					Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - HSD));
				}
				else
				{
					if( rpd == true )
					{
						DPD(playerid, issuerid, weaponid);
					}
					else
					{
						// Dies. Kill.
						KillPlayerid(playerid, issuerid, weaponid);
					}
				}
				HSD = 0.0;
				brokenleg[playerid] = 1;
				KillTimer(LEGTIMER[playerid]);
				LEGTIMER[playerid] = SetTimerEx("LEGRESET", 120000, false, "i", playerid);
				SendClientMessage(playerid, COLOR_LIGHTRED, LEGMSG);
				WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
				return 1;
			}
			case 9: // HEAD 7
			{

				new rand = random(3);
				switch(rand)
				{
					case 0:
					{

						new Float:HSD, Float:finaldmg;
						HSD = (fAdditionalDamage * 0.50);
						finaldmg = (fAdditionalDamage + HSD);
						a[playerid] = finaldmg;
						if(fCurrentHealth > finaldmg)
						{
							Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - finaldmg));
						}
						else
						{
			   					if( rpd == true )
			   					{
				  					DPD(playerid, issuerid, weaponid);
			   					}
			   					else
			   					{
									// Dies. Kill.
									KillPlayerid(playerid, issuerid, weaponid);
								}
						}
						finaldmg = 0.0;
                        WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
						return 1;
					}
					case 1, 2:
					{
						a[playerid] = fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							Damage_SetPlayerHealthEx(playerid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
 								if( rpd == true )
			   					{
				  					DPD(playerid, issuerid, weaponid);
			   					}
			   					else
			   					{
									// Dies. Kill.
									KillPlayerid(playerid, issuerid, weaponid);
								}
						}
						fAdditionalDamage = 0.0;
                        WriteDMGMessage(playerid,issuerid,a[playerid], weaponid, ad[playerid],  bodypart);
						return 1;
					}

				}

			}

		}
	}
	return 1;
}
*/







/* ------------------------------------------------------------ */




forward IsPlayerNearPlayer(playerid, n_playerid, Float:radius);

IsPlayerNearPlayer(playerid, n_playerid, Float:radius)
{
    new Float:npx, Float:npy, Float:npz;
    GetPlayerPos(n_playerid, npx, npy, npz);
    if(IsSpecing[n_playerid] == true) return false;
    if(IsPlayerInRangeOfPoint(playerid, radius, npx, npy, npz) )
	{
        return true;
    }
	else
	{
        return false;
    }
}








new trace[MAX_PLAYERS];

new isvehspawner[MAX_VEHICLES];



forward KickPublic(playerid);
public KickPublic(playerid) Kick(playerid);

stock KickWithMessage(playerid, color, message[])
{
    SendClientMessage(playerid, color, message);
    SetTimerEx("KickPublic", 1000, 0, "d", playerid); 	//Delay of 1 second before kicking the player so he recieves the message
}

forward CheckForLockedAccs();
public CheckForLockedAccs()
{
	EachPlayer(i)
	{
		if(lockedacc[i] == 1)
		{
			KickWithMessage(i, COLOR_YELLOW, "Server has been unlocked and you have a temporary account, therefore you will be kicked.");
		}
	}
	return 1;
}




forward logged(playerid);
public logged(playerid)
{
	loggedin[playerid] = true;
	return 1;
}



forward SWATduty(playerid);
public SWATduty(playerid)
{
            LEGRESET(playerid);
      		ResetWeapons(playerid);
      		SetPlayerColor(playerid, COLOR_DUTY);
     		SetPlayerHealthEx(playerid, PlayerInfo[playerid][CrashHP]);
      		SetPlayerArmour(playerid, PlayerInfo[playerid][CrashARMOR]);
      		SetPlayerPosEx(playerid,PlayerInfo[playerid][CrashX],PlayerInfo[playerid][CrashY],PlayerInfo[playerid][CrashZ], 1000);
      		SetPlayerInterior(playerid,PlayerInfo[playerid][CrashInt]);
      		SetPlayerVirtualWorld(playerid, PlayerInfo[playerid][CrashWV]);
      		SetPlayerSkin(playerid, PlayerInfo[playerid][CrashSkin]);
      		GiveWeapon(playerid, 3, 1);//nightstick
      		GiveWeapon(playerid, 41, 1500);//spraycan
      		GiveWeapon(playerid, 16, 30); //frag grenade
      		GiveWeapon(playerid, 24, 300);//Desert Eagle
      		GiveWeapon(playerid, 27, 100); //combat shotgun
      		GiveWeapon(playerid, 34, 50);//sniper
      		GiveWeapon(playerid, 29, 500);//mp5
      		GiveWeapon(playerid, 31, 500);//M4
      		ApplyAnimation(playerid, "CARRY", "crry_prtial", 1.0, 0, 0, 0, 0, 0);
      		TogglePlayerControllable(playerid, 1);
      		new string[128];
      		if(PlayerInfo[playerid][CrashSkin] == SWAT_SKIN)
      		{
      			format(string,sizeof(string),"** HQ: SWAT member %s is now ready for orders! (Crashed)!**",GetICName(playerid));
      		}
			if(PlayerInfo[playerid][CrashSkin] == 287)
      		{
      			format(string,sizeof(string),"** HQ: Tactical Deputy member %s is now ready for orders! (Crashed)!**",GetICName(playerid));
      		}
      		SendClientMessageToAll(COLOR_DUTY, string);
      		Duty[playerid] = false;
      		Criminal[playerid] = false;
      		Swat[playerid] = true;
      		PlayerInfo[playerid][CrashType] = 0;
			new wtext[MAX_PLAYER_NAME+16];
			format(wtext, sizeof(wtext), "~w~Crashed, returning to last position!");
			GameTextForPlayer(playerid,wtext,5000,1);
			Law_Duty[playerid] = true;
			return 1;
}

forward COPduty(playerid);
public COPduty(playerid)
{
		    LEGRESET(playerid);
        	ResetWeapons(playerid);
        	TogglePlayerControllable(playerid, 1);
        	SetPlayerColor(playerid, COLOR_DUTY);
     		SetPlayerHealthEx(playerid, PlayerInfo[playerid][CrashHP]);
      		SetPlayerArmour(playerid, PlayerInfo[playerid][CrashARMOR]);
      		SetPlayerPosEx(playerid,PlayerInfo[playerid][CrashX],PlayerInfo[playerid][CrashY],PlayerInfo[playerid][CrashZ], 1000);
      		SetPlayerInterior(playerid,PlayerInfo[playerid][CrashInt]);
      		SetPlayerVirtualWorld(playerid, PlayerInfo[playerid][CrashWV]);
      		SetPlayerSkin(playerid, PlayerInfo[playerid][CrashSkin]);
        	GiveWeapon(playerid, 24, 300);//Desert Eagle
        	GiveWeapon(playerid, 3, 1);//nightstick
        	GiveWeapon(playerid, 41, 99999);//spraycan
        	GiveWeapon(playerid, 25, 100);//shotgun
        	GiveWeapon(playerid, 29, 500);//mp5
        	GiveWeapon(playerid, 31, 500);//M4
        	TogglePlayerControllable(playerid, 1);
        	new string[128], rname = PlayerInfo[playerid][Rank];
        	format(string, sizeof(string), "** HQ: %s %s is now back on Duty! (Crashed!)**",RANKINFO[rname][RankName], GetICName(playerid));
        	SendClientMessageToAll(COLOR_DUTY, string);
        	format(string,sizeof(string), "** HQ: %s is now on Duty! **",GetName(playerid));
        	WriteLog("Duty", string);
        	Criminal[playerid] = false;
        	Swat[playerid] = false;
        	Duty[playerid] = true;
        	Civilian[playerid] = false;
        	PlayerInfo[playerid][CrashType] = 0;
			new wtext[MAX_PLAYER_NAME+16];
			format(wtext, sizeof(wtext), "~w~Crashed, returning to last position!");
			GameTextForPlayer(playerid,wtext,5000,1);
			Law_Duty[playerid] = true;
			return 1;
}

forward CRIMduty(playerid);
public CRIMduty(playerid)
{
	        LEGRESET(playerid);
      		ResetWeapons(playerid);
      		SetPlayerColor(playerid, COLOR_WHITE);
     		SetPlayerHealthEx(playerid, PlayerInfo[playerid][CrashHP]);
      		SetPlayerArmour(playerid, PlayerInfo[playerid][CrashARMOR]);
      		SetPlayerPosEx(playerid,PlayerInfo[playerid][CrashX],PlayerInfo[playerid][CrashY],PlayerInfo[playerid][CrashZ], 1000);
      		SetPlayerInterior(playerid,PlayerInfo[playerid][CrashInt]);
      		SetPlayerVirtualWorld(playerid, PlayerInfo[playerid][CrashWV]);
      		GiveWeapon(playerid, 4, 1); //Knife
      		GiveWeapon(playerid, 25, 1000);//shotgun
      		GiveWeapon(playerid, 24, 1000);//DEAGLE
      		GiveWeapon(playerid, 29, 1000);//MP5
      		GiveWeapon(playerid, 41, 99999);//spraycan
      		GiveWeapon(playerid, 30, 1000); //AK
      		ApplyAnimation(playerid, "CARRY", "crry_prtial", 1.0, 0, 0, 0, 0, 0);
      		SetPlayerSkin(playerid, PlayerInfo[playerid][CrashSkin]);
      		new string[128], rname = PlayerInfo[playerid][Rank];
      		format(string,sizeof(string),"** HQ: %s %s is now back on criminal duty! (Crashed!)**",RANKINFO[rname][RankName], GetICName(playerid));
      		SendClientMessageToAll(COLOR_DUTY,string);
      		Swat[playerid] = false;
      		Duty[playerid] = false;
      		Criminal[playerid] = true;
      		Taser[playerid] = false;
			Rubber[playerid] = false;
      		Civilian[playerid] = false;
      		format(string,sizeof(string),"** HQ: %s is now on criminal duty! **",GetName(playerid));
      		WriteLog("Criminal", string);
      		PlayerInfo[playerid][CrashType] = 0;
			new wtext[MAX_PLAYER_NAME+16];
			format(wtext, sizeof(wtext), "~w~Crashed, returning to last position!");
			GameTextForPlayer(playerid,wtext,5000,1);
      		return 1;
}


forward CIVduty(playerid);
public CIVduty(playerid)
{
      		SetPlayerColor(playerid, COLOR_WHITE);
     		SetPlayerHealthEx(playerid, PlayerInfo[playerid][CrashHP]);
      		SetPlayerArmour(playerid, PlayerInfo[playerid][CrashARMOR]);
      		SetPlayerPosEx(playerid,PlayerInfo[playerid][CrashX],PlayerInfo[playerid][CrashY],PlayerInfo[playerid][CrashZ], 1000);
      		SetPlayerInterior(playerid,PlayerInfo[playerid][CrashInt]);
      		SetPlayerVirtualWorld(playerid, PlayerInfo[playerid][CrashWV]);
      		SetPlayerSkin(playerid, PlayerInfo[playerid][CrashSkin]);
      		PlayerInfo[playerid][CrashType] = 0;
			new wtext[MAX_PLAYER_NAME+16];
			format(wtext, sizeof(wtext), "~w~Crashed, returning to last position!");
			GameTextForPlayer(playerid,wtext,5000,1);
      		Civilian[playerid] = true;
      		return 1;
}
new isspawned[MAX_PLAYERS];

IsPlayerSpawned(playerid)
{
	new statex = GetPlayerState(playerid);
	if(statex != PLAYER_STATE_NONE && statex != PLAYER_STATE_WASTED && statex != PLAYER_STATE_SPAWNED) return true;
	return false;
}




forward FirstSpawn(playerid);
public FirstSpawn(playerid)
{
	SetPlayerPosEx(playerid, -2737.4714,-334.1666,7.1749);
	SetPlayerSkin(playerid, 71);
	return 1;
}



/*

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
        EachPlayer( i)
        {
              	if(spectatorid[i] == playerid && IsSpecing[i] == true)
            	{
	                SetPlayerInterior(i, GetPlayerInterior(playerid));
	                SetPlayerVirtualWorld(i, GetPlayerVirtualWorld(playerid));
            	}
		}

}

*/

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
    EachPlayer(i)
	{
	    if( GetPlayerState(i) == PLAYER_STATE_SPECTATING && spectatorid[i] == playerid )
   		{
   		    SetPlayerInterior(i, newinteriorid);
		}
	}
}



forward LogCMD(logtype[],string[]);
public LogCMD(logtype[],string[])
{
    new File: LogFile = fopen(logtype, io_append);
    new stringformat[128];
    format(stringformat, sizeof(stringformat), "%s\r\n",string);
    fwrite(LogFile, stringformat);
    fclose(LogFile);
    return 1;
}



LEANCMD:(connecttime)
{
    new
		interval,string[128],id;
	if(sscanf(params, "s[128]", params))
	{
	       	interval = GetTickCount() - gPlayerConnectedTime[playerid];
			new Seconds = (interval  / 1000);
			new Minutes = (Seconds / 60);
			format(string, sizeof(string), "[Connected Time] You have been connected for %d minutes.",Minutes);
			SCM(playerid,COLOR_GREY,string);
	}
	else
	{
		if(sscanf(params, "u", id)) return SCM(playerid,COLOR_GREY,"USAGE: /connecttime [partofname/playerid]");
		if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	   	interval = GetTickCount() - gPlayerConnectedTime[id];
		new Seconds = (interval  / 1000);
		new Minutes = (Seconds / 60);
		format(string,sizeof(string),"[Connected Time] 0%d %s has been connected for %d minutes.",id,GetName(id),Minutes);
		SCM(playerid,COLOR_GREY,string);
	}
	return 1;
}






public OnPlayerCommandPerformed(playerid, cmdtext[], success)
{
    gPlayerCommand[playerid] = GetTickCount();
    if(!success)
	{
		SCM(playerid, COLOR_WHITE, "{88c5ff}Error:{ffffff} Sorry, that command does not exist. {88c5ff}/Help {ffffff}to see all available commands!");
	}
	else if(success)
	{
		new hour,minute,second;
		gettime(hour,minute,second);
		FixHour(hour);
	    new string[128+MAX_PLAYER_NAME], logformat[MAX_PLAYER_NAME+19];
	    format(logformat, sizeof(logformat),"Userlogs/%s",GetName(playerid));
	    format(string,sizeof(string),"%s",cmdtext);
        WriteLog(logformat, string);
	}
    return 1;
}


LEANCMD:(devcom)
{
	SCM(playerid, -1, "This future is currently being reworked, please contact Lean through forum pm.");
	return 1;
}


public OnPlayerCommandReceived(playerid, cmdtext[])
{
	if(loggedin[playerid] == false)
	{
		 SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"YOU NEED TO BE LOGGED IN TO PERFORM A COMMAND.");
		 return 0;
	}
	return 1;
}


public OnVehicleDamageStatusUpdate(vehicleid, playerid)
{
	new
		Float:health,
  		engine,
		lights,
		alarm,
		doors,
		bonnet,
		boot,
		objective;
		
    GetVehicleHealth(vehicleid, health);
    if(health < 450)
    {
    	GetVehicleParamsEx(vehicleid,engine,lights,alarm,doors,bonnet,boot,objective);
     	SetVehicleParamsEx(vehicleid,false,false,alarm,doors,bonnet,boot,objective);
     	SCM(playerid, COLOR_LIGHTRED, "NOTICE: "COL_WHITE"Engine is having issues,please start it again.");
	}
 	if(health < 300)
    {
    	GetVehicleParamsEx(vehicleid, engine, lights,alarm,doors,bonnet,boot,objective);
     	SetVehicleParamsEx(vehicleid, false, false, alarm, doors, bonnet,boot,objective);
     	SCM(playerid,COLOR_LIGHTRED, "NOTICE: "COL_WHITE"Engine has taken too much damage, it has broken down.");
     	SetVehicleHealth(vehicleid,300);
	}

    if(GetVehicleModel(vehicleid) == 528  && health > 1000 || GetVehicleModel(vehicleid) == 427 && health > 1000)
    {
    	new panels, tires;
    	GetVehicleDamageStatus(vehicleid, panels, doors, lights, tires);
    	tires = encode_tires(0, 0, 0, 0);
    	UpdateVehicleDamageStatus(vehicleid, panels, doors, lights, tires);
    	RepairVehicle(vehicleid);
    	SetVehicleHealth(vehicleid, health);
    }
    return 1;
}


public SendAdminMessage(color, string[])
{

	EachPlayer(i)
	{
  			if( PlayerInfo[i][pAdmin] >= 1 && loggedin[i] == true || IsPlayerAdmin(i) )
  			{
				SendClientMessage(i, color, string);
			}
	}
	WriteLog("AdmCmd", string);
 	new stringz[128];
	format(stringz, sizeof(stringz), "03[ADMINCMD] 01%s",string);
 	IRC_GroupSayEx(stringz);

}

public SendGroupMessage(playerid,color, string[])
{
			if(PlayerInfo[playerid][GroupID] == 0) return 1;
			EachPlayer(i)
			{
		    	if(PlayerInfo[i][GroupID] == PlayerInfo[playerid][GroupID] && i != playerid)
		    	{
					SCM(i, color, string);
				}
			}
			return 1;
}


forward clearvars(playerid);
public clearvars(playerid)
{
    Isrequested[playerid] = false;
    Law_Duty[playerid] = false;
	AC_Info_Shots_Success[playerid] = 0;
 	AC_Info_Shots_Total[playerid] = 0;
    resetdmg(playerid);
    p_StatsLoaded[playerid] = false;
    readPMs[playerid] = false;
    ClearPhonePvars(playerid);
    listeningR[playerid] = false;
    desyncsts[playerid] = 0;
    animtogg[playerid] = false;
    togamsg[playerid] = false;
    executed[playerid] = false;
    dmSent[playerid] = false;
    ResetWeapons(playerid);
    nospeci[playerid] = false;
    DeletePVar( playerid, "GraffitiCreating" );
    BWMODE[playerid] = false;
    lastcommand[playerid] = false;
    grantbuild[playerid] = false;
    watchtype[playerid] = -1;
    watchingb[playerid] = false;
    isspawned[playerid] = false;
    listening[playerid] = false;
    ddmg[playerid] = 0;
    KillTimer(LEGTIMER[playerid]);
    DETOG[playerid] = false;
	YESSURE[playerid] = false;
    ISREQUESTING[playerid] = false;
    LoadDraws(playerid);
    Criminal[playerid] = false;
    IsSpecing[playerid] = false;
    Swat[playerid] = false;
	cuffed[playerid] = false;
    trace[playerid] = false;
    Civilian[playerid] = true;
    AdminDuty[playerid] = false;
    Duty[playerid] = false;
    PlayerInfo[playerid][HudStyle] = 0;
    PlayerInfo[playerid][pSdeath] = 1;
    Specoff(playerid);
    ison911c[playerid] = false;
    isstarted[playerid] = false;
    clocation[playerid] = false;
    spectatorid[playerid] = 0;
    csituation[playerid] = false;
    loggedin[playerid] = false;
    WORLD[playerid] = 0;
    entering[playerid] = false;
    DEAD[playerid] = false;
    toghud[playerid] = false;
    ResetPVARClothes(playerid);
	return 1;
}

new plrIP[MAX_PLAYERS][16];


forward logincall(playerid);




//-1590.9113,707.9120,-5.2422

stock randomEx(min, max)
{
    //Credits to y_less
    new rand = random(max-min)+min;
    return rand;
}


stock PreloadAnimLib(playerid, animlib[])
{
	ApplyAnimation(playerid,animlib,"null",0.0,0,0,0,0,0);
}

stock PreloadAnims(playerid)
{
	PreloadAnimLib(playerid,"DANCING");
	PreloadAnimLib(playerid,"HEIST9");
	PreloadAnimLib(playerid,"BOMBER");
	PreloadAnimLib(playerid,"RAPPING");
	PreloadAnimLib(playerid,"SHOP");
	PreloadAnimLib(playerid,"BEACH");
	PreloadAnimLib(playerid,"SMOKING");
	PreloadAnimLib(playerid,"FOOD");
	PreloadAnimLib(playerid,"ON_LOOKERS");
	PreloadAnimLib(playerid,"DEALER");
	PreloadAnimLib(playerid,"CRACK");
	PreloadAnimLib(playerid,"CARRY");
	PreloadAnimLib(playerid,"COP_AMBIENT");
	PreloadAnimLib(playerid,"PARK");
	PreloadAnimLib(playerid,"INT_HOUSE");
	PreloadAnimLib(playerid,"INT_OFFICE");
	PreloadAnimLib(playerid,"FOOD" );
	PreloadAnimLib(playerid,"ped" );
	PreloadAnimLib(playerid,"MISC" );
	PreloadAnimLib(playerid,"POLICE" );
	PreloadAnimLib(playerid,"GRAVEYARD" );
	PreloadAnimLib(playerid,"WUZI" );
	PreloadAnimLib(playerid,"SUNBATHE" );
	PreloadAnimLib(playerid,"PLAYIDLES" );
	PreloadAnimLib(playerid,"CAMERA" );
	PreloadAnimLib(playerid,"RIOT" );
	PreloadAnimLib(playerid,"DAM_JUMP" );
	PreloadAnimLib(playerid,"JST_BUISNESS" );
	PreloadAnimLib(playerid,"KISSING" );
	PreloadAnimLib(playerid,"GANGS" );
	PreloadAnimLib(playerid,"GHANDS" );
	PreloadAnimLib(playerid,"BLOWJOBZ" );
	PreloadAnimLib(playerid,"SWEET" );
}




LEANCMD:(toghud)
{
	toghud[playerid] = !toghud[playerid];
  	if(!toghud[playerid])
 	{
 	    SCM(playerid, COLOR_YELLOW, "HUD togged on.");
 	    if(PlayerInfo[playerid][HudStyle] == 1 && !IsPlayerInAnyVehicle(playerid)) return 1;
		UpdatePlayerHud(playerid);
	}
	else
	{
	    SCM(playerid, COLOR_YELLOW, "HUD togged off.");
        UpdatePlayerHud(playerid);
	}
	return 1;
}


#if defined TRAINING_SASD
new Float:RandomSpawns[][] =
{
    {703.0837,-570.8054,54.9242},
    {2004.9008,23.6730,133.6349},
    {1079.8477,131.5731,151.7626}
};

new Float:RandomCam[][] =
{
    {629.1960,-571.6470,21.1255},
    {2330.4058,48.6864,33.1648},
    {1327.0793,271.5415,26.7118}
};



#endif



public OnPlayerConnect(playerid)
{

    Paused[playerid] = false;
    new string[MAX_PLAYER_NAME+256];
   	format(string, sizeof(string), "*** %s has joined the server", GetName(playerid));
   	SendClientMessageToAll(COLOR_GREY, string);
   	GetPlayerIp(playerid, plrIP[playerid], sizeof(plrIP));
	format(string, sizeof(string), "05*** %s has joined the server (%s)",GetName(playerid),plrIP[playerid]);
 	IRC_GroupSayEx(string);
    SetSpawnInfo(playerid, DEFAULT_SKIN, 0, tpInfo[1][tpX], tpInfo[1][tpY], tpInfo[1][tpZ], 271.8273, 0, 0, 0, 0, 0, 0 );
	WORLD[playerid] = 0;
 	SetPlayerVirtualWorld(playerid, 0);
    gPlayerStopWatchTick[playerid] = GetTickCount();
    ClearPhonePvars(playerid);
    RemoveAllClothing(playerid);
	PreloadAnims(playerid);
    gPlayerCommand[playerid] = GetTickCount();
    gPlayerConnectedTime[playerid] = GetTickCount();
    OnConnectMapping(playerid);
    XTP[playerid] = tpInfo[1][tpX], YTP[playerid] = tpInfo[1][tpY], ZTP[playerid] = tpInfo[1][tpZ];
    SetPlayerColor(playerid, COLOR_WHITE);
    mysql_format(mysql, string, sizeof(string), "SELECT `Password`, `ID`, `IP`, `HWID` FROM `seb-users` WHERE `Username` = '%e' LIMIT 1", GetName(playerid));
    mysql_tquery(mysql, string, "OnAccountCheck", "i", playerid);
    TogglePlayerSpectating(playerid, true);
    UpdateTimer[playerid] = SetTimerEx("PlayerUpdate", 1000, true, "i", playerid);
    return 1;
}

new camid[MAX_PLAYERS];
public OnPlayerSpawn(playerid)
{

		if(loggedin[playerid] == false)
	   	{
	   	    new Random = camid[playerid];
            SetPlayerPos(playerid, RandomSpawns[Random][0], RandomSpawns[Random][1], RandomSpawns[Random][2]);
	   	
	   	/*
	        SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You have spawned without logging in.");
	        SetTimerEx("Kicku", 500, false, "i", playerid);
	        return 1;
		*/
	   	}


        SetPlayerTeam(playerid, 1);
        cdead[playerid] = false;
       	ResetWeapons(playerid);
        entercarDEAD[playerid] = false;
		SetPlayerVirtualWorld(playerid, WORLD[playerid]);
        entering[playerid] = false;
		SetPlayerInterior(playerid, 0);
        SetPlayerChatBubble(playerid, "* Spawned", COLOR_PURPLE, 10.0, 500);
		isspawned[playerid] = true;
	   	isstarted[playerid] = false;
  	 	brokenleg[playerid] = false;
	   	SetPlayerHealthEx(playerid, SPAWNHEALTH);
	   	gPlayerStopWatchTick[playerid] = 0;

	   	TogglePlayerControllable(playerid, 1);
	   	SetPlayerColor( playerid, -1 );
	   	SetPlayerSkin(playerid, PlayerInfo[playerid][pSkin]);
	   	SetPlayerPosEx(playerid, tpInfo[1][tpX], tpInfo[1][tpY], tpInfo[1][tpZ] );



	   	if(GetPlayerSkin(playerid) == 0)
	   	{
	   		SetPlayerSkin(playerid, DEFAULT_SKIN);
	   		PlayerInfo[playerid][pSkin] = DEFAULT_SKIN;
	   	}


	   	if(AdminDuty[playerid] == true)
		{
	   		SetPlayerColor(playerid, COLOR_ADMINDUTY);
	   		SetPlayerHealthEx(playerid, 250.0);
		}


		if(IsSpecing[playerid] == true)
	    {

	    	Specoff(playerid);
	    	XTP[playerid] = SpecX[playerid], YTP[playerid] = SpecY[playerid], ZTP[playerid] = SpecZ[playerid];
	        SetPlayerPosEx(playerid,SpecX[playerid],SpecY[playerid],SpecZ[playerid], 1000);
	        SetPlayerInterior(playerid,Inter[playerid]);
	        SetPlayerVirtualWorld(playerid,vWorld[playerid]);
	        IsSpecing[playerid] = false;
	        spectatorid[playerid] = 0;
	        if(Swat[playerid] == true)
	        {
	        	SetPlayerColor(playerid, COLOR_DUTY);
	        	GiveWeapon(playerid, 3, 1);//nightstick
	        	GiveWeapon(playerid, 41, 1500);//spraycan
	        	GiveWeapon(playerid, 16, 30); //frag grenade
	        	GiveWeapon(playerid, 24, 300);//Desert Eagle
	        	GiveWeapon(playerid, 27, 100); //combat shotgun
	        	GiveWeapon(playerid, 34, 50);//sniper
	        	GiveWeapon(playerid, 29, 500);//mp5
	        	GiveWeapon(playerid, 31, 500);//M4
	        	ApplyAnimation(playerid, "CARRY", "crry_prtial", 1.0, 0, 0, 0, 0, 0);
				#if defined TRAINING_METRO
	        	SetPlayerSkin(playerid, SWAT_SKIN);
	        	#endif
	        	#if defined TRAINING_SASD
	        	SetPlayerSkin(playerid, 287);
	        	#endif
	        }
	        if(Duty[playerid] == true)
	        {
	        	SetPlayerColor(playerid, COLOR_DUTY);
	        	GiveWeapon(playerid, 3, 1);//nightstick
	        	GiveWeapon(playerid, 41, 1500);//spraycan
	        	GiveWeapon(playerid, 24, 300);//Desert Eagle
	        	GiveWeapon(playerid, 25, 100);//shotgun
	        	GiveWeapon(playerid, 29, 500);//mp5
	        	GiveWeapon(playerid, 31, 500);//M4
			}
			if(Criminal[playerid] == true)
			{
				SetPlayerColor(playerid, COLOR_WHITE);
	        	GiveWeapon(playerid, 25, 1000);//shotgun
	        	GiveWeapon(playerid, 24, 1000);//DEAGLE
	        	GiveWeapon(playerid, 29, 1000);//MP5
	        	GiveWeapon(playerid, 30, 1000); //AK
			}
	    }
		if(PlayerInfo[playerid][CrashType] >= 1)
	    {
			switch(PlayerInfo[playerid][CrashType])
			{
			    case 1: CIVduty(playerid);

			    case 2: COPduty(playerid);

			    case 3: SWATduty(playerid);

			    case 4: CRIMduty(playerid);
			}
  		}
        #if defined TRAINING_SASD
		if(justspawn[playerid] == true && PlayerInfo[playerid][Rank] == 1)
		{
		    justspawn[playerid] = false;
		    PlayerInfo[playerid][Rank] = 1;
            FirstSpawn(playerid);
		}
		#endif
   		return 1;
}


forward OnAccountCheck(playerid);
public OnAccountCheck(playerid)
{
        TogglePlayerSpectating(playerid, false);
        
        new Random = random( sizeof(RandomSpawns) );
        camid[playerid] = Random;
		SetPlayerPos(playerid, RandomSpawns[Random][0], RandomSpawns[Random][1], RandomSpawns[Random][2]);
	    SetPlayerCameraPos(playerid, RandomSpawns[Random][0], RandomSpawns[Random][1], RandomSpawns[Random][2]);
	    #if defined TRAINING_SASD
	    SetPlayerCameraLookAt(playerid, RandomCam[Random][0], RandomCam[Random][1], RandomCam[Random][2]);
		#endif
		#if defined TRAINING_METRO
		SetPlayerCameraLookAt(playerid, RandomSpawns[Random][0], RandomSpawns[Random][1], RandomSpawns[Random][2]);
		#endif
        
        
	    new rows, fields, oldIP[16];
		cache_get_data(rows, fields, mysql);
		if(rows)
		{
		    cache_get_field_content(0, "IP", oldIP, mysql, 16);
 			new code[60], newcode[60];
 			gpci(playerid, newcode, sizeof(newcode) );
    		cache_get_field_content(0, "HWID", code, mysql, 50);
  			if(strcmp( code, newcode) == 0 && strcmp( oldIP, plrIP[playerid]) == 0)
        	{

			}
			else
			{
   				new string[256];
        		format(string, sizeof(string), "05WARN: %s has connected with a different Hardware ID / IP. (CURR IP:%s - OLD IP: %s)",GetName(playerid),plrIP[playerid], oldIP);
    			IRC_GroupSayEx(string);
  				format(string, sizeof(string), "07OLD HWID: %s - 10NEW HWID: %s",code, newcode);
				IRC_GroupSayEx(string);
				format(string, sizeof(string),"WARN: %s has connected with a different hardware ID / IP. (CURR IP:%s - OLD IP:%s)",GetName(playerid),plrIP[playerid], oldIP);
				SendAdminMessage(COLOR_LIGHTRED, string);
			}

			cache_get_field_content(0, "Password", PlayerInfo[playerid][pPass], mysql, 129);
			PlayerInfo[playerid][userid] = cache_get_row_int(0, 0, mysql);
			#if defined TRAINING_SASD
	        ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD,""COL_WHITE"Welcome to Sheriff's Department Training Server",""COL_WHITE"\nThis server has been developed by "COL_LIGHTRED"Lean\n\n"COL_WHITE"Type your password below to log in!","Login","Quit");
	        #endif
	        #if defined TRAINING_METRO
	        ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD, "Welcome to LSPD "METROVERSION"",
																			"This server is being run by Lean\nReport any bugs using /devcom or contact Lean.\n\n\tEnter Your Password:","Login","Quit");
	        #endif
		}
		else
		{
		    TogglePlayerSpectating(playerid, 1);
		    #if defined TRAINING_SASD
	        ShowDialog(playerid, Show:DIALOG_ACCOUNT, DIALOG_STYLE_MSGBOX, ""COL_WHITE"Welcome to the Sheriff's Department Training Server "METROVERSION"",""COL_RED"You do not have an account registred to play on this server.\n\n{FFFFFF}Do you want to request for an account to be made right now?","Yes Please.","No, kick me.");
			#endif
			#if defined TRAINING_METRO
			ShowDialog(playerid, Show:DIALOG_ACCOUNT, DIALOG_STYLE_MSGBOX,""COL_WHITE""METROVERSION"",""COL_RED"You do not have an account registred to play on this server.\n\n{FFFFFF}Do you want to request for an account to be made right now?","Yes Please.","No, kick me.");
			#endif
		}
		return 1;
	}



Dialog:DIALOG_ACCOUNT(playerid, response, listitem, inputtext[])
{
		{
		    if(response)
		    {
				#if defined TRAINING_SASD
				new string[128];
				format(string,sizeof(string),"USER %s is requesting an account for Sheriff's Departement Training Server!",GetName(playerid));
				SendAdminMessage(COLOR_YELLOW, string);
				format(string,sizeof(string),"You can choose to give this user a permanent account by /yes %d or temporary /tempyes %d!",playerid,playerid,playerid);
				SendAdminMessage(COLOR_YELLOW,string);
				SCM(playerid,COLOR_LIGHTRED,"SERVER: "COL_WHITE"Request sent to all online Administrators.");
				ISREQUESTING[playerid] = true;
				REQUESTTIMER[playerid] = SetTimerEx("Kicku", 30000, false, "i", playerid);
		        #endif
		        #if defined TRAINING_METRO
				new string[128];
				format(string,sizeof(string),"USER %s is requesting an account for SWAT Training Server!",GetName(playerid));
				SendAdminMessage(COLOR_YELLOW, string);
				format(string,sizeof(string),"You can choose to give this user a permanent account by /yes %d or temporary /tempyes %d!",playerid,playerid,playerid);
				SendAdminMessage(COLOR_YELLOW,string);
				SCM(playerid,COLOR_LIGHTRED,"SERVER: "COL_WHITE"Request sent to all online Administrators.");
				ISREQUESTING[playerid] = true;
				REQUESTTIMER[playerid] = SetTimerEx("Kicku", 30000, false, "i", playerid);
				#endif
			}
			else
			{
			    SCM(playerid,COLOR_YELLOW,"SERVER: You have choose not to request an account. Have a nice day.");
			    SetTimerEx("Kicku", 500, false, "i", playerid); //Waits a half second before kicking.
			    return 1;
			}
		}
		return 1;
}
		
Dialog:ACCOUNTNEWPASSWORD(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(sscanf(inputtext, "s[128]", inputtext)) return ShowDialog(playerid, Show:ACCOUNTNEWPASSWORD, DIALOG_STYLE_INPUT, "Security Question:","ERROR: Wrong input! \n"SECRET_QUESTION"\n\n\nYou have 30 seconds to answer.","Enter","Cancel");
 		if(!strcmp(inputtext, SECRET_WORD, false))
  		{
    		KillTimer(REQUESTTIMER[playerid]);
      		GameTextForPlayer(playerid, "~g~ Correct!", 3000, 5);
			new tmpString[128], tpDialog[1000];

			for(new x = 1; x < MAX_RANKS; x++)
			{
			    if(RANKINFO[x][RankExist] == 1)
			    {
			        format(tmpString, sizeof(tmpString), "%s (%d)\n", RANKINFO[x][RankName], x);
			        strcat(tpDialog, tmpString);
			    }
			}

			ShowDialog(playerid, Show:RankSelect, DIALOG_STYLE_LIST, "Select the rank for your account.", tpDialog, "Submit", "Cancel");
			SCM(playerid, COLOR_YELLOW, "Note: Admin level & groups are set manually by admins.");
			return 1;


		}
		else return ShowDialog(playerid, Show:ACCOUNTNEWPASSWORD,DIALOG_STYLE_INPUT,"Security Question:","ERROR: Wrong Password \n"SECRET_QUESTION"\n\nYou have 30 seconds to answer.","Enter","Cancel");
	}
	else return SetTimerEx("Kicku", 1000, false, "i", playerid);
}



Dialog:RankSelect(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            selectedrankid[playerid] = listitem+1;
			new string[128];
            format(string,sizeof(string),"Selected Rank: %s",RANKINFO[selectedrankid[playerid]][RankName]);
            ShowDialog(playerid, Show:RankConfirm, DIALOG_STYLE_MSGBOX, string, "Are you sure this is your SASD rank?\n selecting a rank you dont actually have may result in a ban.", "I am Sure", "Let me choose again");
        }
	return 1;
}
Dialog:RankConfirm(playerid, response, listitem, inputtext[])
{
	new string[128];
	format(string, sizeof(string), "WARNING: %s has made an account for himself with the rank %s. Raptor",GetName(playerid),RANKINFO[selectedrankid[playerid]][RankName]);
    SendAdminMessage(COLOR_YELLOW, string);
    PlayerInfo[playerid][Rank] = selectedrankid[playerid];
	new leanquery[64];
 	mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-users`");
	mysql_tquery(mysql, leanquery, "OnSelfCreate", "d", playerid);

}


forward OnSelfCreate(id);
public OnSelfCreate(id)
{
		new ottquery[300+MAX_PLAYER_NAME];
		new hashpass[129];
		WP_Hash(hashpass, sizeof(hashpass),"changeit");

		mysql_format(mysql, ottquery, sizeof(ottquery), "INSERT INTO `seb-users` (`Username`, `Password`, `Skin`, `Rank`) VALUES ('%s', '%s', '%d', '%d')", GetName(id), hashpass, DEFAULT_SKIN, selectedrankid[id]);
	    mysql_tquery(mysql, ottquery, "OnAccountApproval", "i", id);


		KillTimer(REQUESTTIMER[id]);
		justspawn[id] = true;
		new zstring[128];
		format(zstring,sizeof(zstring),"AdmWarn: %s made their own account with the rank %s", GetName(id), GetName(id), RANKINFO[selectedrankid[id]][RankName]);
		WriteLog("AccountCreation", zstring);
		SCM(id, COLOR_LIGHTRED,"NOTICE: "COL_WHITE"An account has succefully been created with the defaul password "COL_LIGHTRED": changeit");
		SCM(id, COLOR_LIGHTRED,"INFO: "COL_WHITE"/help for available commands.");
		SCM(id, COLOR_GREY, "");
		SCM(id, COLOR_GREY, "");
		SCM(id, COLOR_GREY, "");
		SCM(id, COLOR_YELLOW, "This server has been coded/developed by "COL_WHITE"Lean.");
		SCM(id, COLOR_YELLOW, "If any bugs are found, please use /bugreport or send me (Lean) a forum message.");
		logincall(id);
		SetTempAcc(id, 0);
		return 1;
}




public logincall(playerid)
{
    TogglePlayerSpectating(playerid, 0);
	SpawnPlayer(playerid);
	loggedin[playerid] = true;
	disableTP[playerid] = true;
	SetTimerEx("EnableTPCheck", 3000, false, "i", playerid);
	return 1;
}



public OnPlayerDisconnect(playerid, reason)
{
    Paused[playerid] = false;
    KillTimer(UpdateTimer[playerid]);


	// GRAFFITI
	Ex_OnPlayerDisconnect(playerid);


	/* PHONE PVARS ! */
    if(E_OnPhone[playerid] == PLAYER_TALKING || E_Talking[playerid] == PLAYER_ON_PHONE)
    {
        if(E_TalkingTo[playerid] != INVALID_PLAYER_ID)
        {
			SCM(E_TalkingTo[playerid], COLOR_GREY, "The other line died...");
			ClearPhonePvars(E_TalkingTo[playerid]);
		}
		E_OnPhone[playerid] = PLAYER_NOT_TALKING;
		E_BeingCalled[playerid] = PLAYER_NOT_BEING_CALLED;
		E_Talking[playerid] = PLAYER_OFF_PHONE;
		E_TalkingTo[playerid] = INVALID_PLAYER_ID;
		E_PhoneOn[playerid] = PLAYER_PHONE_ON;
		ison911c[playerid] = false;
		clocation[playerid] = false;
		csituation[playerid] = false;
		KillTimer(E_PhoneTimer[playerid]);
    }
    
    /* PHONE PVARS ! */

	DeletePVar(playerid, "MaskID");
	KillTimer(SyncTimer[playerid]);
	KillTimer(REQUESTTIMER[playerid]);
    ISREQUESTING[playerid] = false;
    PlayerTextDrawDestroy(playerid, textdraw[playerid]);
 	new string[64];
    switch(reason)
    {
        // TIMEOUT
        case 0:
		{
			format(string, sizeof(string), "** %s (Timeout)", GetICName(playerid));
			if(isspawned[playerid] == 1 && loggedin[playerid] == true)
			{
			            new Float:CPOS[3];
			            new Float:HP[2];
			            GetPlayerHealth(playerid, HP[0]);
			            GetPlayerArmour(playerid, HP[1]);
			            GetPlayerPos(playerid,CPOS[0],CPOS[1],CPOS[2]);
					   	PlayerInfo[playerid][CrashX] = CPOS[0];
					    PlayerInfo[playerid][CrashY] = CPOS[1];
					    PlayerInfo[playerid][CrashZ] = CPOS[2];
					    PlayerInfo[playerid][CrashInt] = GetPlayerInterior(playerid);
					    PlayerInfo[playerid][CrashWV] = GetPlayerVirtualWorld(playerid);
					    PlayerInfo[playerid][CrashHP] = HP[0];
					    PlayerInfo[playerid][CrashARMOR] = HP[1];
					    PlayerInfo[playerid][CrashSkin] = GetPlayerSkin(playerid);
					    if(Civilian[playerid] == true) { PlayerInfo[playerid][CrashType] = 1; }
					    if(Duty[playerid] == true) { PlayerInfo[playerid][CrashType] = 2; }
					    if(Swat[playerid] == true) { PlayerInfo[playerid][CrashType] = 3; }
					    if(Criminal[playerid] == true) { PlayerInfo[playerid][CrashType] = 4; }

			}
		}
		// QUIT
        case 1: format(string, sizeof(string), "** %s (Quit)", GetICName(playerid));
        // KICKED
        case 2: format(string, sizeof(string), "** %s (Kicked)", GetICName(playerid));
    }
	new stringz[128];
	format(stringz, sizeof(stringz), "05 %s",string);
 	IRC_GroupSayEx(stringz);
	PlayerInfo[playerid][IP] = plrIP[playerid];
	SendClientMessageToAll(COLOR_WHITE, string);

    if(loggedin[playerid] == true)
    {
        if(IsTempAccount(playerid))
        {
            SetTempAcc(playerid, 0);
            return 1;
        }
    
        if(p_StatsLoaded[playerid] == false && !IsTempAccount(playerid))
        {
            new dString[128];
            format(dString, sizeof(dString),"Player %s did not have their stats loaded but the server tried to save the current stats anyways.",GetName(playerid));
            SendLAMessage(COLOR_LIGHTRED, dString);
            WriteLog("AccountSys", dString);
            format(stringz, sizeof(stringz), "04%s",dString);
            IRC_GroupSayEx(stringz);
            clearvars(playerid);
            return 1;
        }
   		new code[50];
		gpci(playerid, code, sizeof(code));
		PlayerInfo[playerid][HWID] = code;
        new ottquery[2500], tmpquery[500];
        format(tmpquery, sizeof(tmpquery), "UPDATE `seb-users` SET `Cash` = '%d', `Admin` = '%d'", PlayerInfo[playerid][pCash], PlayerInfo[playerid][pAdmin]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `Kills` = '%d', `Deaths` = '%d', `DeathLogs` = '%d', `Skin` = '%d', `Logs` = '%d'", PlayerInfo[playerid][pKills], PlayerInfo[playerid][pDeaths], PlayerInfo[playerid][pSdeath], PlayerInfo[playerid][pSkin], PlayerInfo[playerid][pLogs]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `Banned` = '%d', `Crim` = '%d', `Pw` = '%d', `Exp` = '%d', `Freq` = '%d'", PlayerInfo[playerid][pBanned], PlayerInfo[playerid][pCrim], PlayerInfo[playerid][pPw], PlayerInfo[playerid][Exp], PlayerInfo[playerid][Freq]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `Rank` = '%d', `HudStyle` = '%d', `IP` = '%s', `BannedR` = '%s', `RankCrim` = '%d', `GroupID` = '%d', `fStyle` = '%d'", PlayerInfo[playerid][Rank], PlayerInfo[playerid][HudStyle], PlayerInfo[playerid][IP], PlayerInfo[playerid][pBannedr], PlayerInfo[playerid][RankCrim], PlayerInfo[playerid][GroupID], PlayerInfo[playerid][fStyle]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `hOn` = '%d', `CrashX` = '%f', `CrashY` = '%f', `CrashZ` = '%f', `CrashInt` = '%d', `CrashWV` = '%d'", PlayerInfo[playerid][hOn], PlayerInfo[playerid][CrashX], PlayerInfo[playerid][CrashY], PlayerInfo[playerid][CrashZ], PlayerInfo[playerid][CrashInt], PlayerInfo[playerid][CrashWV]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `CrashType` = '%d', `CrashHP` = '%f', `CrashArmor` = '%f', `CrashSkin` = '%d'", PlayerInfo[playerid][CrashType], PlayerInfo[playerid][CrashHP], PlayerInfo[playerid][CrashARMOR], PlayerInfo[playerid][CrashSkin]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `Level` = '%d', `LevelUp` = '%d', `LevelUpNeeded` = '%d', `fChat` = '%d', `HWID` = '%s', `CHWrns` = '%d' WHERE `Username` = '%s'", PlayerInfo[playerid][Level], PlayerInfo[playerid][LevelUp], PlayerInfo[playerid][LevelUpNeeded],PlayerInfo[playerid][fChat],code, PlayerInfo[playerid][CheatWarnings], GetName(playerid));
        strcat(ottquery, tmpquery);

    	mysql_tquery(mysql, ottquery, "", "");
    	p_StatsLoaded[playerid] = false;
	    PlayerInfo[playerid][pSdeath] = 1;
	    PlayerInfo[playerid][CrashType] = 0;
	    PlayerInfo[playerid][pAdmin] = 0;
	    PlayerInfo[playerid][pKills] = 0;
	    PlayerInfo[playerid][pDeaths] = 0;
	    PlayerInfo[playerid][pSkin] = 0;
	    PlayerInfo[playerid][pBanned] = 0;
	    PlayerInfo[playerid][pCrim] = 0;
	    PlayerInfo[playerid][pPw] = 0;
	    PlayerInfo[playerid][Exp] = 0;
	    PlayerInfo[playerid][Freq] = 0;
	    PlayerInfo[playerid][Rank] = 0;
	    PlayerInfo[playerid][RankCrim] = 0;
	    PlayerInfo[playerid][GroupID] = 0;
	    PlayerInfo[playerid][hOn] = 0;
	    PlayerInfo[playerid][pLogs] = 0;
	    PlayerInfo[playerid][Level] = 0;
	    PlayerInfo[playerid][LevelUp] = 0;
	    
        SavePlayerClothes(playerid);

		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `LoggedIn` = '0' WHERE `ID` = '%d'",PlayerInfo[playerid][userid]);
		mysql_tquery(mysql, ottquery, "", "");
		
		new
			interval = GetTickCount() - gPlayerConnectedTime[playerid],
	 		Seconds = (interval  / 1000),
	 		Minutes = (Seconds / 60);
		
		new year, month, day, hour, minute, second;
		getdate(year, month, day), gettime(hour, minute, second);
		
		if(Minutes > 0)
		{
			format(string, sizeof(string), "[%02d/%s/%d - %02d:%02d:%02d] On for: %d minutes", day, GetMonthFix(month), year, hour, minute, second, Minutes);
		}
		else
		{
		    format(string, sizeof(string), "[%02d/%s/%d - %02d:%02d:%02d] On for: %d seconds", day, GetMonthFix(month), year, hour, minute, second, Seconds);
		}
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `LastOn` = '%s' WHERE `ID` = '%d'", string, PlayerInfo[playerid][userid]);
		mysql_tquery(mysql, ottquery, "", "");
		
		PlayerInfo[playerid][userid] = 0;
    }

    WriteLog("OnDisconnect", string);

	EachPlayer(i)
        {
            if(spectatorid[i] == playerid && IsSpecing[i] == true)
            {
                TogglePlayerSpectating(i,false);
            }
        }

    clearvars(playerid);
    return 1;
}



forward syncfixe(playerid);
public syncfixe(playerid)
{
	isstarted[playerid] = true;
	return 1;
}

forward DesyncStart(playerid);
public DesyncStart(playerid)
{
	SyncTimer[playerid] = SetTimerEx("DesyncCheck", 1000,true,"i",playerid);
	SetTimerEx("syncfixe", 6000, false, "i", playerid);
	return 1;
}





public OnPlayerDeath(playerid, killerid, reason)
{


	ResetPlayerWeapons(playerid);
    isstarted[playerid] = false;
    SetPlayerVirtualWorld(playerid, 0);
    SetPlayerColor(playerid, COLOR_WHITE);
    Taser[playerid] = false;
    ison911c[playerid] = false;
    clocation[playerid] = false;
	cuffed[playerid] = false;
    csituation[playerid] = false;
    Rubber[playerid] = false;
    Criminal[playerid] = false;
    Swat[playerid] = false;
    Duty[playerid] = false;
    Civilian[playerid] = true;
    if(killerid != INVALID_PLAYER_ID)
    {
        WriteDeathMessage(playerid, killerid,  reason);
        DEAD[playerid] = true;
    	PlayerInfo[killerid][pKills]++;
    	PlayerInfo[playerid][pDeaths]++;
    	SetPlayerVirtualWorld(playerid, 0);

	}
	if(killerid == INVALID_PLAYER_ID && cdead[playerid] == false)
	{
        if(!IsPlayerSpawned(playerid)) return 1;
	    new string[128];
		format(string, sizeof(string), "[DEATH] %s died %s.", GetICName(playerid), GetWName(reason));
    	SendSdeathMessage(COLOR_LIGHTRED, string);
    	format(string, sizeof(string), "07[DEATH]01 %s died %s", GetICName(playerid), GetWName(reason));
     	IRC_GroupSayEx(string);
	}

	EachPlayer(i)
 	{
  		if(spectatorid[i] == playerid)
  		{
    		TogglePlayerSpectating(i, false);
  		}
  	}

    return 1;
}


stock SendTextMessage(playerid, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s", _Line );
            }
        }
        #endif
        ////////////
        ProxDetector(20.0, playerid, _Line, COLOR_FADE1,COLOR_FADE2,COLOR_FADE3,COLOR_FADE4,COLOR_FADE5);
      //  SendClientMessage(playerid, colr, _Line );
        ///////////
        _i@Index++;
    }
}

LEANCMD:(gtalk)
{
    ApplyAnimation(playerid, "GANGS", "prtial_gngtlkA",4.1, 0, 0, 0, 0, 0);
	SendClientMessage(playerid,-1,"Now performing: prtial_gngtlkA");
	return 1;
}



LEANCMD:(gtalk1)
{
    ApplyAnimation(playerid, "GANGS", "prtial_gngtlkB",4.1,0,1,1,0,0);
	SendClientMessage(playerid,-1,"Now performing: prtial_gngtlkB");
	return 1;
}


LEANCMD:(gtalk2)
{
    ApplyAnimation(playerid, "GANGS", "prtial_gngtlkC",4.1,0,1,1,0,0);
	SendClientMessage(playerid,-1,"Now performing: prtial_gngtlkC");
	return 1;
}
LEANCMD:(gtalk3)
{
    ApplyAnimation(playerid, "GANGS", "prtial_gngtlkD",4.1,0,1,1,0,0);
	SendClientMessage(playerid,-1,"Now performing: prtial_gngtlkD");
	return 1;
}

LEANCMD:(gtalk4)
{
    ApplyAnimation(playerid, "GANGS", "prtial_gngtlkE",4.1,0,1,1,0,0);
	SendClientMessage(playerid,-1,"Now performing: prtial_gngtlkE");
	return 1;
}

LEANCMD:(gtalk5)
{
    ApplyAnimation(playerid, "GANGS", "prtial_gngtlkF",4.1,0,1,1,0,0);
	SendClientMessage(playerid,-1,"Now performing: prtial_gngtlkF");
	return 1;
}

LEANCMD:(gtalk6)
{
    ApplyAnimation(playerid, "GANGS", "prtial_gngtlkG",4.1,0,1,1,0,0);
	SendClientMessage(playerid,-1,"Now performing: prtial_gngtlkG");
	return 1;
}

LEANCMD:(gtalk7)
{
    ApplyAnimation(playerid, "GANGS", "prtial_gngtlkH",4.1,0,1,1,0,0);
	SendClientMessage(playerid,-1,"Now performing: prtial_gngtlkH");
	return 1;
}


forward ApplyChatAnim(playerid, text[]);
public ApplyChatAnim(playerid, text[])
{
	if(BWMODE[playerid] == true) return 1;
	if(animtogg[playerid]) return 1;
	animtogg[playerid] = true;
	new Length = strlen(text);
	new aTime = Length*100;
	switch(PlayerInfo[playerid][fChat])
	{
	    case 0:
	    {
    		ApplyAnimation(playerid, "GANGS", "prtial_gngtlkA", 4.1, 1, 1, 1, 1, 1, 0);
		}
  		case 1:
	    {
    		ApplyAnimation(playerid, "GANGS", "prtial_gngtlkC", 4.1, 1, 1, 1, 1, 1, 0);
		}

  		case 2:
	    {
    		ApplyAnimation(playerid, "GANGS", "prtial_gngtlkD", 4.1, 1, 1, 1, 1, 1, 0);
		}
  		case 3:
	    {
    		ApplyAnimation(playerid, "GANGS", "prtial_gngtlkB", 4.1, 1, 1, 1, 1, 1, 0);
		}
		case 4:
	    {
    		ApplyAnimation(playerid, "GANGS", "prtial_gngtlkE", 4.1, 1, 1, 1, 1, 1, 0);
		}
  		case 5:
	    {
    		ApplyAnimation(playerid, "GANGS", "prtial_gngtlkF", 4.1, 1, 1, 1, 1, 1, 0);
		}
  		case 6:
	    {
    		ApplyAnimation(playerid, "GANGS", "prtial_gngtlkG", 4.1, 1, 1, 1, 1, 1, 0);
		}
  		case 7:
	    {
    		ApplyAnimation(playerid, "GANGS", "prtial_gngtlkH", 4.1, 1, 1, 1, 1, 1, 0);
		}
	}
	SetTimerEx( "ClearAnim", aTime+1000, false, "i", playerid );
    return 1;
}

forward ClearAnim(playerid);
public ClearAnim(playerid)
{
    animtogg[playerid] = false;
	ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.1, 0, 0, 0, 0, 0, 1);
	ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.1, 0, 0, 0, 0, 0, 1);
	return 1;
}



LEANCMD:(setstyle)
{
	new styleid;
	if(sscanf(params, "d",styleid)) return SCM(playerid, COLOR_LIGHTRED, "1 - Chat Style | 2 - Fighting Style | 3 - Hud Style");

	switch(styleid)
	{
		case 1:
		{
			new chatstyle;
			if(sscanf(params, "dd",styleid,chatstyle))
			{
				SCM(playerid, COLOR_GREEN, "USAGE: /setstyle 1 [StyleID]");
				SCM(playerid, COLOR_WHITE, "Chat Styles: 0 1 2");
				SCM(playerid, COLOR_WHITE, "Chat Styles: 3 4");
				SCM(playerid, COLOR_WHITE, "Chat Styles: 5 6 7");
				return 1;
			}
			if(chatstyle < 0 || chatstyle > 7) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"Only ID's between 0-7.");
			PlayerInfo[playerid][fChat] = chatstyle;
			SCM(playerid, COLOR_LIGHTRED, "You have changed your chat style!");
		}
		case 2:
		{
			new fightstyle;
			if(sscanf(params, "dd",styleid,fightstyle))
			{
				SCM(playerid, COLOR_GREEN, "USAGE: /setstyle 2 [FightID]");
				SCM(playerid, COLOR_WHITE, "Fight Styles: 0 - Normal");
				SCM(playerid, COLOR_WHITE, "Fight Styles: 1 - Boxing");
				SCM(playerid, COLOR_WHITE, "Fight Styles: 2 - KungFu");
				return 1;
			}
			if(fightstyle < 0 || fightstyle > 2) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"Only ID's between 0-2.");
			switch(fightstyle)
			{
   				case 0:
        	    {
                    SetPlayerFightingStyle(playerid, FIGHT_STYLE_NORMAL);
                    PlayerInfo[playerid][fStyle] = FIGHT_STYLE_NORMAL;
        	        SendClientMessage(playerid, COLOR_GREY, "Your Fighting Style have been changed to Normal fighting.");
        	    }
        	    case 1:
        	    {
                    SetPlayerFightingStyle(playerid, FIGHT_STYLE_BOXING);
                    PlayerInfo[playerid][fStyle] = FIGHT_STYLE_BOXING;
        	        SendClientMessage(playerid, COLOR_GREY, "Your Fighting Style have been changed to Boxing.");
        	    }
        	    case 2:
        	    {
                    SetPlayerFightingStyle(playerid, FIGHT_STYLE_KUNGFU);
                    PlayerInfo[playerid][fStyle] = FIGHT_STYLE_KUNGFU;
        	        SendClientMessage(playerid, COLOR_GREY, "Your Fighting Style have been changed to KungFu.");
        	    }
			}
		}
		case 3:
		{
			new chatstyle;
			if(sscanf(params, "dd", styleid, chatstyle))
			{
				SCM(playerid, COLOR_GREEN, "USAGE: /setstyle 3 [hud id]");
				SCM(playerid, COLOR_WHITE, "HUD Styles: 0 1");
				return 1;
			}
			if(chatstyle < 0 || chatstyle > 1) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"Only ID's between 0-1.");
			new string[64];
			format(string, sizeof(string), "Your HUD Style is now %d!",chatstyle);
			SCM(playerid, COLOR_YELLOW, string);
			toghud[playerid] = true;
			if(chatstyle == 1)
			{
			    SCM(playerid, COLOR_YELLOW, "This HUD can only be viewed while in a vehicle!");
			}

			for(new i = 0; i < MAX_HUDS; i++)
			{
					PlayerTextDrawHide(playerid, TDEditor_PTD[playerid][i]);
					PlayerTextDrawHide(playerid, TDEditor_TWO[playerid][i]);
			}

   			PlayerInfo[playerid][HudStyle] = chatstyle;
			SCM(playerid, COLOR_YELLOW, "/toghud to turn it back on!");
			UpdatePlayerHud(playerid);
		}
	}
	return 1;
}





public OnPlayerText(playerid, text[])
{
    gPlayerCommand[playerid] = GetTickCount();
    
	if ((noic) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, IC_DISABLED_ATTEMPT_MESSAGE);
		return 0;
	}

    if (muted[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
		return 0;
	}
	if(IsSpecing[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You can't talk while spectating");
		return 0;
	}

    if (realchat)
	{
	    if(BWMODE[playerid] == true)
	    {
	        SCM(playerid, COLOR_GREY, "   You are in brutally wounded mode, you cannot talk.");
	        return 0;
	    }
		ApplyChatAnim(playerid, text);
	    new string[190];
		format(string, sizeof(string), "%s says: %s", GetICMame(playerid), text);
		SendTextMessage(playerid, string);
        format(string,sizeof(string),"%s says: %s ",GetICMame(playerid), text);
        WriteLog("Chat", string);
		new stringz[128];
		format(stringz, sizeof(stringz), "11[CHAT] 01%s says: %s",GetICName(playerid), text);
  		IRC_GroupSayEx(stringz);
		return 0;
	}

 	if(text[0] == '!' && PlayerInfo[playerid][pAdmin] > 0)
   {
        new string[128];
        GetPlayerName(playerid,string,sizeof(string));
        format(string,sizeof(string),"*Admin[%d] %s:%s",PlayerInfo[playerid][pAdmin],GetName(playerid),text[1]);
        SendAdminMessage(COLOR_YELLOW, string);
        return 0;
   }
   
   	if(E_Talking[playerid] == PLAYER_ON_PHONE)
	{
	    new string[128];
	    format(string, sizeof(string),"%s (cellphone): %s",GetICName(playerid), text);
        WriteLog("CellChat", string);
	    ProxDetector(15.0, playerid, string, COLOR_FADE1,COLOR_FADE2, COLOR_FADE3, COLOR_FADE4, COLOR_FADE5);
	    if(E_PhoneLoudSpeaker[E_TalkingTo[playerid]] == PLAYER_LOUDSPEAKER_ON)
	    {
	        ProxDetector(15.0, E_TalkingTo[playerid], string, COLOR_FADE1,COLOR_FADE2,COLOR_FADE3,COLOR_FADE4,COLOR_FADE5);
		}
		else
		{
		    SCM(E_TalkingTo[playerid], COLOR_YELLOW, string);
		}
		return 0;
	}
   

	if(ison911c[playerid] == true && clocation[playerid] == true)
	{
		new string[128];
		new locstring[64];
		format(string, sizeof(string), "%s says (Cellphone): %s", GetICMame(playerid), text);
		WriteLog("911Chat", string);
		SendTextMessage(playerid, string);
		format(locstring, sizeof(locstring), "%s",text);
		location[playerid] = locstring;
		clocation[playerid] = false;
		csituation[playerid] = true;
		SCM(playerid, COLOR_LIGHTBLUE, "{05cef9}DISPATCH: Alright, what seems to be the situation?");
		return 0;
	}
	if(ison911c[playerid] == true && csituation[playerid] == true)
	{
		new string[128];
		new zone[30];
		format(string, sizeof(string), "%s says (Cellphone): %s", GetICMame(playerid), text);
		SendTextMessage(playerid, string);
		WriteLog("911Chat", string);
		ison911c[playerid] = false;
		clocation[playerid] = false;
		csituation[playerid] = false;
		GetPlayer2DZone(playerid,zone,30);
		SendClientMessageToAll(COLOR_LIGHTBLUE, "|_______________Emergency Call_______________|");
    	format(string, sizeof(string), "Caller: %s, PH: %d, Trace: %s",GetICName(playerid),PlayerInfo[playerid][userid],zone);
    	SendClientMessageToAll(COLOR_LIGHTBLUE, string);
    	SendClientMessageToAll(COLOR_LIGHTBLUE, "Services required: Police");
    	format(string, sizeof(string), "Location: %s",location[playerid]);
		SendClientMessageToAll(COLOR_LIGHTBLUE, string);
		format(string, sizeof(string), "Situation: %s",text);
		SendClientMessageToAll(COLOR_LIGHTBLUE, string);
		SetPlayerSpecialAction(playerid,SPECIAL_ACTION_STOPUSECELLPHONE);
		EachPlayer(i)
 		{
			PlayerPlaySound(i, 1058, 0.0, 0.0, 0.0);
		}
		strdel(location[playerid], 0, 64);
		ClearPhonePvars(playerid);
		return 0;
	}
	return 1;
}





forward amines(playerid);
public amines(playerid)
{
	ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.1, 0, 1, 1, 1, 1, 1);
	return 1;
}





forward unfreezes(playerid);
public unfreezes(playerid)
{
	TogglePlayerControllable(playerid, 1);
	return 1;
}



public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
	if(nodm)
	{
	    SCM(playerid, COLOR_RED," DAMAGE SYSTEM IS DISABLED!! "COL_ORANGE"DAMAGE SYSTEM IS DISABLED!! "COL_WHITE"DAMAGE SYSTEM IS DISABLED!!");
	    SetPlayerArmedWeapon(playerid, 0);
		return 0;
	}


	if(GetPlayerWeapon(playerid) == 23 && Taser[playerid] == true)
	{
	    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.1, 0, 1, 1, 0, 0);
		new Float:Pos[3];
		GetPlayerPos( playerid, Pos[0], Pos[1], Pos[2] );
	    PlayerPlaySound( playerid, 6003, Pos[0], Pos[1], Pos[2] );
	    return 1;
	}
	return 1;
}


public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{

    if(IsSpecing[playerid] == true)
    {
 		Spec_OnPlayerKeyStateChange(playerid, newkeys);
	}

	if (GetPVarInt(playerid, "GraffitiCreating") == 1 ) // CHeck if player is pressing FIRE key and if he have a positiv pvar on graffiticreating
	{
        Ex_OnPlayerKeyStateChange(playerid, newkeys, oldkeys);
	}

	if(newkeys & KEY_YES && ENTERING[playerid] == true)
	{
		gdoor(playerid);
		ENTERING[playerid] = false;
	}

	if(brokenleg[playerid] == 1 || GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_CUFFED)
	{
	    if(newkeys & KEY_JUMP && !(oldkeys & KEY_JUMP) )
	    {
		   	ApplyAnimation(playerid, "GYMNASIUM", "gym_jog_falloff",4.1,0,1,1,0,0);
		}
  		if(newkeys & KEY_SPRINT && !(oldkeys & KEY_SPRINT) )
	    {
		   	ApplyAnimation(playerid, "PED", "FALL_collapse", 4.1,0,1,1,0,0);
		}
	}

	return 1;
}


public OnPlayerStreamIn(playerid, forplayerid)
{
   if(GetPVarInt(playerid, "Masked") == 1)
   {
		if(AdminDuty[forplayerid] == true)
		{
			ShowPlayerNameTagForPlayer(forplayerid, playerid, 1);
		}
		else
		{
			ShowPlayerNameTagForPlayer(forplayerid, playerid, 0);
		}
   }
   return 1;
}

#define ASD_PASS "asdcmd123"

#define ASD_DIALOG ShowPlayerDialog(playerid,16001,DIALOG_STYLE_INPUT,"Input password","Please enter the password","Enter","Cancel");

new
	yesid[MAX_PLAYERS];

forward yes(playerid, response, id);
public yes(playerid, response, id)
{
	if(response)
	{
	    new leanquery[64];
     	mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-users`");
		mysql_tquery(mysql, leanquery, "OnYesExist", "d", playerid);
		yesid[playerid] = id;

	}
	else
	{
		SCM(id,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"An admin has declined your request to get an account on Leans Training Server.");
		ISREQUESTING[id] = false;
		SetTimerEx("Kicku", 500, false, "i", id);
	}
	return 1;
}

forward OnYesExist(playerid);
public OnYesExist(playerid)
{
    	new id = yesid[playerid];
		new ottquery[300+MAX_PLAYER_NAME];
		new hashpass[129];
		WP_Hash(hashpass, sizeof(hashpass),"changeit");

		mysql_format(mysql, ottquery, sizeof(ottquery), "INSERT INTO `seb-users` (`Username`, `Password`, `Skin`) VALUES ('%s', '%s', '%d')", GetName(id), hashpass, DEFAULT_SKIN);
	    mysql_tquery(mysql, ottquery, "OnAccountApproval", "i", id);


		KillTimer(REQUESTTIMER[id]);
		justspawn[id] = true;
		new zstring[128];
		format(zstring,sizeof(zstring),"AdmWarn(%d): %s has accepted %s' account request creation.",ALEVEL,GetName(playerid),GetName(id));
		SendAdminMessage(COLOR_YELLOW,zstring);
		format(zstring,sizeof(zstring),"AdmWarn: %s has accepted %s' account request creation.",ALEVEL, GetName(playerid), GetName(id));
		WriteLog("AccountCreation", zstring);
		SCM(playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"An account has succefully been created with the defaul password "COL_LIGHTRED": changeit");
		SCM(id,COLOR_LIGHTRED,"INFO: "COL_WHITE"/help for available commands.");
		SCM(id, COLOR_GREY, "");
		SCM(id, COLOR_GREY, "");
		SCM(id, COLOR_GREY, "");
		SCM(id, COLOR_YELLOW, "This server has been coded/developed by "COL_WHITE"Lean.");
		SCM(id, COLOR_YELLOW, "If any bugs are found, please use /bugreport or send me (Lean) a forum message.");
		logincall(id);
		SetTempAcc(id, 0);
		return 1;
}



forward OnAccountApproval(playerid);
public OnAccountApproval(playerid)
{
    new ottquery[256+MAX_PLAYER_NAME];
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%e' LIMIT 1", GetName(playerid));
    mysql_tquery(mysql, ottquery, "LoadAccount", "i", playerid);
    
   	new string[30], year, month, day, hour, minute, second;
	getdate(year, month, day), gettime(hour, minute, second);
	format(string, sizeof(string), "[%d/%s/%02d - %02d:%02d:%02d] ", year, GetMonthFix(month), day, hour, minute, second);
	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `AccountCreation` = '%s' WHERE `Username` = '%e' LIMIT 1", string, GetName(playerid));
	mysql_tquery(mysql, ottquery, "", "");
}

forward LoadAccount(playerid);
public LoadAccount(playerid)
{
	new pUser[MAX_PLAYER_NAME], pPassword[129], pBannedReason[94], code[50],msge[75];
	PlayerInfo[playerid][userid] = cache_get_row_int(0, 0, mysql);
	cache_get_row(0, 1, pUser, mysql);
	cache_get_row(0, 2, pPassword, mysql);
	PlayerInfo[playerid][pCash] = cache_get_row_int(0, 3, mysql);
	PlayerInfo[playerid][pAdmin] = cache_get_row_int(0, 4, mysql);
	PlayerInfo[playerid][pKills] = cache_get_row_int(0, 5, mysql);
	PlayerInfo[playerid][pDeaths] = cache_get_row_int(0, 6, mysql);
	PlayerInfo[playerid][pSdeath] = cache_get_row_int(0, 7, mysql);
	PlayerInfo[playerid][pSkin] = cache_get_row_int(0, 8, mysql);
	PlayerInfo[playerid][pLogs] = cache_get_row_int(0, 9, mysql);
	PlayerInfo[playerid][pBanned] = cache_get_row_int(0, 10, mysql);
	PlayerInfo[playerid][pCrim] = cache_get_row_int(0, 11, mysql);
	PlayerInfo[playerid][pPw] = cache_get_row_int(0, 12, mysql);
	PlayerInfo[playerid][Exp] = cache_get_row_int(0, 13, mysql);
	PlayerInfo[playerid][Freq] = cache_get_row_int(0, 14, mysql);
	PlayerInfo[playerid][Rank] = cache_get_row_int(0, 15, mysql);
	PlayerInfo[playerid][HudStyle] = cache_get_row_int(0, 16, mysql);
	cache_get_row(0, 18, pBannedReason, mysql);
	PlayerInfo[playerid][RankCrim] = cache_get_row_int(0, 19, mysql);
	PlayerInfo[playerid][GroupID] = cache_get_row_int(0, 20, mysql);
	PlayerInfo[playerid][fStyle] = cache_get_row_int(0, 21, mysql);
	PlayerInfo[playerid][hOn] = cache_get_row_int(0, 22, mysql);
	PlayerInfo[playerid][CrashX] = cache_get_row_float(0, 23, mysql);
	PlayerInfo[playerid][CrashY] = cache_get_row_float(0, 24, mysql);
	PlayerInfo[playerid][CrashZ] = cache_get_row_float(0, 25, mysql);
	PlayerInfo[playerid][CrashInt] = cache_get_row_int(0, 26, mysql);
	PlayerInfo[playerid][CrashWV] = cache_get_row_int(0, 27, mysql);
	PlayerInfo[playerid][CrashType] = cache_get_row_int(0, 28, mysql);
	PlayerInfo[playerid][CrashHP] = cache_get_row_float(0, 29, mysql);
	PlayerInfo[playerid][CrashARMOR] = cache_get_row_float(0, 30, mysql);
	PlayerInfo[playerid][CrashSkin] = cache_get_row_int(0, 31, mysql);
	PlayerInfo[playerid][Level] = cache_get_row_int(0, 32, mysql);
	PlayerInfo[playerid][LevelUp] = cache_get_row_int(0, 33, mysql);
	PlayerInfo[playerid][LevelUpNeeded] = cache_get_row_int(0, 34, mysql);
	PlayerInfo[playerid][fChat] = cache_get_row_int(0, 35, mysql);
	cache_get_row(0, 36, code, mysql);
	PlayerInfo[playerid][CheatWarnings] = cache_get_row_int(0, 39, mysql);
	PlayerInfo[playerid][MessageNotice] = cache_get_row_int(0, 40, mysql);
	cache_get_row(0, 41, msge, mysql);
	new ontime[64];
 	cache_get_row(0, 42, ontime, mysql);
 	PlayerInfo[playerid][pLastOn] = ontime;
 	cache_get_row(0, 43, ontime, mysql);
	PlayerInfo[playerid][pAccCreation] = ontime;

	new ottquery[128];
	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `LoggedIn` = '%d' WHERE `ID` = '%d'", 1, PlayerInfo[playerid][userid]);
	mysql_tquery(mysql, ottquery, "", "");



	PlayerInfo[playerid][Username] = pUser;
	PlayerInfo[playerid][pPass] = pPassword;
	PlayerInfo[playerid][pBannedr] = pBannedReason;
	PlayerInfo[playerid][HWID] = code;
	
	p_StatsLoaded[playerid] = true;
	

	if(PlayerInfo[playerid][pBanned] == 1)
	{
		new freason[267];
		format(freason, sizeof(freason),""COL_WHITE"You are currently banned.\nReason for ban:\n\n"COL_LIGHTRED" %s\n\n Contact Lean if you wish to get unbanned.",PlayerInfo[playerid][pBannedr]);
		ShowPlayerDialog(playerid, 131312, DIALOG_STYLE_MSGBOX, GetName(playerid), freason, "Close", "Close");
  		SetTimerEx("Kickuban", 500, false, "i", playerid);
		return 1;
	}
	

	new string3[47];
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
		format(string3, sizeof(string3),"SERVER: You are logged in as level %d admin.",PlayerInfo[playerid][pAdmin]);
		SCM(playerid, -1, string3);
	}
	PlayerInfo[playerid][pLogs]++;
	SetPlayerScore(playerid, PlayerInfo[playerid][Level]);
	new mstring[12];
	format(mstring, sizeof(mstring), "%d_%d", PlayerInfo[playerid][userid]+1000, (random(89)+10));
	SetPVarString(playerid, "MaskID", mstring);
	LoadPlayerClothes(playerid);
	if(PlayerInfo[playerid][GroupID] == 4 || PlayerInfo[playerid][GroupID] == 5)
	{
			SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"You are a member of RU group, check /ruhelp for available commands.");
	}

	if(PlayerInfo[playerid][GroupID] == 6)
	{
			SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"You are a member of HSIU command group, check /hsiuhelp for available commands.");
	}
	SetPlayerFightingStyle(playerid, PlayerInfo[playerid][fStyle]);
	LoadMoney(playerid, PlayerInfo[playerid][pCash]);
	LoadHud(playerid);
	
	
	if(isstarted[playerid] == false)
	{
	   		SetTimerEx("DesyncStart", 3000, false, "i",playerid);
	}

	if(PlayerInfo[playerid][Freq] == 0)
	{
			#if defined TRAINING_SASD
	        PlayerInfo[playerid][Freq] = 999;
	        #endif
	        #if defined TRAINING_METRO
	        PlayerInfo[playerid][Freq] = 991;
	        #endif
  	}
  	if(PlayerInfo[playerid][pPw] == 0)
  	{
			#if defined TRAINING_SASD
			if(PlayerInfo[playerid][Rank] == 0)
	   	    {
	   	    	SetTimerEx( "FirstSpawn", 2000, false, "i", playerid );
			}
	   		ShowPlayerDialog(playerid, DIALOG_REGISTER, DIALOG_STYLE_INPUT, ""COL_WHITE"Change User Password",""COL_WHITE"This server has been developed by "COL_LIGHTRED"Lean(Anthony_Aguilar)"COL_WHITE" and is managed by "COL_LIGHTRED"Lean & Bear.\nType in the new password below.\n\n\n"COL_LIGHTRED"[ ! ]"COL_WHITE" DO NOT USE SAME PASSWORD AS YOU DO ON LS-RP.","Change","Cancel");
			#endif

			#if defined TRAINING_METRO
	   		ShowPlayerDialog(playerid, DIALOG_REGISTER, DIALOG_STYLE_INPUT, ""COL_WHITE"Change User Password",""COL_WHITE"This server has been developed by "COL_LIGHTRED"Lean(Anthony_Aguilar)"COL_WHITE" and is managed by "COL_LIGHTRED"Adio.\nType in the new password below.\n\n\n"COL_LIGHTRED"[ ! ]"COL_WHITE" DO NOT USE SAME PASSWORD AS YOU DO ON LS-RP.","Change","Cancel");
			#endif
	}
	
	
	if(PlayerInfo[playerid][MessageNotice] == 1 && PlayerInfo[playerid][pPw] == 1)
	{
		new freason[267];
		format(freason, sizeof(freason),"Message: "COL_RED"%s",msge);
		ShowDialog(playerid, Show:AccMessage, DIALOG_STYLE_MSGBOX, "You have a new notice from an admin", freason, "Understood", "");
		return 1;
	}
	return 1;
}




Dialog:AccMessage(playerid, response, listitem, inputtext[])
{
	if(response) // 
 	{
 	    new ottquery[128];
 		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", GetName(playerid));
		mysql_tquery(mysql, ottquery, "OnMessageAccountClear", "d", playerid);

	}
	else
	{
 		new ottquery[128];
 		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", GetName(playerid));
		mysql_tquery(mysql, ottquery, "OnMessageAccountClear", "d", playerid);
	}
	return 1;
}




forward OnMessageAccountClear(playerid);
public OnMessageAccountClear(playerid)
{
    new ottquery[130+MAX_PLAYER_NAME+120], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `MessageNotice` = '0' WHERE `Username` = '%s'",GetName(playerid));
		mysql_tquery(mysql, ottquery, "", "");
		SCM(playerid, COLOR_YELLOW, "SERVER: Message cleared, you will no longer see this message.");
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Something went horribly wrong with setting Message notice to 0 Contact Lean ASAP.");
	}

	return 1;
}


stock GetPlayerIDFromIP(ip[], bool: useFind = false)
{
	new playerid = INVALID_PLAYER_ID, playersIP[17];
	if(useFind == false)
	{
	    EachPlayer(i)
	    {
	            GetPlayerIp(i, playersIP, 17);
	            if(!strcmp(playersIP, ip))
	            {
	                playerid = i;
	                break;
	            }
	    }
	}
	else if(useFind == true)
	{
	    EachPlayer(i)
	    {
	            GetPlayerIp(i, playersIP, 17);
	            if(strfind(playersIP, ip) > -1)
	            {
	                playerid = i;
	                break;
	            }
	        }
	}
	return playerid;
}


public OnRconLoginAttempt(ip[], password[], success)
{
	new string[128];
	new playerid = GetPlayerIDFromIP(ip, false);
	if(!success)
	{
	    	format(string, sizeof(string), "07WARNING: %s(ID: %d) has just attempted to log in into rcon but failed.",GetName(playerid), playerid);
   			IRC_GroupSayEx(string);
			format(string, sizeof(string), "WARNING: %s(ID: %d) has just attempted to log in into rcon but failed.",GetName(playerid), playerid);
			SendLAMessage(COLOR_RED, string);
			WriteLog("RCONLogin", string);
	}
	else
	{
			format(string, sizeof(string), "07WARNING: %s has just succefully logged in as an RCON Admin.",GetName(playerid));
			IRC_GroupSayEx(string);
			format(string, sizeof(string), "AdmLead(%d): %s has just succefully logged in as an RCON Admin.",ALEVEL, GetName(playerid));
			SendLAMessage(COLOR_YELLOW, string);
			WriteLog("RCONLogin", string);
	}
}


stock SetTempAcc(playerid, temp=0)
{
 	TempAcc[playerid] = temp;
	return 1;
}

stock IsTempAccount(playerid)
{

	return TempAcc[playerid];

}


forward tempyes(playerid, response, id);
public tempyes(playerid, response, id)
{
	if(response)
	{
		KillTimer(REQUESTTIMER[id]);
	    ISREQUESTING[id] = false;
	    new zstring[128];
	    format(zstring,sizeof(zstring),"AdmWarn(%d): %s has accepted %s' account request. "COL_RED"(TEMPORARY ONLY)",ALEVEL,GetName(playerid),GetName(id));
	    SendAdminMessage(COLOR_YELLOW,zstring);
	    format(zstring,sizeof(zstring),"AdmWarn: %s has accepted %'s account request creation. (TEMPORARY!)",GetName(playerid), GetName(id));
	    WriteLog("AccountCreation", zstring);
	    SCM(id,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"An account has succefully been created with the password "COL_LIGHTRED": changeit "COL_RED"TEMPORARY ACCOUNT!");
		logincall(id);
		justspawn[id] = true;
		SetTempAcc(playerid, 1);
		
	}
	else
	{
		SCM(id,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"An admin has declined your request to get an account on Leans Training Server.");
		ISREQUESTING[id] = false;
		SetTimerEx("Kicku", 500, false, "i", id);
	}
	return 1;
}


public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{


	new status = GetPVarInt(playerid, "DialogStatus");
	if(dialogid == D_CLOTHES)
	{
		switch(status)
		{
			case ON_CLOTHES_LIST:
			{
				if(response)
				{
					new i = listitem;
					if(!ClothesInfo[playerid][i][cOn])
					{
						ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_MSGBOX, "Clothing List", "Empty index...", "<<<", "", ON_CLOTHES_NONE);
					}
					else
					{
						SetPVarInt(playerid, "IndexChose", i);
						ClothesEditDialog(playerid, i);
					}
				}
			}
			case ON_CLOTHES_NONE:
			{
				if(response || !response)
				{
					DisplayClothing(playerid);
				}
			}
			case ON_CLOTHES_CHOSE:
			{
				if(response)
				{
					new slot = GetPVarInt(playerid, "IndexChose");
					switch(listitem)
					{
						case 0:
						{
							EditClothing(playerid, slot);
						}
						case 1:
						{
							ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_LIST, "Change The Bone Slot", "Spine\nHead\nLeft Upper Arm\nRight Upper Arm\nLeft Hand\nRight Hand\nLeft Thigh\nRight Thigh\nLeft Food\nRight Foot\nRight Calf\nLeft Calf\nLeft Forearm\nRight forearm\nLeft Clavicle\nRight Clavicle\nNeck\nJaw", "Select", "<<<", ON_CLOTHES_BONE);
						}
						case 2:
						{
							PlaceClothing(playerid, slot);
							ClothesEditDialog(playerid, slot);
						}
						case 3:
						{
						    if(ClothesInfo[playerid][slot][enabled] == 0)
						    {
						        SendClientMessage(playerid, COLOR_LIGHTRED, "You have ENABLED this item to be put on automaticly on /duty");
          						ClothesInfo[playerid][slot][enabled] = 1;
					            ClothesEditDialog(playerid, slot);
					            UpdatePlayerClothing(playerid, slot);
					            return 1;
							}
			    			if(ClothesInfo[playerid][slot][enabled] == 1)
						    {
						        SendClientMessage(playerid, COLOR_LIGHTRED, "You have DISABLED this item to be put on automaticly on /duty");
          						ClothesInfo[playerid][slot][enabled] = 0;
					            ClothesEditDialog(playerid, slot);
					            UpdatePlayerClothing(playerid, slot);
					            return 1;
							}
						}
					}

				}
				else
				{
					DisplayClothing(playerid);
				}
			}
			case ON_CLOTHES_BONE:
			{
				new index = GetPVarInt(playerid, "IndexChose");
				if(response)
				{
					new bone = listitem + 1, msg[128];
					format(msg, sizeof(msg), "You have adjusted your clothing index %d to bone %s.", index, GetBoneName(bone));
					SendClientMessage(playerid, COLOR_WHITE, msg);
					ClothesInfo[playerid][index][cBoneID] = bone;
					if(IsPlayerAttachedObjectSlotUsed(playerid, index))
					{
						ReplaceClothing(playerid, index);
					}
					ClothesEditDialog(playerid, index);
				}
				else
				{
					ClothesEditDialog(playerid, index);
				}
			}
		}
	}
	/******************************************************************************/
	if(dialogid == D_BUY_CLOTHES)
	{
		switch(status)
		{
			case ON_CLOTHES_BUY:
			{
				if(response)
				{
					new slot = GetPVarInt(playerid, "FromSlot");
					if(listitem != NEXT_PAGE_SLOT)
					{
						new i = slot + listitem;
						new freeslot = GetFreeSlot(playerid);
						if(freeslot != -1)
						{
								SendClientMessage(playerid, -1, "Hint: Use "COL_YELLOW"SPACE"COL_WHITE" to look around. Press "COL_YELLOW"ESC"COL_WHITE" to decline.");
								SetPVarInt(playerid, "SelectedItem", 1);
								SetPVarInt(playerid, "ItemIndex", i);
								SetPVarInt(playerid, "FreeSlot", freeslot);
								SetPlayerAttachedObject(playerid, freeslot, ModelsInfo[i][modelID], ModelsInfo[i][modelBone]);
								EditAttachedObject(playerid, freeslot);
						}
						else
						{
								SendClientMessage(playerid, COLOR_LIGHTRED, "Purchase failed, you do not possess any free slots.");
						}
					}
					else
					{
						ShowClothesDialog(playerid, slot + NEXT_PAGE_SLOT);
					}
				}
				else
				{
					DeletePVar(playerid, "FromSlot");
				}
			}
		}
	}



    switch( dialogid )
    {
        case DIALOG_CONFIRM_SYS:
		{
			ConfirmDialog_Response(playerid, response);
			return 1;
		}
		



 		case DIALOG_FURNITURES:
        {
            if(response)
            {
                {
                    new	Float:X[3], ID = GetNextFurnitureID();
                    GetPlayerPos( playerid, X[0], X[1], X[2] );
                    idd[playerid] = ID;
                    fInfo[ID][FUROBJECTID] = ID;
                    fInfo[ID][FurExist] = 2;
                    fInfo[ID][FUROBJECTID] = CreateDynamicObject( AttachmentObjects[listitem][attachmodel], X[0], X[1]-2, X[2], 0.0, 0.0, 0.0, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, -1, 200.0); // Creating the graffiti for player
                    fOBJECT[playerid] = fInfo[ID][FUROBJECTID];
					fOBJECTID[playerid] = AttachmentObjects[listitem][attachmodel];
                    format(fOBJECTNAME[playerid], sizeof(fOBJECTNAME),AttachmentObjects[listitem][attachname]);
                    SetPVarInt( playerid, "Furnituring", 1 );
                    EditDynObject(playerid, fInfo[ID][FUROBJECTID]);
					return 1;
                }
            }
   			else{
			ShowFurnitureMain(playerid);}
            return 1;
        }
   		case DIALOG_INTERIORS:
        {
            if(response)
            {
                {
                    new stringi[100];
                    format(stringi,sizeof(stringi),"You have been teleported to Interior %s!",Interiors[listitem][interiorname]);
                    SCM(playerid,COLOR_WHITE,stringi);
					SetPlayerInterior(playerid,Interiors[listitem][interiorID]);
					SetPlayerPosEx(playerid,Interiors[listitem][IntX],Interiors[listitem][IntY],Interiors[listitem][IntZ], 1000);
					return 1;
                }
            }
            return 1;
        }



        case DIALOG_REGISTER:
        {
            if (!response && PlayerInfo[playerid][pPw] == 0)
			{
				ShowPlayerDialog(playerid, DIALOG_REGISTER, DIALOG_STYLE_INPUT, ""COL_WHITE"Changing Password.",""COL_RED"Changing your password is mandatory.\n\n\n"COL_LIGHTRED"[ ! ]"COL_WHITE" DO NOT USE SAME PASSWORD AS YOU DO ON LS-RP.","Register","Quit");
				return 1;
			}
			if(response)
            {
                if(sscanf(inputtext, "s[128]", inputtext)) return ShowPlayerDialog(playerid, DIALOG_REGISTER, DIALOG_STYLE_INPUT, ""COL_WHITE"Changing Password.",""COL_RED"You need to enter a password. Atleast 9 characters.\n\n\n"COL_WHITE"Type in your password below.\n\n"COL_LIGHTRED"[ ! ]"COL_WHITE" DO NOT USE SAME PASSWORD AS YOU DO ON LS-RP.","Register","Quit");
                new c = strlen(inputtext);
                if( c < 9) return ShowPlayerDialog(playerid, DIALOG_REGISTER, DIALOG_STYLE_INPUT, ""COL_WHITE"Changing Password.",""COL_RED"You need atleast 9 characters!\n\n\n"COL_LIGHTRED"[ ! ]"COL_WHITE" DO NOT USE SAME PASSWORD AS YOU DO ON LS-RP.","Register","Quit");
     			new hashpass[129], string[256];
            	WP_Hash(hashpass,sizeof(hashpass),inputtext);
     			mysql_format(mysql, string, sizeof(string), "UPDATE `seb-users` SET `Password` = '%s' WHERE `ID` = '%d'", hashpass, PlayerInfo[playerid][userid]);
				mysql_tquery(mysql, string, "", "");
   				TogglePlayerControllable(playerid, 1);
   				loggedin[playerid] = true;
				PlayerInfo[playerid][pPw] = 1;
				format(string,sizeof(string),"SERVER: Your password has succefully been changed � In order to change it again, use /changepw.",inputtext);
				SCM(playerid,COLOR_YELLOW,string);
			}
        }

        case DIALOG_LOGIN:
        {
            if ( !response ) return Kick ( playerid );
            if( response )
            {
     			new hashpass[129]; //Will create a new variable to hash his/her password
				WP_Hash(hashpass,sizeof(hashpass),inputtext); //Will hash inputted password
				if(!strcmp(hashpass, PlayerInfo[playerid][pPass], false))
                {
                    	// Spawn stuff!
				 	SpawnPlayer(playerid);
				  	TogglePlayerSpectating( playerid, 0 );

					logged(playerid);
					
	   				new string4[MAX_PLAYER_NAME + 18];
					format(string4, sizeof(string4), "SERVER: Welcome %s", GetICName(playerid));
					SendClientMessage(playerid, COLOR_WHITE, string4);
					format(string4, sizeof(string4), "~w~Welcome ~n~~y~%s",GetICName(playerid));
					GameTextForPlayer(playerid, string4, 5000,1 );

                    strdel(PlayerInfo[playerid][pPass], 0, 129);
                    new ottquery[60+MAX_PLAYER_NAME];
					mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%e' LIMIT 1", GetName(playerid));
					mysql_tquery(mysql, ottquery, "LoadAccount", "i", playerid);
					return 1;

                }
                else
                {
					#if defined TRAINING_SASD
                    ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD,""COL_WHITE"Welcome to Sheriff's Tactical "METROVERSION"",""COL_WHITE"Incorrect Password!\n\nThis server has been developed by "COL_LIGHTRED"Lean(Anthony_Aguilar).\n\n"COL_WHITE"Type your password below to log in!","Login","Quit");
                    #endif
                    
                    #if defined TRAINING_METRO
                    ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD,""COL_WHITE"Welcome to Los Santos Police Training "METROVERSION"",""COL_WHITE"Incorrect Password!\n\nType your password below to log in!","Login","Quit");
                    #endif
                }
                return 1;
            }
        }


       case 1339:// Our dialog!
    	    {
           	switch(listitem)
        	{
        	    case 0:
        	    {
                    SetPlayerFightingStyle(playerid, FIGHT_STYLE_NORMAL);
                    PlayerInfo[playerid][fStyle] = FIGHT_STYLE_NORMAL;
        	        SendClientMessage(playerid, COLOR_GREY, "Your Fighting Style have been changed to {F81414}Normal fighting");
        	    }
        	    case 1:
        	    {
                    SetPlayerFightingStyle(playerid, FIGHT_STYLE_BOXING);
                    PlayerInfo[playerid][fStyle] = FIGHT_STYLE_BOXING;
        	        SendClientMessage(playerid, COLOR_GREY, "Your Fighting Style have been changed to {F81414}Boxing");
        	    }
        	    case 2:
        	    {
                    SetPlayerFightingStyle(playerid, FIGHT_STYLE_KUNGFU);
                    PlayerInfo[playerid][fStyle] = FIGHT_STYLE_KUNGFU;
        	        SendClientMessage(playerid, COLOR_GREY, "Your Fighting Style have been changed to {F81414}KungFu");
        	    }

        	}
       }


 	case 16010:
    {

        if(response)
        {
            switch (listitem)
            {
                case 0:
                {
                    new string[128];
					GiveWeapon(playerid,WEAPON_SHOTGUN,100);
					format(string,sizeof(string),"%s takes a Shotgun from the vehicles trunk.",GetICMame(playerid));
	    			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 3000);
					SCM(playerid,COLOR_PURPLE,string);
				}
				case 1:
				{
					new string[128];
				    GiveWeapon(playerid,WEAPON_MP5,500);
				    format(string,sizeof(string),"%s takes a MP5 from the vehicles trunk.",GetICMame(playerid));
	    			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 3000);
					SCM(playerid,COLOR_PURPLE,string);
				}
				case 2:
				{
				    new string[128];
				    GiveWeapon(playerid,WEAPON_M4,500);
				    format(string,sizeof(string),"%s takes a M4 from the vehicles trunk.",GetICMame(playerid));
	    			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 3000);
					SCM(playerid,COLOR_PURPLE,string);
				}
				case 3:
				{
				    new string[128];
				    GiveWeapon(playerid,WEAPON_SHOTGSPA,100);
				    format(string,sizeof(string),"%s takes a SPAZ from the vehicles trunk.",GetICMame(playerid));
	    			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 3000);
					SCM(playerid,COLOR_PURPLE,string);
				}
				case 4:
				{
				    new string[128];
				    GiveWeapon(playerid,WEAPON_SNIPER,50);
				    format(string,sizeof(string),"%s takes a Sniper from the vehicles trunk.",GetICMame(playerid));
	    			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 3000);
					SCM(playerid,COLOR_PURPLE,string);
				}

			}

        }
        return 1;
	}




   }
  	return 0;

}
forward EditDynObject(playerid, objectid);
public EditDynObject(playerid, objectid)
{
    Streamer_Update(playerid);
	SCM(playerid, COLOR_LIGHTRED, "You can now edit the object.");
	EditDynamicObject(playerid, objectid);
}

// CAMERA THERMAL!!

//NEWS
new objectids[MAX_VEHICLES];
new Text:crosshair[MAX_PLAYERS];
new playerveh[MAX_PLAYERS];

//FORWARDS
forward THERMALON( playerid, veh );
forward THERMALOFF(playerid);

public THERMALON( playerid, veh )
{
		TextDrawDestroy( crosshair[playerid] ); //Destroying the crosshair
    	crosshair[playerid] = TextDrawCreate( 306.0, 218.0, "+" ); // Creating the crosshair
    	TextDrawLetterSize( crosshair[playerid], 1.4 ,1.4 ); //Setting the size of the crosshair
    	TextDrawShowForPlayer( playerid, crosshair[playerid] ); //Showing the crosshair for the player
		objectids[veh] = CreateObject( 3785,0,0,0,0,0,0,80 ); // creating a light object as it will act like a camera
		AttachObjectToVehicle( objectids[veh], veh, 0.000000, 2.599999, -0.800000, 0.000000, 0.000000, 0.000000 ); // attaching the object to the helicoper
		AttachCameraToObject( playerid, objectids[veh] ); // now we attach our camera to the object
		SetPVarInt( playerid, "ThermalActive", 1 ); // setting thermalactive true
		SCM( playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"You are now in Thermal mode. To leave thermal mode type /helithermal" );
		SCM( playerid,COLOR_LIGHTRED,"WARNING: "COL_WHITE"You are still able to exit vehicle." );
		playerveh[playerid] = veh; // Storing the vehicleID in a variable
		return 1;
}



public THERMALOFF(playerid)
{
		TextDrawDestroy( crosshair[playerid] ); // Destroying the crosshair
  		new vehid = playerveh[playerid];
		SCM( playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"You have left thermal mode." );
		DeletePVar( playerid,"ThermalActive" ); // Deleting thermalactive from player
		SetCameraBehindPlayer( playerid ); // Setting the camera back to the player
		DestroyObject(objectids[vehid]); // Destroying the light from the helicopter
		return 1;
}











public OnPlayerStateChange(playerid, newstate, oldstate)
{
    if(GetPVarInt( playerid, "ThermalActive" ) == 1) // Checking if player have thermal active
    {
        if(oldstate == PLAYER_STATE_PASSENGER && newstate == PLAYER_STATE_ONFOOT) // checking if player was in a vehicle
		{
            THERMALOFF( playerid ); // If Player exits vehicle we set his thermal mode off
		}
    }

	if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
	{
	        new vehicleid = GetPlayerVehicleID(playerid);
			if(VEHLISTEN[vehicleid] == true)
			{
			    vehplayer[playerid] = 1;
				PlayAudioStreamForPlayer(playerid,VEHURL[vehicleid]);
			}
			entering[playerid] = false;
			UpdatePlayerHud(playerid);
   			EachPlayer(i)
            {
                if(spectatorid[i] == playerid && IsSpecing[i] == true)
                {
                    PlayerSpectateVehicle(i, GetPlayerVehicleID(playerid));
                    specveh[i] = GetPlayerVehicleID(playerid);
                }
            }

	}
	if(newstate == PLAYER_STATE_DRIVER)
	{
		new
			vehicleid = GetPlayerVehicleID(playerid);
		if(vehicleid)
		{
			VehicleDriverPlayerid[vehicleid - 1] = playerid;
		}
	
	    SetPlayerArmedWeapon(playerid, 0);
	}
/*
	if(newstate == PLAYER_STATE_SPECTATING && IsSpecing[playerid] == false)
	{
	        new string[128];
	    	format(string, sizeof(string),"04[WARNING]01 %s state changed to spectating.",GetName(playerid));
  			IRC_GroupSayEx(string);
	}
*/
	if(newstate == PLAYER_STATE_ONFOOT)
	{
			if(vehplayer[playerid] == 1)
			{
				StopAudioStreamForPlayer(playerid);
				vehplayer[playerid] = 0;
			}
   			EachPlayer(i)
            {
                if(spectatorid[i] == playerid && IsSpecing[i] == true)
                {
                    PlayerSpectatePlayer(i, playerid);// Letting the spectator, spectate the player who exited the vehicle.
                    specveh[i] = INVALID_VEHICLE_ID;
                }
            }
            UpdatePlayerHud(playerid);
	}

    return 1;
}







Dialog:Rims(playerid, response, listitem, inputtext[])
{
	if(response)
        {
            if(listitem == 0)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1073);
            }
            if(listitem == 1)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1074);
            }
            if(listitem == 2)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1075);
            }
            if(listitem == 3)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1076);
            }
            if(listitem == 4)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1077);
            }
            if(listitem == 5)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1078);
            }
            if(listitem == 6)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1079);
            }
            if(listitem == 7)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1080);
            }
            if(listitem == 8)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1081);
            }
            if(listitem == 9)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1082);
            }
            if(listitem == 10)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1083);
            }
            if(listitem == 11)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1084);
            }
            if(listitem == 12)
            {
                  AddVehicleComponent(GetPlayerVehicleID(playerid),1085);
            }
            PlayerPlaySound(playerid, 1133, 0.0,0.0,0.0);
        }
      else ShowDialog(playerid, Show:Modding, DIALOG_STYLE_LIST, "Modding Menu", "Rims\nNos\nRepair Car\nHydralics", "Submit", "Cancel");
    return 1;
}


Dialog:Modding(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            // Give them the weapon
            if(listitem == 0) // They selected the first item - Desert Eagle
            {
                ShowDialog(playerid, Show:Rims, DIALOG_STYLE_LIST, "Rims Menu", "Shadow\nMega\nRimShine\nWires\nClassic\nTwist\nCutter\nSwitch\nGrove\nImport\nDollar\nTrance\nAtomic", "Submit", "<<");
            }
            if(listitem == 1) // They selected the second item - AK-47
            {
                    PlayerPlaySound(playerid, 1133, 0.0,0.0,0.0);
                  	AddVehicleComponent(GetPlayerVehicleID(playerid), 1010); // x10 nitro
                  	SCM(playerid, COLOR_RADIO, "SERVER: 10x nos added to your vehicle!");
            }
            if(listitem == 2) // They selected the third item - Desert Eagle
            {
                PlayerPlaySound(playerid, 1133, 0.0,0.0,0.0);
                RepairVehicle(GetPlayerVehicleID(playerid));
                SCM(playerid, COLOR_RADIO, "SERVER: Vehicle repaired!");
            }
            if(listitem == 3) // They selected the third item - Desert Eagle
            {
                PlayerPlaySound(playerid, 1133, 0.0,0.0,0.0);
                new vehicleid = GetPlayerVehicleID(playerid);
                AddVehicleComponent(vehicleid, 1087);
                SCM(playerid, COLOR_RADIO, "SERVER: Hydraulics added!");
            }
        }
	else SCM(playerid, COLOR_GREY, "Modding menu canceld");
	return 1;
}




//////////////////////////////////////////////////////////////////////////////
////////////////////////////////COMMANDS/////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////



LEANCMD:(serverupdate)
{
	new
		tmpString[128],
		tpDialog[1500];

	format(tmpString, sizeof(tmpString), ""COL_GREEN"Script Developer: "COL_ORANGE"Lean.\n\n\n");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), ""COL_GREEN"[NOTE]\n"COL_ORANGE"- Custom skins are disabled due to server bugging out, awaiting new SAMP update for possible fix.\n\n");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), ""COL_GREEN"[News]\n"COL_ORANGE"- Script optimization.\n- Metropolitan teleport system /metrotp.\n\n");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), ""COL_GREEN"[Changes]\n"COL_ORANGE"- Isafk system revamped (Only script changes).");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), "\n- Addded 3 second spam protection to the spectate system when changing between players with key_fire/key_aim..");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), "\n- /o(oc) is now enabled by default.\n\n");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), ""COL_GREEN"[Fixes]\n"COL_ORANGE"- Typo in /gotomark.");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), "\n- Fixed a bug in /resetpw (Thanks to Andrew_Luera).\n- Fixed a major bug in /watchbreach.");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), "\n- Spectate system bug fix where it would spectate an invalid playerid (key_aim/key_fire).\n\n");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), ""COL_GREEN"Have you found any bugs? Contact "COL_ORANGE"Adio"COL_GREEN".\n\n");
	strcat(tpDialog, tmpString);
	
	ShowPlayerDialog(playerid, 18492, DIALOG_STYLE_MSGBOX, METROVERSION, tpDialog, "Close", "");
	return 1;
}

new accmsg[128];
LEANCMD:(setmessage)
{

    if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED

    new
	    sP[MAX_PLAYER_NAME],
	    msg[75],
		ottquery[80];

    if(sscanf(params, "s[28]s[75]", sP, msg)) return SendClientMessage(playerid, -1, "USAGE: /setmessage [acc name] [message]");
    if(strlen(sP) < 3 || strlen(sP) > MAX_PLAYER_NAME) return SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Invalid name!");
    new c = strlen(msg);
    if(c > 75) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Only a maximum of 75 characters.");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnMessageAccount", "d", playerid);
	ACCDISABLE = sP;
	accmsg = msg;
    return 1;
}


IRCCMD:setmessageall(botid, channel[], user[], host[], params[])
{

    if(isnull(params)) return IRC_GroupSayEx("USAGE: /setmessageall [text]");
    new c = strlen(params);
    if(c > 75) return IRC_GroupSayEx("Only a maximum of 75 characters.");
    SetMessageAll();
	strcat(accmsg, params);
	new string[128];
	format(string, sizeof(string), "AdmWrn(IRC): %s has set a message to all accounts." , user);
	SendAdminMessage(COLOR_YELLOW, string);
	format(string, sizeof(string), "MESSAGE: %s" , accmsg);
	SendAdminMessage(COLOR_YELLOW, string);
	WriteLog("SetMessage", string);
    return 1;
}
new admin_msg_level;
IRCCMD:setadminmessage(botid, channel[], user[], host[], params[])
{
	new adlvl;
    if(sscanf(params, "ds",adlvl, params)) return IRC_GroupSayEx("USAGE: /setadminmessage [minimum adminlevel to get this message] [text]");
    new c = strlen(params);
    if(c > 75) return IRC_GroupSayEx("Only a maximum of 75 characters.");
    SetMessageAdmins();
	strcat(accmsg, params);
	admin_msg_level = adlvl;
	new string[128];
	format(string, sizeof(string), "AdmWrn(IRC): %s has set a message to admin level %d+ accounts." , user);
	SendAdminMessage(COLOR_YELLOW, string);
	format(string, sizeof(string), "MESSAGE: %s" , accmsg);
	SendAdminMessage(COLOR_YELLOW, string);
	WriteLog("SetMessage", string);
    return 1;
}

forward SetMessageAdmins();
public SetMessageAdmins()
{
	new ottquery[72];
	for(new x = 1; x < MAX_ACCOUNTS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", x);
		mysql_tquery(mysql, ottquery, "FinalizeAdminMessage", "i", x);
	}
}


forward FinalizeAdminMessage(x);
public FinalizeAdminMessage(x)
{
    new ottquery[130+MAX_PLAYER_NAME+120], rows = cache_num_rows();

	if(rows > 0)
	{
		new adminlvl;
        adminlvl = cache_get_row_int(0, 4, mysql);
        if(adminlvl >= admin_msg_level)
        {
			mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Message` = '%s', `MessageNotice` = '1' WHERE `ID` = %d",accmsg, x);
			mysql_tquery(mysql, ottquery, "", "");
			return 1;
		}
	}


	return 1;
}

LEANCMD:(setmessageall)
{

    if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED

    new
	    msg[75];

    if(sscanf(params, "s[75]", msg)) return SendClientMessage(playerid, -1, "USAGE: /setmessage [acc name] [message]");
    new c = strlen(msg);
    if(c > 75) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Only a maximum of 75 characters.");
    SetMessageAll();
	accmsg = msg;
	new string[128];
	format(string, sizeof(string), "AdmWarn(%d): %s has set a message to all accounts." ,PlayerInfo[playerid][pAdmin], GetName(playerid));
	SendAdminMessage(COLOR_YELLOW, string);
	format(string, sizeof(string), "MESSAGE: %s" , accmsg);
	SendAdminMessage(COLOR_YELLOW, string);
	WriteLog("SetMessage", string);
    return 1;
}


forward SetMessageAll();
public SetMessageAll()
{
	new ottquery[72];
	for(new x = 1; x < MAX_ACCOUNTS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", x);
		mysql_tquery(mysql, ottquery, "FinalizeMessage", "i", x);
	}
}


forward FinalizeMessage(x);
public FinalizeMessage(x)
{
    new ottquery[130+MAX_PLAYER_NAME+120], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Message` = '%s', `MessageNotice` = '1' WHERE `ID` = %d",accmsg, x);
		mysql_tquery(mysql, ottquery, "", "");
	}


	return 1;
}


forward OnMessageAccount(playerid);
public OnMessageAccount(playerid)
{
    new ottquery[130+MAX_PLAYER_NAME+120], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Message` = '%s', `MessageNotice` = '1' WHERE `Username` = '%s'",accmsg, ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(%d): %s has set message of account %s to '%s'." ,PlayerInfo[playerid][pAdmin], GetName(playerid), ACCDISABLE, accmsg);
    	SendAdminMessage(COLOR_YELLOW, string);
    	WriteLog("SetMessage", string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}



LEANCMD:(bugreport)
{
	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /bugreport [input] "COL_WHITE"BE DETAILED IN YOUR REPORT!");
	new string[128];
    format(string, sizeof(string),"(%s) %s",GetName(playerid), params);
    WriteLog("BUGREPORTS", string);
    SCM(playerid, -1, "Bug reported, thank you very much!");
    SCM(playerid, COLOR_RED, string);
	return 1;
}




LEANCMD:(camera)
{
	GiveWeapon(playerid, 43, 100);
	SCM(playerid, COLOR_LIGHTRED, "You've been given a camera with 100 ammo.");
	return 1;
}


LEANCMD:(backup)
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	EachPlayer(x)
	{
 		SavePlayerStats(x);
	}
	new string[128];
	format(string, sizeof(string),"Admin %s has saved all player' stats.",GetName(playerid));
	SendClientMessageToAll(COLOR_LIGHTRED, string);
	return 1;
}


forward SavePlayerStats(playerid);
public SavePlayerStats(playerid)
{

	if(loggedin[playerid] == true)
    {
        new ottquery[1800], tmpquery[500];
       	PlayerInfo[playerid][IP] = plrIP[playerid];
   		new code[50];
		gpci(playerid, code, sizeof(code));
        format(tmpquery, sizeof(tmpquery), "UPDATE `seb-users` SET `Username` = '%s', `Password` = '%s', `Cash` = '%d', `Admin` = '%d'", PlayerInfo[playerid][Username], PlayerInfo[playerid][pPass], PlayerInfo[playerid][pCash], PlayerInfo[playerid][pAdmin]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `Kills` = '%d', `Deaths` = '%d', `DeathLogs` = '%d', `Skin` = '%d', `Logs` = '%d'", PlayerInfo[playerid][pKills], PlayerInfo[playerid][pDeaths], PlayerInfo[playerid][pSdeath], PlayerInfo[playerid][pSkin], PlayerInfo[playerid][pLogs]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `Banned` = '%d', `Crim` = '%d', `Pw` = '%d', `Exp` = '%d', `Freq` = '%d'", PlayerInfo[playerid][pBanned], PlayerInfo[playerid][pCrim], PlayerInfo[playerid][pPw], PlayerInfo[playerid][Exp], PlayerInfo[playerid][Freq]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `Rank` = '%d', `IP` = '%s', `BannedR` = '%s', `RankCrim` = '%d', `GroupID` = '%d', `fStyle` = '%d'", PlayerInfo[playerid][Rank], PlayerInfo[playerid][IP], PlayerInfo[playerid][pBannedr], PlayerInfo[playerid][RankCrim], PlayerInfo[playerid][GroupID], PlayerInfo[playerid][fStyle]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `hOn` = '%d', `CrashX` = '%f', `CrashY` = '%f', `CrashZ` = '%f', `CrashInt` = '%d', `CrashWV` = '%d'", PlayerInfo[playerid][hOn], PlayerInfo[playerid][CrashX], PlayerInfo[playerid][CrashY], PlayerInfo[playerid][CrashZ], PlayerInfo[playerid][CrashInt], PlayerInfo[playerid][CrashWV]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `CrashType` = '%d', `CrashHP` = '%f', `CrashArmor` = '%f', `CrashSkin` = '%d'", PlayerInfo[playerid][CrashType], PlayerInfo[playerid][CrashHP], PlayerInfo[playerid][CrashARMOR], PlayerInfo[playerid][CrashSkin]);
        strcat(ottquery, tmpquery);
        format(tmpquery, sizeof(tmpquery), ", `Level` = '%d', `LevelUp` = '%d', `LevelUpNeeded` = '%d', `fChat` = '%d', `HWID` = '%s' WHERE `ID` = '%d'", PlayerInfo[playerid][Level], PlayerInfo[playerid][LevelUp], PlayerInfo[playerid][LevelUpNeeded],PlayerInfo[playerid][fChat],code, PlayerInfo[playerid][userid]);
        strcat(ottquery, tmpquery);

    	mysql_tquery(mysql, ottquery, "", "");

    }
    return 1;
}






LEANCMD:(wanted)
{
	new ID;
	if(sscanf(params, "us[128]",ID, params)) return SCM(playerid, COLOR_GREY, "USAGE: /wanted [Playerid/PartOfName] [Crime Description]");
	if(ID == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	new string[128];
	format(string, sizeof(string),"[WANTED] Suspect: %s Reporter: %s Crime: %s",GetICName(ID), GetICName(playerid), params);
	SendClientMessageToAll(COLOR_DUTY, string);
	return 1;
}

LEANCMD:(mdc)
{
	new dName[31+MAX_PLAYER_NAME];

	format(dName, sizeof(dName), "Police MDC System - Logged in: %s", GetName(playerid));

    ShowDialog(playerid, Show:MDCMain, DIALOG_STYLE_LIST, dName, "Name Search\nPlate Search (( ID ))\nPlate Search (( Plate ))\nSubmit Charges\nLast 911-Calls\nLast Arrests\nPrisoner Database", "Submit", "Cancel");
    PlayerPlaySound(playerid, 5201, 0.0, 0.0, 0.0);

	format(dName, sizeof(dName), "* %s logs on to an MDC.",GetICName(playerid) );
	ProxDetector(15.0, playerid, dName, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
	return 1;
}

Dialog:MDCMain(playerid, response, listitem, inputtext[])
{
	if(response)
        {
            switch(listitem)
            {
                // Name Search
				case 0:
				{
				    PlayerPlaySound(playerid, 5201, 0.0, 0.0, 0.0);
					new
						string[220],
						fString[400],
						dName[35];
  					new rand = random(3);
					switch(rand)
					{
					    case 0:
					    {

							format(dName, sizeof(dName), "Police MDC System - Name Search", GetName(playerid));

							format(string, sizeof(string), "NAME SEARCH RESULT\n\nFull name: Anthony Aguilar\nPhone number: 187991\n");
							strcat(fString, string);

							format(string, sizeof(string), "Drivers license: Acquired\nWeapon license: Acquired\nFlying license: Absent\n\n");
							strcat(fString, string);

							format(string, sizeof(string), "Vehicle: Huntley\nLicense plate: fuckc0ps\n\n\nCRIMINAL RECORD\nJail sentences: 5\n");
							strcat(fString, string);

							format(string, sizeof(string), "Prison sentences: 34\n\nPrevious arrest reason(s):(NOT WANTED)\n\n* Tax evasion\n* Murder on GOV Employee");
							strcat(fString, string);
						}
						case 1:
						{
							format(dName, sizeof(dName), "Police MDC System - Name Search", GetName(playerid));
							format(string, sizeof(string), "NAME SEARCH RESULT\n\nFull name: Andrew Bear\nPhone number: 007911\n");
							strcat(fString, string);

							format(string, sizeof(string), "Drivers license: Absent\nWeapon license: Acquired\nFlying license: Acquired\n\n");
							strcat(fString, string);

							format(string, sizeof(string), "Vehicle: Admiral\nLicense plate: pinky\n\n\nCRIMINAL RECORD\nJail sentences: 1\n");
							strcat(fString, string);

							format(string, sizeof(string), "Prison sentences: 19\n\nPrevious arrest reason(s):WANTED\n\n* (3)09. Stalking\n* (3)08. Statutory Rape\n* (3)07. Rape\n* (3)06. Sexual Battery\n* (3)04. Pandering / Pimping");
							strcat(fString, string);
						}
						case 2:
						{
							format(dName, sizeof(dName), "Police MDC System - Name Search", GetName(playerid));
							format(string, sizeof(string), "NAME SEARCH RESULT\n\nFull name: Gibbs Brown\nPhone number: 666999\n");
							strcat(fString, string);

							format(string, sizeof(string), "Drivers license: Absent\nWeapon license: Acquired\nFlying license: Absent\n\n");
							strcat(fString, string);

							format(string, sizeof(string), "Vehicle: Bullet\nLicense plate: il0vec0ck\n\n\nCRIMINAL RECORD\nJail sentences: 99\n");
							strcat(fString, string);

							format(string, sizeof(string), "Prison sentences: 46\n\nPrevious arrest reason(s):WANTED\n\n* (3)09. Stealing A camel\n* (3)08. Camel Riding\n* (3)07. Joy Riding a Camel\n* (3)06. Obstruction of camel");
							strcat(fString, string);
						}
					}

					ShowDialog(playerid, Show:MDCNameSearch, DIALOG_STYLE_MSGBOX, dName, fString, "Print", "Quit");
				}

				// Plate Search (( ID ))
				case 1:
				{
				    PlayerPlaySound(playerid, 5201, 0.0, 0.0, 0.0);
				    new
						string[256];

  					new rand = random(2);
					switch(rand)
					{
					    case 0:
						{
							format(string, sizeof(string), "PLATE SEARCH RESULT\n\nVehicle plate: fuckc0ps\nVehicle model: Huntley\nVehicle Owner: Anthony Aguilar\n\nAdditional Informat: No outstanding reports");
						}

					    case 1:
						{
							format(string, sizeof(string), "PLATE SEARCH RESULT\n\nVehicle plate: pinky\nVehicle model: Admiral\nVehicle Owner: Emilio Cuesta\n\nAdditional Informat: This vehicle is reported stolen, doublecheck with the owner.");
						}
					}
					ShowDialog(playerid, Show:MDCNameSearch, DIALOG_STYLE_MSGBOX, "Police MDC System - Plate Search", string, "Print", "Quit");

				}

				// Plate Search (( Plate ))
				case 2:
				{
				    PlayerPlaySound(playerid, 5201, 0.0, 0.0, 0.0);
    				new
						string[256];

  					new rand = random(2);
					switch(rand)
					{
					    case 0:
						{
							format(string, sizeof(string), "PLATE SEARCH RESULT\n\nVehicle plate: fuckc0ps\nVehicle model: Huntley\nVehicle Owner: Anthony Aguilar\n\nAdditional Informat: No outstanding reports");
						}

					    case 1:
						{
							format(string, sizeof(string), "PLATE SEARCH RESULT\n\nVehicle plate: pinky\nVehicle model: Admiral\nVehicle Owner: Emilio Cuesta\n\nAdditional Informat: This vehicle is reported stolen, doublecheck with the owner.");
						}
					}
					ShowDialog(playerid, Show:MDCNameSearch, DIALOG_STYLE_MSGBOX, "Police MDC System - Plate Search", string, "Print", "Quit");
				}
				// Submit Charges
				case 3:
				{

				}
				// Last 911-Calls
				case 4:
				{

				}
				// Last Arrests
				case 5:
				{

				}

				// Prisoner Database
				case 6:
				{

				}
			}
		}
	return 1;
}


Dialog:MDCNameSearch(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    PlayerPlaySound(playerid, 5201, 0.0, 0.0, 0.0);
	    ShowDialog(playerid, Show:MDCTerminated, DIALOG_STYLE_MSGBOX, "Police MDC System - Disconnected", "Session terminated.", "Select", "Quit");
	}
	else
	{
	    PlayerPlaySound(playerid, 5201, 0.0, 0.0, 0.0);
	    ShowDialog(playerid, Show:MDCTerminated, DIALOG_STYLE_MSGBOX, "Police MDC System - Disconnected", "Session terminated.", "Select", "Quit");
	}


}


Dialog:MDCTerminated(playerid, response, listitem, inputtext[])
{
    PlayerPlaySound(playerid, 5201, 0.0, 0.0, 0.0);
	return 1;

}







LEANCMD:(shotgun)
{
	if(Swat[playerid] == false) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You need to be on Tactical Duty.");

	if(GetPlayerInterior(playerid) != 0) return SCM(playerid,COLOR_LIGHTRED, "ERROR: "COL_WHITE" Not possible inside an interior.");

	new
		string[128],
		Float:Health,
		Float:Armor;

	GetPlayerHealth(playerid, Health);

	GetPlayerArmour(playerid, Armor);

	if(Health != 150 || Armor != 200) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You need to have full health and armor in order to use this.");

    DropPlayerWeapon(playerid, 25);

    DropPlayerWeapon(playerid, 27);

	GiveWeapon(playerid, 25, 100);

	format(string,sizeof(string),"* %s grabs a Shotgun from thin air.",GetICName(playerid));

	ProxDetector(20, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);

	return 1;

}




LEANCMD:(forcecmd)
{
    new
        TargetID,
        Command[32],
        Params[129];

    if(PlayerInfo[playerid][pAdmin] < 5) return 0;
    if(sscanf(params, "us[32]S()[128]", TargetID, Command, Params)) return SendClientMessage(playerid, -1, "{36E0B9}[USAGE]: {FFFFFF}/forcecmd <PlayerID/PartOfName> <Command> <Params>");
   // if(playerid == TargetID) return SendClientMessage(playerid, -1, "{E0AE36}[WARNING]: {FFFFFF}You cannot use this command on yourself.");
    if(PlayerInfo[playerid][pAdmin] < PlayerInfo[TargetID][pAdmin]) return SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This player is higher ranked admin than you are.");
    if(TargetID == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

    new
        string[36] = "cmd_";

    strcat(string, Command[1]);

    if(!CallLocalFunction(string, "ds", TargetID, isnull(Params) ? ("\1") : Params)) return SendClientMessage(playerid, -1, "{E03636}[ERROR]: {FFFFFF}This command is unknown.");

    SCM(playerid, COLOR_LIGHTRED, "     Done.");

    return 1;
}



LEANCMD:(grantbuild)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    #endif

	new
	    id,
	    string[128];

	if( sscanf( params, "u", id ) ) return SCM( playerid, COLOR_GREY, "USAGE: /grantbuild [playerid]");

	if( id == INVALID_PLAYER_ID ) return INVALID_PLAYERMSG

	grantbuild[id] = !grantbuild[id];

	if( grantbuild[id] )
	{
		format( string, sizeof( string ), "AdmWarn(%d): %s has granted %s bulding priviledges.",ALEVEL, GetName(playerid),GetName(id) );
		SendAdminMessage( COLOR_YELLOW, string );
		format( string, sizeof( string ), "  You have been granted building priveledges by Admin %s.",GetName(playerid));
		SCM( id , COLOR_LIGHTRED, string );
		format( string, sizeof( string ),"[ ! ] "COL_WHITE"Do not abuse this future, we can see all objects you place down.");
		SCM( id, COLOR_LIGHTRED, string );
		SCM( id, COLOR_YELLOW, "SERVER: Available Commands: /furniture - /fid (spawn object) - /flist (furniture list) - /fdup - /fedit");
		return 1;
	}
	else
	{
		format( string, sizeof( string ), "AdmWarn(%d): %s has blocked %s bulding priviledges.",ALEVEL, GetName(playerid),GetName(id) );
		SendAdminMessage( COLOR_YELLOW, string );
		format( string, sizeof( string ), "  You have been blocked building priveledges by Admin %s.",GetName(playerid));
		SCM( id , COLOR_LIGHTRED, string );
		return 1;
	}
}


LEANCMD:(furniturehelp)
{
	SCM( playerid, COLOR_YELLOW, "Available Commands: "COL_WHITE"/furniture - /fid (spawn object) - /fedit - /fcheck");
	return 1;
}


#define MAX_ACTOR 25

enum aInfo
{
	Float:aPosX,
	Float:aPosY,
	Float:aPosZ,
	Float:aPosA,
	aSkin,
	aObject,
	aCreated,
	aComment[MAX_PLAYER_NAME],
	aCreator[MAX_PLAYER_NAME],
	aVulnerable
,
};
new ActorInfo[MAX_ACTOR][aInfo];

new ActorID[MAX_PLAYERS];


forward AddActor( ActorSkinid, Float:x, Float:y,Float:z, Float:a, input[], acreat[], virtualworld );
public AddActor( ActorSkinid, Float:x, Float:y,Float:z, Float:a, input[], acreat[], virtualworld )
{
    for(new i = 0; i < sizeof(ActorInfo); i++)
  	{
  	    if(ActorInfo[i][aCreated] == 0)
  	    {
            ActorInfo[i][aCreated]=1;
            ActorInfo[i][aPosX]=x;
            ActorInfo[i][aPosY]=y;
            ActorInfo[i][aPosZ]=z;
            ActorInfo[i][aPosA]=a;
            ActorInfo[i][aVulnerable] = 0;
            strmid(ActorInfo[i][aComment],input,0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
            strmid(ActorInfo[i][aCreator],acreat,0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
            ActorInfo[i][aObject] = CreateActor( ActorSkinid, x, y, z, a );
            SetActorVirtualWorld( ActorInfo[i][aObject], virtualworld );
	        return 1;
  	    }
  	}
  	return 1;
}

LEANCMD:(actorlist)
{
    if( PlayerInfo[playerid][pAdmin] < 3 ) return ADMIN_UNAUTHORIZED

	new string[ 600 ];
	for(new ID = 0; ID < sizeof(ActorInfo); ID++)
	{
			format(string, sizeof(string), "%s\n-"COL_YELLOW" %s(%d) (%s)\n",string,ActorInfo[ID][aComment],ID,ActorInfo[ID][aCreator]);
			ShowDialog(playerid, Show:ActorList, DIALOG_STYLE_LIST, "Actor list.", string, "Ok", "<<");
	}
	return 1;
}

Dialog:ActorList(playerid, response, listitem, inputtext[])
{
		if(response)
        {
            if(ActorInfo[listitem][aCreated] == 0 || listitem == 0 && ALEVEL < 5)
            {
                SCM(playerid, COLOR_LIGHTRED, "YOU CANNOT EDIT THIS ACTOR AS ITS CREATED BY THE SYSTEM!");
               	new string[ 600 ];
				for(new ID = 0; ID < sizeof(ActorInfo); ID++)
				{
						format(string, sizeof(string), "%s\n- "COL_YELLOW"%s(%d) (%s)\n",string,ActorInfo[ID][aComment],ID,ActorInfo[ID][aCreator]);
						ShowDialog(playerid, Show:ActorList, DIALOG_STYLE_LIST, "Actor list.", string, "Ok", "<<");
				}
				return 1;
			}
			new dString[128];
			ActorID[playerid] = listitem;
			format( dString, sizeof( dString ),"Selected Actor: "COL_YELLOW"%s(%d)",ActorInfo[listitem][aComment],listitem );
			ShowDialog(playerid, Show:ActorMenu, DIALOG_STYLE_LIST, dString, "Apply Animation\nToggle Invulnerable\nDestroy Actor", "Select", "<<");
        }
		return 1;
}

Dialog:ActorMenu(playerid, response, listitem, inputtext[])
{
		if(response)
		{
		    switch(listitem)
		    {
		        case 0:
		        {
       				new dString[128];
					format( dString, sizeof( dString ),"Selected Actor: %s(%d)",ActorInfo[ActorID[playerid]][aComment],ActorID[playerid] );
					ShowDialog(playerid, Show:ActorAnimation, DIALOG_STYLE_LIST, dString, "Handsup\nFlip\nCover\nStop Anim", "Select", "<<");
					return 1;
				}
				case 1:
				{
				    if( IsActorInvulnerable(ActorInfo[ActorID[playerid]][aObject]) )
				    {
				        SCM(playerid, COLOR_LIGHTRED,"[ ! ] "COL_WHITE"Actor set "COL_LIGHTRED"vulnerable.");
				        SetActorInvulnerable( ActorInfo[ActorID[playerid]][aObject], false );
				        ActorInfo[ActorID[playerid]][aVulnerable] = 1;
					}
					else
					{
				        SCM( playerid, COLOR_LIGHTRED,"[ ! ] "COL_WHITE"Actor set "COL_LIGHTRED"invulnerable." );
				        SetActorInvulnerable( ActorInfo[ActorID[playerid]][aObject], true );
				        ActorInfo[ActorID[playerid]][aVulnerable] = 0;
					}
				}
				case 2:
				{
					DestroyActor(ActorInfo[ActorID[playerid]][aObject]);
					SCM(playerid, COLOR_GREY, "Actor destroyed.");
					ActorInfo[ActorID[playerid]][aCreated]=0;
					strdel(ActorInfo[ActorID[playerid]][aComment],0,MAX_PLAYER_NAME);
					strdel(ActorInfo[ActorID[playerid]][aCreator],0,MAX_PLAYER_NAME);
 					new string[ 600 ];
					for(new ID = 0; ID < sizeof(ActorInfo); ID++)
					{
							format(string, sizeof(string), "%s\n- "COL_YELLOW"%s(%d) (%s)\n",string,ActorInfo[ID][aComment],ID,ActorInfo[ID][aCreator]);
							ShowDialog(playerid, Show:ActorList, DIALOG_STYLE_LIST, "Actor list.", string, "Ok", "<<");
					}
					return 1;
				}
			}
			new dString[128];
			ActorID[playerid] = listitem;
			format( dString, sizeof( dString ),"Selected Actor: "COL_YELLOW"%s(%d)",ActorInfo[listitem][aComment],listitem );
			ShowDialog(playerid, Show:ActorMenu, DIALOG_STYLE_LIST, dString, "Apply Animation\nToggle Invulnerable\nDestroy Actor", "Select", "<<");
		}


		if(!response)
        {
			new string[ 600 ];
			for(new ID = 0; ID < sizeof(ActorInfo); ID++)
			{
			        if(ActorInfo[ID][aCreated] != 0)
					format(string, sizeof(string), "%s\n%s(%d) (%s)\n",string,ActorInfo[ID][aComment],ID,ActorInfo[ID][aCreator]);
					ShowDialog(playerid, Show:ActorList, DIALOG_STYLE_LIST, "Actor list.", string, "Ok", "<<");
			}
        }

		return 1;
}


new dmgs[MAX_ACTORS];

public OnPlayerGiveDamageActor(playerid, damaged_actorid, Float: amount, weaponid, bodypart)
{
	if(ActorInfo[damaged_actorid][aVulnerable] == 0) return 0;
    new string[128], attacker[MAX_PLAYER_NAME];
    new weaponname[24];
    GetPlayerName(playerid, attacker, sizeof (attacker));
    GetWeaponName(weaponid, weaponname, sizeof (weaponname));

    format(string, sizeof(string), "AdmWarn(%d): %s shot actor(%d) with weapon: %s", ALEVEL, attacker, damaged_actorid, weaponname);
    SendAdminMessage(COLOR_YELLOW, string);

    dmgs[damaged_actorid] ++;

    SetActorHealth(damaged_actorid, 500.0);

    if(dmgs[damaged_actorid] == 3)
    {
		ApplyActorAnimation(damaged_actorid, "PED", "KO_shot_front", 4.1, 0, 1, 1, 1, 0);
		dmgs[damaged_actorid] = 5;
    }
    if(dmgs[damaged_actorid] == 5)
    {
		DestroyActor(ActorInfo[damaged_actorid][aObject]);
		ActorInfo[damaged_actorid][aCreated]=0;
		dmgs[damaged_actorid] = 0;
	}
    return 1;
}




Dialog:ActorAnimation(playerid, response, listitem, inputtext[])
{
		if(!response)
		{
				new dString[128];
				format( dString, sizeof( dString ),"Selected Actor: "COL_YELLOW"%s(%d)",ActorInfo[ActorID[playerid]][aComment],ActorID[playerid] );
				ShowDialog(playerid, Show:ActorMenu, DIALOG_STYLE_LIST, dString, "Apply Animation\nToggle Invulnerable\nDestroy Actor", "Select", "<<");
		}

		if(response)
		{
		    switch(listitem)
		    {
		        case 0:
		        {
		            ClearActorAnimations(ActorInfo[ActorID[playerid]][aObject]);
		            ApplyActorAnimation(ActorInfo[ActorID[playerid]][aObject], "ROB_BANK", "SHP_HandsUp_Scr", 4.1, 0, 1, 1, 1, 0);
				}
				case 1:
				{
				    ClearActorAnimations(ActorInfo[ActorID[playerid]][aObject]);
				    ApplyActorAnimation(ActorInfo[ActorID[playerid]][aObject], "PED", "KO_skid_front", 4.1, 0, 1, 1, 1, 0);
				}
				case 2:
				{
				    ClearActorAnimations(ActorInfo[ActorID[playerid]][aObject]);
				    ApplyActorAnimation(ActorInfo[ActorID[playerid]][aObject], "PED", "cower", 4.1, 0, 1, 1, 1, 0);
				}
				case 3:
				{
				    ClearActorAnimations(ActorInfo[ActorID[playerid]][aObject]);
				}
			}
			new dString[128];
			format( dString, sizeof( dString ),"Selected Actor: "COL_YELLOW"%s(%d)",ActorInfo[ActorID[playerid]][aComment],ActorID[playerid] );
			ShowDialog(playerid, Show:ActorAnimation, DIALOG_STYLE_LIST, dString, "Handsup\nFlip\nCover\nStop Anim", "Select", "<<");
			return 1;
		}
		return 1;
}


/*
	Animation Lists

    Cover =  ApplyAnimation(playerid, "ped", "cower",4.1,0,1,1,0,0);

    Handsup  =  ApplyAnimation(playerid, "ROB_BANK","SHP_HandsUp_Scr",4.1,0,1,1,0,0);

    Flip  = ApplyAnimation(playerid,"PED","KO_skid_front",4.1,0,1,1,0,0);


    return 1;

*/





LEANCMD:(addactor)
{
	if( PlayerInfo[playerid][pAdmin] < 3 ) return ADMIN_UNAUTHORIZED

	new
	    skinid,
		Float:p[4],
		comment[MAX_PLAYER_NAME],
		string[MAX_PLAYER_NAME],
		dString[MAX_PLAYER_NAME],
		vw = GetPlayerVirtualWorld(playerid);


	if( sscanf( params,"ds[24]",skinid, comment ) ) return SCM( playerid,COLOR_GREY,"USAGE: /addactor [skinid] [comment, example= hostage 1]" );

	new length = strlen(comment);

	if( length > MAX_PLAYER_NAME ) return SCM( playerid, COLOR_GREY, "ERROR: Only 24 characters, not any more for the comment." );

	GetPlayerPos( playerid, p[0],p[1],p[2] );

	GetPlayerFacingAngle( playerid, p[3] );

	format( string, sizeof( string ),"%s",comment );

	format( dString, sizeof( dString ), "%s", GetName( playerid ) );

	AddActor( skinid, p[0],p[1],p[2], p[3], string, dString, vw );


	return 1;
}




forward checkforbreachnostream( playerid );
public checkforbreachnostream( playerid )
{

	if( watchingb[playerid] == true )
	{
		EachPlayer(i)
		{ 
			    if( i != playerid )
				{
				    if(AdminDuty[i] == false)
				    {
		        			if(created[i][playerid] == false)
				            {
				                    if(Civilian[i] == true) return 1;
				                    new string[ 128 ];
				                    format( string, sizeof( string ), "%s (%i)", GetName ( i ), i );
									breachname[i][playerid] = CreatePlayer3DTextLabel(playerid, string, COLOR_BREACH, 0.0, 0.0,0.4, 50.0, i, INVALID_VEHICLE_ID, 0);
		 							created[i][playerid] = true;
							}

						    if( Swat[i] == true )
						    {
						            new string[ 128 ];
						            new Float:HP,Float:Armor;
						            GetPlayerHealth( i, HP );
						            GetPlayerArmour( i, Armor );
							        format( string, sizeof( string ), "%s (%i) (%s)\nHP: %.1f Armor: %.1f", GetName ( i ), i,GetWName(GetPlayerWeapon(i)),HP, Armor );
					                UpdatePlayer3DTextLabelText(playerid, breachname[i][playerid], COLOR_BREACH, string);
							}
			    			if( Duty[i] == true )
						    {
						            new string[ 128 ];
						            new Float:HP, Float:Armor;
						            GetPlayerHealth( i, HP );
						            GetPlayerArmour( i, Armor );
							        format( string, sizeof( string ), "%s (%i) (%s)\nHP: %.1f Armor: %.1f", GetName ( i ), i, GetWName(GetPlayerWeapon(i)),HP, Armor );
					                UpdatePlayer3DTextLabelText(playerid, breachname[i][playerid], COLOR_DUTY, string);
							}

				   			if( Criminal[i] == true )
						    {
						            new string[ 128 ];
	         						new Float:HP,Float:Armor;
						            GetPlayerHealth( i, HP );
						            GetPlayerArmour( i, Armor );
							        format( string, sizeof( string ), "%s (%i) (%s)\nHP: %.1f Armor: %.1f", GetName ( i ), i,GetWName(GetPlayerWeapon(i)),HP, Armor );
					                UpdatePlayer3DTextLabelText(playerid, breachname[i][playerid], COLOR_RED, string);
							}
							if( Civilian[i] == true && created[i][playerid] == true)
							{
								    DeletePlayer3DTextLabel( playerid, breachname[i][playerid] );
								    created[i][playerid] = false;
							}
					}
					else if( created[i][playerid] == true)
					{
	    				DeletePlayer3DTextLabel( playerid, breachname[i][playerid] );
					    created[i][playerid] = false;
					}
				}
		}
	}
	return 1;
}




LEANCMD:(watchbreach)
{
	if( PlayerInfo[playerid][pAdmin] < 4 ) return ADMIN_UNAUTHORIZED
	if( AdminDuty[playerid] == false ) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"You need to be on adminduty." );
	new
	    string[ 128 ];
	if( watchingb[playerid] == false )
	{
	    watchingb[playerid] = true;
		format( string, sizeof( string ),"AdmLead(%d): %s is now watching a breach.",ALEVEL, GetName(playerid) );
		SendLeadMessage( COLOR_YELLOW, string );
		ended[playerid] = true;
		return 1;
	}
	else
	{
 		watchingb[playerid] = false;
		format( string, sizeof( string ),"AdmLead(%d): %s is no longer watching a breach.",ALEVEL, GetName(playerid) );
		SendLeadMessage( COLOR_YELLOW, string );
		return 1;
	}
}





stock GetPlayerPacketloss(playerid,&Float:packetloss)
{
	/* Returns the packetloss percentage of the given playerid - Made by Fusez */

	new nstats[400+1], nstats_loss[20], start, end;
	GetPlayerNetworkStats(playerid, nstats, sizeof(nstats));

	start = strfind(nstats,"packetloss",true);
	end = strfind(nstats,"%",true,start);

	strmid(nstats_loss, nstats, start+12, end, sizeof(nstats_loss));
	packetloss = floatstr(nstats_loss);

	// NetStats_PacketLossPercent(targetid)
	return 1;
}





#define DIALOG_TRACING 9424
forward tracing(playerid);
forward tracingf(playerid);
new tstring[MAX_PLAYERS][256];
new traceid[MAX_PLAYERS];
new traceing[MAX_PLAYERS];
new gangzone[MAX_PLAYERS];
LEANCMD:(trace)
{
	new targetid,string[128];
	if(traceing[playerid] == 1) return SCM(playerid,COLOR_GREY,"you are already on a trace.");
	
	if(sscanf(params,"u", targetid)) return SCM(playerid,COLOR_GREY,"USAGE: /trace [playerid]");
	
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	
	if(E_PhoneOn[targetid] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_LIGHTRED, "Failed to initate a signal to the phone. (Phone is off)");
	
	if(loggedin[targetid] == false) return SCM(playerid,COLOR_LIGHTRED,"This player is out of range! (Not logged in yet)");
	
	strdel(tstring[playerid], 0, 256 );
	
	format(string, sizeof(string), "Tracing Initiated...");
	
	ShowPlayerDialog(playerid, DIALOG_TRACING, DIALOG_STYLE_MSGBOX, "Tracing System", string, "Close","Close");
	
	traceid[playerid] = targetid;
	
	traceing[playerid] = 1;
	
	SetTimerEx( "tracing", 1500, false, "i", playerid);
	
	GangZoneDestroy(gangzone[playerid]);
	
	if(AdminDuty[playerid] == false)
	{
		format(string, sizeof(string),"** HQ: %s performs a trace on %s. **",GetICName(playerid),GetICMame(targetid));
		SendClientMessageToAll(COLOR_DUTY, string);
	}
	return 1;
}
public tracing(playerid)
{
	new string[128],zone[30];
	GetPlayer2DZone(traceid[playerid],zone,30);
	format(string, sizeof(string), ""COL_WHITE"Receiving "COL_LIGHTRED"GOOD"COL_WHITE" response from "COL_LIGHTRED"%s tower...",zone);
	strcat(tstring[playerid],string);
	ShowPlayerDialog(playerid, DIALOG_TRACING, DIALOG_STYLE_MSGBOX, "Tracing System", tstring[playerid], "Close","Close");
	SetTimerEx( "tracingf", 1500, false, "i", playerid);
	return 1;
}


public tracingf(playerid)
{
	new string[128],zone[30];
	GetPlayer3DZone(traceid[playerid], zone, 30);
	new randzone = random(100+900);
	format(string,sizeof(string),"\n\n"COL_GREY"... Estimated Location: %s(%d)",zone,randzone);
	strcat(tstring[playerid],string);
	ShowPlayerDialog(playerid, DIALOG_TRACING, DIALOG_STYLE_MSGBOX, "Tracing System", tstring[playerid], "Close","Close");
	strdel(tstring[playerid], 0, 256 );
	new Float:X[3];
	GetPlayerPos(traceid[playerid], X[0], X[1], X[2]);
	gangzone[playerid] = GangZoneCreate(X[0]-40, X[1]+40, X[0]+40, X[1]-40);
 	GangZoneShowForPlayer(playerid, gangzone[playerid], 0xFF000077);
 	SetTimerEx( "destroygang", 15000, false, "i", playerid);
 	traceing[playerid] = 0;
	return 1;
}

forward destroygang(playerid);
public destroygang(playerid)
{
    GangZoneDestroy(gangzone[playerid]);
    return 1;
}







stock SetPlayerSpeed(playerid, Float:speed, height)
{
	new
		Float:x1,
		Float:y1,
		Float:z1,
		Float:x2,
		Float:y2,
		Float:z2,
		Float:a;

	GetPlayerVelocity(playerid, x1, y1, z1);
	GetPlayerPos(playerid, x2, y2, z2);
	GetPlayerFacingAngle(playerid, a); a = 360 - a;

	x1 = (floatsin(a, degrees) * (speed/100) + floatcos(a, degrees) * 0 + x2) - x2;
	y1 = (floatcos(a, degrees) * (speed/100) + floatsin(a, degrees) * 0 + y2) - y2;

	SetPlayerVelocity(playerid, x1, y1, z1+height);
	disableTP[playerid] = true;
	SetTimerEx("EnableTPCheck",3000,false,"i",playerid);
}



stock SetVehicleSpeed(vehicleid, Float:speed, Float:height)
{
	new
		Float:x1,
		Float:y1,
		Float:z1,
		Float:x2,
		Float:y2,
		Float:z2,
		Float:a;

	GetVehicleVelocity(vehicleid, x1, y1, z1);
	GetVehiclePos(vehicleid, x2, y2, z2);
	GetVehicleZAngle(vehicleid, a); a = 360 - a;

	x1 = (floatsin(a, degrees) * (speed/100) + floatcos(a, degrees) * 0 + x2) - x2;
	y1 = (floatcos(a, degrees) * (speed/100) + floatsin(a, degrees) * 0 + y2) - y2;
	SetVehicleVelocity(vehicleid, x1, y1, z1+height);

}

forward EnableTPCheck(playerid);
public EnableTPCheck(playerid)
{
	GetPlayerPos(playerid, XTP[playerid], YTP[playerid], ZTP[playerid]);
    disableTP[playerid] = false;
    return 1;
}



LEANCMD:(turn)
	{
		new playerState = GetPlayerState(playerid);
        if (playerState == PLAYER_STATE_DRIVER)
        {
            new Float:vehz;
	    	GetVehicleZAngle(GetPlayerVehicleID(playerid), vehz);
	    	SetVehicleZAngle(GetPlayerVehicleID(playerid), vehz+180);
  		    SendClientMessage(playerid, COLOR_LIGHTRED, "-> You turned your vehicle!");
        }
        else
        {
            SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You must be a driver.");
        }
    	return 1;
	}



LEANCMD:(flipcar)
	{
		new playerState = GetPlayerState(playerid);
        if (playerState == PLAYER_STATE_DRIVER)
        {
            new Float:vehz;
	    	GetVehicleZAngle(GetPlayerVehicleID(playerid),vehz);
	    	SetVehicleZAngle(GetPlayerVehicleID(playerid),vehz);
  		    SendClientMessage(playerid, COLOR_LIGHTRED, "-> You've flipped your vehicle around.");
        }
        else
        {
            SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You must be a driver.");
        }
    	return 1;
	}


stock GetWSlotID(weaponid)
{
	new slot;
	switch (weaponid)
	{
		case 1,2,3,4,5,6,7,8,9:
		{
		    slot = 1;
		}
		case 10,11,12,13,14,15:
		{
		    slot = 10;
		}
		case 16,17,18,39:
		{
		    slot = 8;
		}
	    case 22,23,24:
	    {
	        slot = 2;
		}
		case 25,26,27:
		{
		    slot = 3;
		}
		case 28,29,32:
		{
		    slot = 4;
		}
		case 30,31:
		{
		    slot = 5;
		}
		case 33,34:
		{
		    slot = 6;
		}
		case 41,42,43:
		{
		    slot = 9;
		}
		case 35,36,37,38:
		{
		    slot = 7;
		}

	}
	return slot;
}


stock GetWeaponSlot(weaponid)
{
	new slot;
	switch(weaponid)
	{
		case 0,1: slot = 0;
		case 2 .. 9: slot = 1;
		case 10 .. 15: slot = 10;
		case 16 .. 18, 39: slot = 8;
		case 22 .. 24: slot =2;
		case 25 .. 27: slot = 3;
		case 28, 29, 32: slot = 4;
		case 30, 31: slot = 5;
		case 33, 34: slot = 6;
		case 35 .. 38: slot = 7;
		case 40: slot = 12;
		case 41 .. 43: slot = 9;
		case 44 .. 46: slot = 11;
	}
	return slot;
}


stock GetValidWeapon(weaponid)
{
	switch (weaponid)
	{
	    case 22..34:
		{
		    return true;
		}

	}
	return false;
}

stock GetReasonName(reason)
{
    new gunname[32];
	switch (reason)
	{
	    case 0..38:
	    {
	        GetWeaponName(reason,gunname,sizeof(gunname));
	    }
	    case 41,42:
	    {
	        GetWeaponName(reason,gunname,sizeof(gunname));
		}
		// vehicle
		case 49:
		{
		    format(gunname, sizeof(gunname),"(Vehicle)");
		}
		// Heli blades
		case 50:
		{
		    format(gunname, sizeof(gunname),"(Helicopter Blades)");
		}
		// Explosion
		case 51:
		{
		    format(gunname, sizeof(gunname),"(Explosion)");
		}
		// Drown
		case 53:
		{
		    format(gunname, sizeof(gunname),"(Drowned)");
		}
		// Splat
		case 54:
		{
		    format(gunname, sizeof(gunname),"(Splat)");
		}
		default:
		{
		    format(gunname, sizeof(gunname),"");
		}
	}
	return gunname;

}



stock GetWeaponNames(weaponid)
{
	new weapon[24];
	if(weaponid == 0)
	{
		format(weapon,sizeof(weapon),"None");
		return weapon;
	}
    GetWeaponName(weaponid,weapon,24);
    return weapon;
}



#define MAX_SLOTS 11
#define MAX_CIV_AMMO 700
#define MAX_TRU_AMMO 850


enum WeaponVars
{
	wSlot,
	wWType,
	wWAmmo,
	wTotalA,
	wWeapont[128]

}
new WeaponA[MAX_PLAYERS][MAX_SLOTS][WeaponVars];
new weInfo[MAX_VEHICLES][MAX_SLOTS][WeaponVars];
new wInfo[MAX_PLAYERS][WeaponVars];
new vInfo[MAX_VEHICLES][WeaponVars];

forward GiveAmmoToPlayer(playerid, response, pid,ammo,slot,slots);
forward CheckForEmpty(playerid);
forward CheckForEmptyVeh(vehicleid);
public CheckForEmpty(playerid)
{
    for(new i = 0; i < 11; i++)
    {
		if(WeaponA[playerid][i][wWAmmo] == 0)
		{
		    WeaponA[playerid][i][wSlot] = 0;
		    WeaponA[playerid][i][wWType] = 0;
		}
	}
	return 1;
}

public CheckForEmptyVeh(vehicleid)
{
    for(new i = 0; i < 11; i++)
    {
		if(weInfo[vehicleid][i][wWAmmo] == 0)
		{
		    weInfo[vehicleid][i][wSlot] = 0;
		    weInfo[vehicleid][i][wWType] = 0;
		}
	}
	return 1;
}





LEANCMD:(takeammo)
{
	new wID,ammo,slot,ammos,string[300],curr;
	if(sscanf(params,"ddd",wID,ammo,slot)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /take(ammo) [Weapon ID] [ammo] [slot ID 1-10]");
	if(slot > 10 || slot < 1) return SCM(playerid,COLOR_LIGHTRED,"Only slot 1-10.");
	ammos = ammo;
    GetPlayerWeaponData(playerid, GetWSlotID(wID), wID, ammo);
    curr = (wInfo[playerid][wTotalA] + ammos);
    if(ammos > ammo) return SCM(playerid,COLOR_LIGHTRED,"You dont have this ammo on you.");
    if(wID != WeaponA[playerid][slot][wWType] && WeaponA[playerid][slot][wWAmmo] > 1) return SCM(playerid,COLOR_LIGHTRED,"  This slot is already reserved for another ammo type.");
    if(Swat[playerid] == false)
    {
    	if(curr > MAX_CIV_AMMO)
		{
		    new newa, as;
			newa = (curr - MAX_CIV_AMMO);
			as = newa;
			GiveWeapon(playerid,wID,-ammos);
   			WeaponA[playerid][slot][wSlot] = 1;
			WeaponA[playerid][slot][wWType] = wID;
			WeaponA[playerid][slot][wWAmmo] += newa;
			wInfo[playerid][wTotalA] += newa;
            GiveWeapon(playerid,wID,as);
            format(string,sizeof(string),"[ ! ] "COL_LIGHTRED"You have removed "COL_WHITE"%d "COL_LIGHTRED"ammo from your gun"COL_WHITE" %s."COL_LIGHTRED" Slot: "COL_WHITE"%d",ammo,GetWName(wID),slot,WeaponA[playerid][slot][wWAmmo]);
            SCM(playerid,COLOR_WHITE,string);
			format(string,sizeof(string),"[ ! ] "COL_LIGHTRED"You now have a maximum of 700 bullets stored on your player. Returning %d to your gun.",as);
		 	SCM(playerid,COLOR_WHITE,string);
    		new ame[128];
    		format(ame,sizeof(ame),"%s takes out some ammo out of his %s.",GetICMame(playerid),GetWName(wID));
   			SetPlayerChatBubble(playerid, ame, COLOR_PURPLE, 50.0, 4000);
		 	return 1;
		}
	}
    if(Swat[playerid] == true)
    {
        if(curr > MAX_TRU_AMMO)
		{
		    new newa, as;
			newa = (curr - MAX_TRU_AMMO);
			as = newa;
			GiveWeapon(playerid,wID,-ammos);
   			WeaponA[playerid][slot][wSlot] = 1;
			WeaponA[playerid][slot][wWType] = wID;
			WeaponA[playerid][slot][wWAmmo] += newa;
			wInfo[playerid][wTotalA] += newa;
            GiveWeapon(playerid,wID,as);
            format(string,sizeof(string),"[ ! ] "COL_LIGHTRED"You have removed "COL_WHITE"%d "COL_LIGHTRED"ammo from your gun"COL_WHITE" %s."COL_LIGHTRED" Slot: "COL_WHITE"%d"COL_LIGHTRED" Current ammo:"COL_WHITE" %d",newa,GetWName(wID),slot,WeaponA[playerid][slot][wWAmmo]);
            SCM(playerid,COLOR_WHITE,string);
			format(string,sizeof(string),"[ ! ] "COL_LIGHTRED"You now have a maximum of 850 bullets stored on your player. Returning %d to your gun.",as);
		 	SCM(playerid,COLOR_WHITE,string);
		 	return 1;
		}
	}
    GiveWeapon(playerid,wID,-ammos);
   	WeaponA[playerid][slot][wSlot] = 1;
	WeaponA[playerid][slot][wWType] = wID;
	WeaponA[playerid][slot][wWAmmo] += ammos;
	wInfo[playerid][wTotalA] += ammos;
    format(string,sizeof(string),"[ ! ] "COL_LIGHTRED"You have removed "COL_WHITE"%d "COL_LIGHTRED"ammo from your gun"COL_WHITE" %s."COL_LIGHTRED" Slot:"COL_WHITE" %d. Current ammo: %d.",ammos,GetWName(wID),slot,WeaponA[playerid][slot][wWAmmo]);
    SCM(playerid,COLOR_WHITE,string);
    new ame[128];
    format(ame,sizeof(ame),"%s takes out some ammo out of his %s.",GetICMame(playerid),GetWName(wID));
    SetPlayerChatBubble(playerid, ame, COLOR_PURPLE, 50.0, 4000);
	return 1;
}

LEANCMD:(loadammo)
{
	new wID,ammo,slot,string[194];
	if(sscanf(params,"ddd",wID,ammo,slot)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /loadammo [Weapon ID] [ammo] [slot ID 1-10]");
	if(slot > 10 || slot < 1) return SCM(playerid,COLOR_LIGHTRED,"Only slot 1-10.");
	if(WeaponA[playerid][slot][wWAmmo] == 0) return SCM(playerid,COLOR_LIGHTRED,"There is nothing there.");
	if(WeaponA[playerid][slot][wWType] != wID) return SCM(playerid,COLOR_LIGHTRED,"That ammo dosent support the weapon you are trying to load.");
	if(ammo > WeaponA[playerid][slot][wWAmmo]) return SCM(playerid,COLOR_LIGHTRED,"You dont have this much ammo on you..");
	if(!GetValidWeapon(wID)) return SCM(playerid,COLOR_LIGHTRED,"This weapon is not supported.");
	GiveWeapon(playerid,wID,ammo);
	WeaponA[playerid][slot][wWAmmo] -= ammo;
	wInfo[playerid][wTotalA] -= ammo;
	CheckForEmpty(playerid);
	format(string,sizeof(string),"[ ! ] "COL_LIGHTRED"You have loaded your"COL_WHITE" %s "COL_LIGHTRED"with "COL_LIGHTRED"%d"COL_WHITE" ammo!",GetWName(wID),ammo);
	SCM(playerid,COLOR_WHITE, string);
 	new ame[128];
    format(ame,sizeof(ame),"%s takes out some ammo and loades his %s.",GetICMame(playerid),GetWName(wID));
    SetPlayerChatBubble(playerid, ame, COLOR_PURPLE, 50.0, 4000);
	return 1;
}

LEANCMD:(placeammo)
{
	if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You are not in any vehicle..");
	new ammo,slot,string[194],vehicleid = GetPlayerVehicleID(playerid);
	if(sscanf(params,"dd",ammo,slot)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /placeammo [ammo] [slot ID 1-10]");
	if(slot > 10 || slot < 1) return SCM(playerid,COLOR_LIGHTRED,"Only slot 1-10.");
	if(WeaponA[playerid][slot][wWAmmo] == 0) return SCM(playerid,COLOR_LIGHTRED,"There is nothing there.");
	if(ammo > WeaponA[playerid][slot][wWAmmo]) return SCM(playerid,COLOR_LIGHTRED,"You dont have this much ammo on you..");
	if(!GetValidWeapon(WeaponA[playerid][slot][wWType])) return SCM(playerid,COLOR_LIGHTRED,"This weapon is not supported.");

	if(CheckForEmptyVehSlot(vehicleid,weInfo[vehicleid][slot][wWType]) < 12)
	{
		// FOR PLAYER
		WeaponA[playerid][slot][wWAmmo] -= ammo;
		wInfo[playerid][wTotalA] -= ammo;
		// FOR VEHS
		new	slots = CheckForEmptyVehSlot(vehicleid,WeaponA[playerid][slot][wWType]);
		if(slots == 0){ slots = 1; }
		weInfo[vehicleid][slots][wSlot] = 1;
		weInfo[vehicleid][slots][wWType] = WeaponA[playerid][slot][wWType];
		weInfo[vehicleid][slots][wWAmmo] += ammo;
		vInfo[vehicleid][wTotalA] += ammo;
		format(string,sizeof(string),"%s puts something inside the vehicle.",GetICMame(playerid));
		SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 50.0, 4000);
		format(string,sizeof(string),"[ ! ] "COL_LIGHTRED"You have placed "COL_WHITE"%d "COL_LIGHTRED"ammo for weapon "COL_WHITE"%s "COL_LIGHTRED"into the vehicle.",ammo,GetWName(WeaponA[playerid][slot][wWType]));
		SCM(playerid,COLOR_WHITE, string);
		CheckForEmpty(playerid);
	}
	else return SCM(playerid,COLOR_LIGHTRED,"Vehicle is full.");
	return 1;
}

LEANCMD:(takevehammo)
{
	if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You are not in any vehicle..");
	new ammo,slot,string[194],vehicleid = GetPlayerVehicleID(playerid);
	if(sscanf(params,"dd",ammo,slot)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /takevehammo [ammo] [slot ID 1-10]");
	if(slot > 10 || slot < 1) return SCM(playerid,COLOR_LIGHTRED,"Only slot 1-10.");
	if(weInfo[vehicleid][slot][wWAmmo] == 0) return SCM(playerid,COLOR_LIGHTRED,"There is nothing there.");
	if(ammo > weInfo[vehicleid][slot][wWAmmo]) return SCM(playerid,COLOR_LIGHTRED,"This slot dosent have this much ammo..");

	if(CheckForEmptyVehSlot(playerid,WeaponA[playerid][slot][wWType]) < 12)
	{
		// FOR PLAYER
		new slots = CheckForEmptySlot(playerid, weInfo[vehicleid][slot][wWType]);
		if(slots == 0){ slots = 1; }
		if(Swat[playerid] == false)
		{
			if(ammo > MAX_CIV_AMMO) return SCM(playerid,COLOR_LIGHTRED,"Error: You dont have enough space for choosen amount of ammo. /myammo");
		}
		if(Swat[playerid] == true)
		{
			if(ammo > MAX_TRU_AMMO) return SCM(playerid,COLOR_LIGHTRED,"Error: You dont have enough space for choosen amount of ammo. /myammo");
		}
		WeaponA[playerid][slots][wWAmmo] += ammo;
		wInfo[playerid][wTotalA] += ammo;
		WeaponA[playerid][slots][wWType] = weInfo[vehicleid][slot][wWType];
		// FOR VEHS
		weInfo[vehicleid][slot][wWAmmo] -= ammo;
		vInfo[vehicleid][wTotalA] -= ammo;
		CheckForEmptyVeh(vehicleid);
		format(string,sizeof(string),"%s takes something from the vehicle.",GetICMame(playerid));
		SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 50.0, 4000);
		format(string,sizeof(string),"[ ! ] "COL_LIGHTRED"You have taken "COL_WHITE"%d "COL_LIGHTRED"ammo for weapon "COL_WHITE"%s "COL_LIGHTRED"from the vehicle.",ammo,GetWName(weInfo[vehicleid][slot][wWType]));
		SCM(playerid,COLOR_WHITE, string);
	}
	else return SCM(playerid,COLOR_LIGHTRED,"	Your inventory is full.");
	return 1;
}


stock CheckForEmptyVehSlot(vehicleid,wID)
{
    for(new i = 0; i < 11; i++)
    {
		if(weInfo[vehicleid][i][wWType] == wID)
		{
		    return i;
		}
		else if(weInfo[vehicleid][i][wSlot] == 0)
		{
		    return i;
		}
	}
	return false;
}



stock CheckForEmptySlot(playerid,wID)
{
    for(new i = 0; i < 11; i++)
    {
		if(WeaponA[playerid][i][wWType] == wID)
		{
		    return i;
		}
		else if(WeaponA[playerid][i][wSlot] == 0)
		{
		    return i;
		}
	}
	return false;
}



LEANCMD:(giveammo)
{
	new pid, ammo,slot;
	if(sscanf(params,"udd",pid,ammo,slot)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /giveammo [Playerid] [ammo] [slot ID 1-10]");
	if(pid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(slot > 10 || slot < 1) return SCM(playerid,COLOR_LIGHTRED,"Only slot 1-10.");
	if(WeaponA[playerid][slot][wWAmmo] == 0) return SCM(playerid,COLOR_LIGHTRED,"There is nothing there.");
	if(ammo > WeaponA[playerid][slot][wWAmmo]) return SCM(playerid,COLOR_LIGHTRED,"You dont have this much ammo on you..");
	if(CheckForEmptySlot(pid,WeaponA[playerid][slot][wWType]) < 12)
	{
	    new slots = CheckForEmptySlot(pid,WeaponA[playerid][slot][wWType]);
		new string[300];
		if(slots == 0){ slots = 1; }
		format(string,sizeof(string),""COL_WHITE"User "COL_LIGHTRED"%s "COL_WHITE"is sending you ammo.\n\nAmount: "COL_LIGHTRED"%d"COL_WHITE" for weapon"COL_LIGHTRED" %s.\n"COL_WHITE"This will save in your slot:"COL_LIGHTRED" %d",GetICMame(playerid),ammo,GetWName(WeaponA[playerid][slot][wWType]),slots);
    	ConfirmDialog(pid, "Ammo Confirmation", string, "GiveAmmoToPlayer", playerid,ammo,slot,slots);
    	SCM(playerid,COLOR_GREEN,"Request sent.");
    	return 1;
	}
	else
	{
		SCM(playerid,COLOR_LIGHTRED,"This player dosent have any empty slots.");
	}
	return 1;
}

public GiveAmmoToPlayer(playerid, response, pid,ammo,slot,slots)
{
	if(response)
	{
	        new string[128];
	        format(string,sizeof(string),"* %s takes out some ammo, handing them to %s",GetICMame(pid),GetICMame(playerid));
	        SendMeessage(playerid, string);
	        format(string,sizeof(string),"* %s has given you %d ammo for %s, this has been saved to your slot: %d.",GetICMame(pid),ammo,GetWName(WeaponA[playerid][slot][wWType]),slots);
	        SCM(playerid,COLOR_LIGHTRED, string);
	        format(string,sizeof(string),"* You have given %s ammo (%d) for weapon %s.",GetICMame(playerid),ammo,GetWName(WeaponA[playerid][1][wWType]));
	        SCM(pid,COLOR_LIGHTRED, string);
	    	// FOR PLAYERID
			WeaponA[pid][slot][wWAmmo] -= ammo;
			wInfo[pid][wTotalA] -= ammo;
			CheckForEmpty(pid);
			// FOR TARGETID
			WeaponA[playerid][slots][wWAmmo] += ammo;
			wInfo[playerid][wTotalA] += ammo;
    		WeaponA[playerid][slots][wWType] = WeaponA[pid][slots][wWType];
    		WeaponA[playerid][slots][wSlot] = 1;
	}
	else{
	SCM(playerid,COLOR_LIGHTRED,"This player has denied your ammo request.");
	SCM(pid,COLOR_LIGHTRED,"You have denied the ammo request.");
	}
	return 1;
}


#define DIALOG_AMMO 85896
LEANCMD:(myammo)
{
	new string[500];
	format(string,sizeof(string),"Current Total Ammo: %d\n[Slot 1] %s: %d\n[Slot 2] %s: %d\n[Slot 3] %s: %d\n[Slot 4] %s: %d\n[Slot 5] %s: %d\n[Slot 6] %s: %d\n[Slot 7] %s: %d\n[Slot 8] %s: %d\n[Slot 9] %s: %d\n[Slot 10] %s: %d",
	wInfo[playerid][wTotalA],
	GetWeaponNames(WeaponA[playerid][1][wWType]),
	WeaponA[playerid][1][wWAmmo],
	GetWeaponNames(WeaponA[playerid][2][wWType]),
	WeaponA[playerid][2][wWAmmo],
	GetWeaponNames(WeaponA[playerid][3][wWType]),
	WeaponA[playerid][3][wWAmmo],
	GetWeaponNames(WeaponA[playerid][4][wWType]),
	WeaponA[playerid][4][wWAmmo],
	GetWeaponNames(WeaponA[playerid][5][wWType]),
	WeaponA[playerid][5][wWAmmo],
	GetWeaponNames(WeaponA[playerid][6][wWType]),
	WeaponA[playerid][6][wWAmmo],
	GetWeaponNames(WeaponA[playerid][7][wWType]),
	WeaponA[playerid][7][wWAmmo],
	GetWeaponNames(WeaponA[playerid][8][wWType]),
	WeaponA[playerid][8][wWAmmo],
	GetWeaponNames(WeaponA[playerid][9][wWType]),
	WeaponA[playerid][9][wWAmmo],
	GetWeaponNames(WeaponA[playerid][10][wWType]),
	WeaponA[playerid][10][wWAmmo]);
	ShowPlayerDialog(playerid, DIALOG_AMMO, DIALOG_STYLE_LIST,"Your current ammo" ,string, "(._.)", "(._.)");
	return 1;
}


LEANCMD:(vehammo)
{
	new string[500], vehicleid = GetPlayerVehicleID(playerid);
	format(string,sizeof(string),"Total ammo in Vehicle: %d\n[Slot 1] %s: %d\n[Slot 2] %s: %d\n[Slot 3] %s: %d\n[Slot 4] %s: %d\n[Slot 5] %s: %d\n[Slot 6] %s: %d\n[Slot 7] %s: %d\n[Slot 8] %s: %d\n[Slot 9] %s: %d\n[Slot 10] %s: %d",
	vInfo[vehicleid][wTotalA],
	GetWeaponNames(weInfo[vehicleid][1][wWType]),
	weInfo[vehicleid][1][wWAmmo],
	GetWeaponNames(weInfo[vehicleid][2][wWType]),
	weInfo[vehicleid][2][wWAmmo],
	GetWeaponNames(weInfo[vehicleid][3][wWType]),
	weInfo[vehicleid][3][wWAmmo],
	GetWeaponNames(weInfo[vehicleid][4][wWType]),
	weInfo[vehicleid][4][wWAmmo],
	GetWeaponNames(weInfo[vehicleid][5][wWType]),
	weInfo[vehicleid][5][wWAmmo],
	GetWeaponNames(weInfo[vehicleid][6][wWType]),
	weInfo[vehicleid][6][wWAmmo],
	GetWeaponNames(weInfo[vehicleid][7][wWType]),
	weInfo[vehicleid][7][wWAmmo],
	GetWeaponNames(weInfo[vehicleid][8][wWType]),
	weInfo[vehicleid][8][wWAmmo],
	GetWeaponNames(weInfo[vehicleid][9][wWType]),
	weInfo[vehicleid][9][wWAmmo],
	GetWeaponNames(weInfo[vehicleid][10][wWType]),
	weInfo[vehicleid][10][wWAmmo]);
	ShowPlayerDialog(playerid, DIALOG_AMMO, DIALOG_STYLE_LIST,"Vehicle Ammo" ,string, "(._.)", "(._.)");
	return 1;
}




LEANCMD:(kickgroup)
{
	if(PlayerInfo[playerid][pAdmin] <= 2) return ADMIN_UNAUTHORIZED
	new targetid;
	if(sscanf(params,"u",targetid)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: "COL_WHITE"/kickgroup [PlayerID]");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(PlayerInfo[targetid][GroupID] == 0) return SCM(playerid,COLOR_LIGHTRED,"ERROR: This player is not in a group.");
	new string[128];
	new gstring[128];
    format(gstring,sizeof(gstring),"%s has been kicked out of your group by admin %s.",GetName(targetid),GetName(playerid));
    SendGroupMessage(targetid,COLOR_TESTER,gstring);
	format(string,sizeof(string),"AdmWarn(%d): %s has kicked %s out of group %s (ID: %d).",ALEVEL,GetName(playerid),GetName(targetid),GroupInfo[PlayerInfo[targetid][GroupID]][GroupName],PlayerInfo[targetid][GroupID]);
	SendAdminMessage(COLOR_YELLOW,string);
	format(string,sizeof(string),"AdmCmd: "COL_WHITE" You have been kicked from group %s by %s.",GroupInfo[PlayerInfo[targetid][GroupID]][GroupName],GetName(playerid));
	SCM(targetid,COLOR_LIGHTRED,string);
	PlayerInfo[targetid][GroupID] = 0;
	return 1;
}
forward leavegroups(playerid, response);

LEANCMD:(leavegroup)
{
    if(PlayerInfo[playerid][GroupID] == 0) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You are not in a group.");
   	new string[170];
	format(string,sizeof(string),"Are you sure you want to leave group "COL_SENDPM"%s (%d) ?",GroupInfo[PlayerInfo[playerid][GroupID]][GroupName],PlayerInfo[playerid][GroupID]);
    ConfirmDialog(playerid, "Leaving group.", string, "leavegroups");
	return 1;
}

public leavegroups(playerid, response)
{
	if(response)
	{
	        new gstring[128],string[128];
	        format(gstring,sizeof(gstring),"%s has left your group.",GetName(playerid));
    		SendGroupMessage(playerid,COLOR_TESTER,gstring);
    		format(string,sizeof(string),"AdmWarn: %s has left group %s (ID: %d).",GetName(playerid),GroupInfo[PlayerInfo[playerid][GroupID]][GroupName],PlayerInfo[playerid][GroupID]);
			SendAdminMessage(COLOR_YELLOW,string);
			SCM(playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"You have left the group.");
			PlayerInfo[playerid][GroupID] = 0;
	}
	return 1;
}




LEANCMD:(groups)
{

		new tmpString[128], tpDialog[1000];

		for(new x = 1; x < MAX_GROUPS; x++)
		{
		    if(GroupInfo[x][GroupExist] == 1)
		    {
		        format(tmpString, sizeof(tmpString), "%s (ID: %d)\n", GroupInfo[x][GroupName], x);
		        strcat(tpDialog, tmpString);
		    }
		}

		ShowDialog(playerid, Show:GroupDialog, DIALOG_STYLE_LIST, "Ranks", tpDialog, "Submit", "Cancel");
		return 1;
}


Dialog:GroupDialog(playerid, response, listitem, inputtext[])
{

	return 1;
}


LEANCMD:(creategroup)
{
		#if defined TRAINING_SASD
	    if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	    #endif
	    #if defined TRAINING_METRO
	    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    	#endif
		new input[MAX_GROUP_STRING], string[128], leanquery[128];
        if(sscanf(params, "s[24]", input)) return SendClientMessage(playerid,-1, "USAGE: /creategroup [GroupName]");

		new c = strlen (input);

  		if(c > MAX_GROUP_STRING) return SCM(playerid, COLOR_LIGHTRED, "ERROR: Maximum group name length is 24 characters.");

        new id = GetNextGroupID();

        GroupInfo[id][GroupName] = input;

        mysql_format(mysql, leanquery, sizeof(leanquery), "INSERT INTO `seb-groups` (`gName`) VALUES ('%s')", GroupInfo[id][GroupName]);
        mysql_tquery(mysql, leanquery, "", "");

        LoadGroups();

		SendClientMessage(playerid,COLOR_GREEN,"Group Created");
		format(string, sizeof(string), "AdmWarn(%d): %s has created a group with the name %s.",ALEVEL,GetName(playerid),input, id);
		SendAdminMessage(COLOR_YELLOW,string);
		SCM(playerid, COLOR_LIGHTRED, "/groups to see the ID.");

        return 1;
}


forward invitegroup(playerid, response,targetid, id);

LEANCMD:(setgroup)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    #endif


  	new id,targetid, string[126];
  	if(sscanf(params,"ud",targetid,id)) return SendClientMessage(playerid, COLOR_LIGHTRED, "USAGE: "COL_WHITE"/setgroup [PlayerID/PartOfName] [GROUPID] /GROUPS FOR IDS");
  	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
  	if(id == 0 || GroupInfo[id][GroupExist] == 0) return SCM(playerid,COLOR_YELLOW,"INVALID GROUP ID! /groups");
    if(id == 1 && PlayerInfo[playerid][pAdmin] < 4 || id == 2 && PlayerInfo[playerid][pAdmin] < 4) SCM(playerid, COLOR_LIGHTRED, "There is no need for you to invite someone to this group.");
  	if(targetid != playerid)
  	{
  		SCM(playerid,COLOR_GREEN,"Invite sent.");
		format(string,sizeof(string),"Admin: %s has sent you an invite to join Group: %s(%d)\n",GetName(playerid),GroupInfo[id][GroupName],id);
    	ConfirmDialog(targetid, "Group Invatation", string, "invitegroup", playerid, id);
    	return 1;
    }
    else
	{
  		format(string,sizeof(string),"AdmCmd(%d): %s has set their group to: %s (ID: %d).",ALEVEL, GetName(playerid),GroupInfo[id][GroupName],id);
  		SendAdminMessage(COLOR_YELLOW,string);
    	PlayerInfo[targetid][GroupID] = id;
		mysql_format(mysql, string, sizeof(string), "UPDATE `seb-users` SET `GroupID` = '%d' WHERE `ID` = '%d'", id, PlayerInfo[playerid][userid]);
		mysql_tquery(mysql, string, "", "");
    	return 1;
	}


}


LEANCMD:(deletegroup)
{
	new tmpTpID = GetNextRankID(), tpIDToChange, tpIDDel, ottquery[65], ottquery2[50], string[128];
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"d",tpIDDel)) return SendClientMessage(playerid, -1, "USAGE: /deletegroup [GroupID]");
	if(GroupInfo[tpIDDel][GroupExist] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Group ID specified is not in use!");
	if(tpIDDel == 1 && PlayerInfo[playerid][pAdmin] <= 4) return ADMIN_UNAUTHORIZED

	tpIDToChange = tmpTpID - 1;
	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-groups` SET `gID` = '%d' WHERE `gID` = '%d'", tpIDDel, tpIDToChange);
	mysql_format(mysql, ottquery2, sizeof(ottquery2), "DELETE FROM `seb-groups` WHERE `gID` = '%d'", tpIDDel);
	mysql_tquery(mysql, ottquery2, "", "");
	mysql_tquery(mysql, ottquery, "", "");

	RANKINFO[tpIDDel][RankExist] = 0;
	format(string, sizeof(string), "AdmWarn(%d): %s has deleted group %s (%d).", PlayerInfo[playerid][pAdmin], GetName(playerid), GroupInfo[tpIDDel][GroupName],tpIDDel);
	SendAdminMessage(COLOR_YELLOW, string);

	LoadGroups();
	return 1;
}



LEANCMD:(invitetoru)
{
	if(PlayerInfo[playerid][GroupID] != 4 && PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
  	new targetid, string[126];
  	if(sscanf(params,"u",targetid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "USAGE: "COL_WHITE"/invitetoru [PlayerID/PartOfName]");
  	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	format(string,sizeof(string),"AdmCmd(%d): %s has invited %s to group %s (ID: 5).",ALEVEL, GetName(playerid), GetName(targetid), GroupInfo[5][GroupName]);
	SendAdminMessage(COLOR_YELLOW,string);
	PlayerInfo[targetid][GroupID] = 5;
	SCM(playerid, COLOR_LIGHTRED, string);
	return 1;

}



public invitegroup(playerid, response, targetid, id)
{
	if(response)
	{
	    new string[128];
		format(string,sizeof(string),"GROUPS: "COL_WHITE"You have been invited to group %s by Admin %s.",GroupInfo[id][GroupName],GetName(playerid));
  		SCM(playerid, COLOR_LIGHTRED, string);
  		format(string,sizeof(string),"AdmCmd: %s has invited %s to group: %s (ID: %d).",GetName(targetid),GetName(playerid),GroupInfo[id][GroupName],id);
  		SendAdminMessage(COLOR_YELLOW,string);
    	PlayerInfo[playerid][GroupID] = id;
		mysql_format(mysql, string, sizeof(string), "UPDATE `seb-users` SET `GroupID` = '%d' WHERE `ID` = '%d'", id, PlayerInfo[playerid][userid]);
		mysql_tquery(mysql, string, "", "");
    	new gstring[128];
    	format(gstring,sizeof(gstring),"%s has been invited to your group by admin %s.",GetName(playerid),GetName(targetid));
    	SendGroupMessage(targetid,COLOR_TESTER,gstring);
    	if(id == 4 || id == 5)
    	{
			SCM(playerid, COLOR_LIGHTRED, "You have been invited to RU group, check /ruhelp for available commands.");
		}
		if(id == 6)
		{
			SCM(playerid, COLOR_LIGHTRED, "You are a member of HSIU command group, check /hsiuhelp for available commands.");
		}
    	return 1;
	}
	return 1;
}





LEANCMD:(clearchat)
{
    for(new i = 0; i < 25; i++)
    {
		SCM(playerid,-1,"");
	}
	return 1;
}


LEANCMD:(math)
{
	new m1,m2,mv[2],string[128];
	if(sscanf(params,"ds[2]d",m1,mv,m2)) return SCM(playerid,COLOR_GREY,"USAGE: /math [First Value] [arithmetic operations ( - + * / )] [Second Value]");

	if(strcmp(mv,"/",true) == 0)
	{
		new final;
		final = (m1 / m2);
		format(string,sizeof(string),"MATHS: "COL_WHITE"%d "COL_LIGHTRED"/"COL_WHITE" %d = "COL_LIGHTRED"%d",m1,m2,final);
		SCM(playerid,COLOR_LIGHTRED,string);
		return 1;
	}
	if(strcmp(mv,"-",true) == 0)
	{
		new final;
		final = (m1 - m2);
		format(string,sizeof(string),"MATHS: "COL_WHITE"%d "COL_LIGHTRED"-"COL_WHITE" %d = "COL_LIGHTRED"%d",m1,m2,final);
		SCM(playerid,COLOR_LIGHTRED,string);
		return 1;
	}
	if(strcmp(mv,"+",true) == 0)
	{
		new final;
		final = (m1 + m2);
		format(string,sizeof(string),"MATHS: "COL_WHITE"%d "COL_LIGHTRED"+"COL_WHITE" %d = "COL_LIGHTRED"%d",m1,m2,final);
		SCM(playerid,COLOR_LIGHTRED,string);
		return 1;
	}
	if(strcmp(mv,"*",true) == 0)
	{
		new final;
		final = (m1 * m2);
		format(string,sizeof(string),"MATHS: "COL_WHITE"%d "COL_LIGHTRED"*"COL_WHITE" %d = "COL_LIGHTRED"%d",m1,m2,final);
		SCM(playerid,COLOR_LIGHTRED,string);
		return 1;
	}
	return 1;
}





LEANCMD:(helithermal)
{
	new vehi = GetPlayerVehicleID( playerid );
	if( IsPlayerInAnyVehicle(playerid) ) // Checking if player is in any vehicle at all
	{
		if( GetVehicleModel( vehi ) == 497 ) // If player was in vehicle ,we now check if he is in police helicopter
		{
	    	if( GetPlayerVehicleSeat(playerid) == 1 ) // Checking if he is in passenger seat
	    	{

	    		if( GetPVarInt( playerid, "ThermalActive" ) == 0 ) // If player dosent have thermalactive
	    		{
                	THERMALON( playerid, vehi ); // We now set the player in thermal mode.
                	return 1;
				}
				else // IF he wasent in thermalmode
				{
                	THERMALOFF( playerid ); // We now set the player back to normal
                	return 1;
				}
			}
			else return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"This is for co-pilots only. ((FRONT PASSANGER))." );
		}
		else return SCM(playerid, COLOR_LIGHTRED,"ERROR: "COL_WHITE"This vehicle is not supported with a thermal camera.");
	}
	else return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You are not in any vehicle.");
}




LEANCMD:(no)
{
	new id;
	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"u",id)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: "COL_WHITE"/no [ID]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(ISREQUESTING[id] == false) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"THIS PLAYER IS NOT REQUESTING AN ACCOUNT");
	SCM(id,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"An admin has declined your request to get an account on Leans Training Server.");
	SetTimerEx("Kicku", 500, false, "i", id);
	return 1;
}



LEANCMD:(fid)
{
    if(PlayerInfo[playerid][pAdmin] < 4 && grantbuild[playerid] == false) return ADMIN_UNAUTHORIZED

	new furnID, fname[64];
	if(sscanf(params,"ds[64]", furnID, fname)) return SCM(playerid,COLOR_WHITE, "USAGE: /fid [FURNITURE ID] [COMMENT(ex: couch)");
  	new	Float:X[3], ID = GetNextFurnitureID();
   	GetPlayerPos( playerid, X[0], X[1], X[2] );
    idd[playerid] = ID;
    fInfo[ID][FUROBJECTID] = (ID);
    fInfo[ID][FurExist] = 2;
    fInfo[ID][FUROBJECTID] = CreateDynamicObject( furnID, X[0], X[1]-2, X[2], 0.0, 0.0, 0.0, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, -1, 200.0); // Creating the graffiti for player
    fOBJECT[playerid] = fInfo[ID][FUROBJECTID];
    fOBJECTID[playerid] = furnID;
    format(fOBJECTNAME[playerid], sizeof(fOBJECTNAME), fname);
    SetPVarInt( playerid, "Furnituring", 1 );
    EditDynObject(playerid, fInfo[ID][FUROBJECTID]);
  	return 1;
}



LEANCMD:(tempyes)
{
	new id;
	if(PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 12) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"d",id)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: "COL_WHITE"/tempyes [ID]");
	if(ISREQUESTING[id] == false) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"This player is not requesting an account.");
	ISREQUESTING[id] = false;
	new string[170];
	format(string,sizeof(string),""COL_WHITE"Are you sure you want to create an  account for "COL_LIGHTRED"%s?\n"COL_WHITE" This will be an "COL_LIGHTRED"TEMPORARY "COL_WHITE"account!",GetName(id));
    ConfirmDialog(playerid, "Confirmation", string, "tempyes", id);
    return 1;
}



LEANCMD:(yes)
{
	new id;
	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"u",id)) return SCM(playerid, COLOR_LIGHTRED,"USAGE: "COL_WHITE"/yes [playerid]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(ISREQUESTING[id] == false) return SCM(playerid, COLOR_LIGHTRED,"ERROR: "COL_WHITE"THIS PLAYER IS NOT REQUESTING AN ACCOUNT.");
	ISREQUESTING[id] = false;
	new string[170];
	format(string,sizeof(string),""COL_WHITE"Are you sure you want to create an account for "COL_LIGHTRED"%s?\n"COL_WHITE"This will be an "COL_LIGHTRED"permanent "COL_WHITE"account!",GetName(id));
    ConfirmDialog(playerid, "Confirmation", string, "yes", id);
    return 1;
}






LEANCMD:(t)
{

	if (muted[playerid] == true || BWMODE[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
		return 1;
	}
	if ((noic) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, IC_DISABLED_ATTEMPT_MESSAGE);
		return 1;
	}
	
	new string[MAX_PLAYER_NAME + 146];
	if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_GREY,"USAGE: /t [IC TEXT]");
	format(string, sizeof(string), "%s says: %s", GetICMame(playerid), params);
	SendTextMessage(playerid, string);
	format(string,sizeof(string),"%s says: %s ",GetDay(),GetMonth(),GetYear(),GetICMame(playerid), params);
	WriteLog("Chat", string);
	return 1;
}

LEANCMD:(911)
{
	SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE" Use '/call 911' in order to call 911.");
	return 1;
}





LEANCMD:(takeweapons)
{
	new targetid, string[MAX_PLAYER_NAME+MAX_PLAYER_NAME+21];
	if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "Usage: /takeweapons [Playerid/PartOfName]");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(AdminDuty[targetid] == true) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This player is on adminduty.");
	if(IsPlayerNearPlayer(playerid, targetid, 5.0))
	{
		ResetWeapons(targetid);
		format(string,sizeof(string),"%s takes %s' weapons.",GetICName(playerid),GetICName(targetid));
		ProxDetector(15.0, playerid, string,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
	}
	else
	{
		SCM(playerid, COLOR_LIGHTRED, "You're too far away from this player.");
	}
	return 1;
}



LEANCMD:(respawnme)
{
	if(RESPAWNME[playerid] == false) return SCM(playerid,COLOR_YELLOW,"You need to /acceptdeath first..");
	KillTimer(respawntimer[playerid]);
	RESPAWNME[playerid] = false;
	DM[playerid] = false;
	DM1[playerid] = false;
	DEAD[playerid] = false;
	BWMODE[playerid] = false;
	cdead[playerid] = false;
	TogglePlayerControllable(playerid, 1);
	SetPlayerChatBubble(playerid,"* Spawned.",COLOR_LIGHTRED,50.0, 2000);
	SetPlayerWeather(playerid, GetWeatherID());
	SetPlayerHealthEx(playerid, 0);
	dmSent[playerid] = false;
	return 1;
}

LEANCMD:(acceptdeath)
{
	if(DM[playerid] == false) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE" You are not Brutally wounded.");
	DPDD(playerid);
	return 1;
}


LEANCMD:(revive)
{
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    new string[128],id;
    if(sscanf(params,"u",id)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /revive ID");
    if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
    format(string,sizeof(string), "AdmCmd(%d): %s has revived %s(%d).",ALEVEL,GetName(playerid),GetName(id),id);
    SendAdminMessage(COLOR_YELLOW, string);
    SetPlayerHealthEx(id, SPAWNHEALTH);
	TogglePlayerControllable(id, 1);
	DM[id] = false;
	DM1[id] = false;
	DEAD[id] = false;
	BWMODE[id] = false;
	dmSent[id] = false;
	cdead[id] = false;
	KillTimer(drt[id]);
	KillTimer(respawntimer[id]);
	SetPlayerChatBubble(id, "* Revived.", COLOR_LIGHTRED, 15.0, 3200);
	new rand = random(10);
	if(rand == 0)
	{
	    SCM(playerid, COLOR_LIGHTRED, "[HINT] "COL_WHITE"/reviveall in order to revive everyone!");
	}
	return 1;
}

LEANCMD:(reviveall)
{
   new
		 string[126];


   if( PlayerInfo[playerid][pAdmin] < 3 ) return ADMIN_UNAUTHORIZED
   EachPlayer(id)
   {
                SetPlayerHealthEx(id, SPAWNHEALTH);
				TogglePlayerControllable(id, 1);
				DM[id] = false;
				DM1[id] = false;
				DEAD[id] = false;
				BWMODE[id] = false;
				dmSent[playerid] = false;
				KillTimer(drt[id]);
				KillTimer(respawntimer[id]);
				SetPlayerChatBubble(id, "* Revived.", COLOR_LIGHTRED, 15.0, 3200);
   }
   format(string,sizeof(string), "AdmWarn(%i): %s has revived all players'.",PlayerInfo[playerid][pAdmin], GetName(playerid));
   SendAdminMessage(COLOR_YELLOW, string);
   return 1;
}



LEANCMD:(ranks)
{

		new tmpString[128], tpDialog[1000];

		for(new x = 1; x < MAX_RANKS; x++)
		{
		    if(RANKINFO[x][RankExist] == 1)
		    {
		        format(tmpString, sizeof(tmpString), "%s (%d)\n", RANKINFO[x][RankName], x);
		        strcat(tpDialog, tmpString);
		    }
		}

		ShowDialog(playerid, Show:RankMenus, DIALOG_STYLE_LIST, "Ranks", tpDialog, "Submit", "Cancel");
		return 1;
}


Dialog:RankMenus(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
            selectedrankid[playerid] = listitem+1;
			new string[128];
            format(string,sizeof(string),"Selected Rank: %s",RANKINFO[selectedrankid[playerid]][RankName]);
            ShowDialog(playerid, Show:RankMenusOption, DIALOG_STYLE_LIST, string, "Set a player this rank", "Submit", "Cancel");
        }
	return 1;
}

Dialog:RankMenusOption(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem == 0)
            {
	            new string[22+MAX_PLAYER_NAME];
	            new players[600];
	            for(new i; i < MAX_PLAYERS; i++)
				{
					format(string,sizeof(string),"[ ! ] %s (ID: %d)\n",GetName(i),i);
					strcat(players,string);
				}
	            ShowDialog(playerid, Show:RankMenusOptionPlayer, DIALOG_STYLE_LIST, "Select a player.", players, "Submit", "Cancel");
			}
		}
	else ShowDialog(playerid, Show:RankMenus, DIALOG_STYLE_LIST, "Rank menu", "Set a player this rank\nEdit Rank Name", "Submit", "Cancel");
	return 1;
}

Dialog:RankMenusOptionPlayer(playerid, response, listitem, inputtext[])
{
	if(response)
        {
            new string[64];
            selectedplayer[playerid] = listitem;
            format(string,sizeof(string),"Player: %s (ID: %d) \nRank Selected %s(%d)",GetName(selectedplayer[playerid]),selectedplayer[playerid],RANKINFO[selectedrankid[playerid]][RankName],selectedrankid[playerid]);
            ShowDialog(playerid, Show:RankMenusConf, DIALOG_STYLE_MSGBOX, "Select a player.", string, "Confirm", "Cancel");
        }
	else ShowDialog(playerid, Show:RankMenusOption, DIALOG_STYLE_LIST, "Rank menu", "Set a player this rank\nEdit Rank Name", "Submit", "Cancel");
	return 1;
}



Dialog:RankMenusConf(playerid, response, listitem, inputtext[])
{
	if(response)
        {
                new targetid = selectedplayer[playerid];
                new rankid = selectedrankid[playerid];
            	new string[128];
				format(string, sizeof(string), "AdmCmd: %s has set the rank '"COL_WHITE"%s(%d)"COL_LIGHTRED"' on player %s.",GetName(playerid),RANKINFO[rankid][RankName],rankid, GetName(targetid));
				SendClientMessageToAll(COLOR_LIGHTRED, string);

				format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has set the rank '"COL_WHITE"%s(%d)"COL_LIGHTRED"' on player %s.",GetName(playerid),RANKINFO[rankid][RankName],rankid, GetName(targetid));
     			IRC_GroupSayEx(string);
				PlayerInfo[targetid][Rank] = rankid;
        }
	else ShowDialog(playerid, Show:RankMenusOption, DIALOG_STYLE_LIST, "Rank menu", "Set a player this rank\nEdit Rank Name", "Submit", "Cancel");
	return 1;
}


LEANCMD:(groupname)
{
	new groupname[MAX_GROUP_STRING], group, string[126], leanquery[95];

	if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED


	if(sscanf(params,"ds[24]",group,groupname)) return SendClientMessage(playerid,-1, "USAGE: /groupname [groupid] [NEWNAME] "COL_ORANGE" [/groups to get the ID.]");

	if(GroupInfo[group][GroupExist] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Group ID specified is not in use!");


	new c = strlen (groupname);
	if(c > 64) return SCM(playerid,COLOR_LIGHTRED,"ERROR: Maximum rankname length is 24 characters.");

	GroupInfo[group][GroupName] = groupname;

 	mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-groups` SET `gName` = '%s' WHERE `gID` = '%d'", groupname, group);
 	mysql_tquery(mysql, leanquery, "", "");

	format(string, sizeof(string), "AdmWarn(%i): %s has renamed group '%s(%d)' to %s.",PlayerInfo[playerid][pAdmin],GetName(playerid),GroupInfo[group][GroupName],group,groupname);
	SendAdminMessage(COLOR_YELLOW, string);

 	LoadRanks();

	return 1;
}


LEANCMD:(setrank)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    #endif


	new rankid, targetid, string[126];
	if(sscanf(params,"ud",targetid,rankid)) return SendClientMessage(playerid, -1, "USAGE: /setrank [Playerid] [RankID] - "COL_ORANGE" /ranks to see the ranks");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

	if(RANKINFO[rankid][RankExist] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Rank ID specified is not in use!");

	format(string, sizeof(string), "AdmCmd: %s has set the rank '"COL_WHITE"%s(%d)"COL_LIGHTRED"' on player %s.",GetName(playerid),RANKINFO[rankid][RankName],rankid, GetName(targetid));
	SendClientMessageToAll(COLOR_LIGHTRED, string);

	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has set the rank '"COL_WHITE"%s(%d)"COL_LIGHTRED"' on player %s.",GetName(playerid),RANKINFO[rankid][RankName],rankid, GetName(targetid));
 	IRC_GroupSayEx(string);


	PlayerInfo[targetid][Rank] = rankid;
	return 1;
}

LEANCMD:(fixr)
{
    StopAudioStreamForPlayer(playerid);
    return 1;
}


LEANCMD:(setstation)
{
				if(sscanf(params, "s[128]", params)) return ShowDialog(playerid, Show:XMRadioStation, DIALOG_STYLE_LIST, "Dynamic Radio System by Lean", "Stations\nTurn Off\n"COL_LIGHTRED"Admin Menu", "Select", "Cancel");
				if(strcmp(params,"off",true) == 0)
				{

	            	if(!IsPlayerInAnyVehicle(playerid))
					{
	            		StopAudioStreamForPlayer(playerid);
	            		SendClientMessage(playerid, COLOR_LIGHTRED, "Radio turned off.");
	            		listeningXMR[playerid] = false;
	            		return 1;
					}
	   				if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	    			{
	   					new currentveh = GetPlayerVehicleID(playerid);
	   					VEHLISTEN[currentveh] = false;
	     				EachPlayer(i)
	         			{
				          	if(IsPlayerInVehicle(i, currentveh))
				          	{
				          	    SendClientMessage(i, COLOR_LIGHTRED, "Radio turned off.");
					        	StopAudioStreamForPlayer(i);
							}
						}
						return 1;
					}
				}
				else
				{
					new DynamicID,string[128];
					if(sscanf(params,"d",DynamicID)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /setstation [id]");
                    if(XMRInfo[DynamicID][XMRExist] == 0) return SCM(playerid, COLOR_LIGHTRED," Station does not exist asd.");
			    	if(!IsPlayerInAnyVehicle(playerid))
					{

						PlayAudioStreamForPlayer(playerid, XMRInfo[DynamicID][XMStation]);
						format(string, sizeof(string), "You are now listening to {FF9900}%s",XMRInfo[DynamicID][XMName],GetICName(playerid));
						SendClientMessage(playerid, COLOR_GREEN, string);
				  		format(string,sizeof(string),"> %s has tuned the radio to %s",GetICMame(playerid),XMRInfo[DynamicID][XMName]);
				    	SetPlayerChatBubble(playerid, string, COLOR_LIGHTGREEN, 20.0, 5000);
				    	listeningXMR[playerid] = true;
						return 1;

					}
			    	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
			    	{

			    	      		format(string,sizeof(string),"> %s has tuned the radio to %s",GetICMame(playerid),XMRInfo[DynamicID][XMName]);
			    				SetPlayerChatBubble(playerid, string, COLOR_LIGHTGREEN, 20.0, 5000);
								SCM(playerid,COLOR_GREEN,string);
								format(string,sizeof(string),"-> Radio station changed to %s",XMRInfo[DynamicID][XMName]);
			     				new currentveh = GetPlayerVehicleID(playerid);
			     				VEHLISTEN[currentveh] = true;
			     				strmid(VEHURL[currentveh] , XMRInfo[DynamicID][XMStation], 0, strlen(XMRInfo[DynamicID][XMStation]), 96);
			     				EachPlayer(i)
			         			{
						          	if(IsPlayerInVehicle(i, currentveh))
						          	{
						          	    PlayAudioStreamForPlayer(i, XMRInfo[DynamicID][XMStation]);
							        	SendClientMessage(i, COLOR_LIGHTRED, string);
							        	vehplayer[i] = 1;
									}
								}
								return 1;
					}
					else return SCM(playerid,COLOR_LIGHTRED,"   Only for drivers and front passangers.");
				}
				return 1;
}



Dialog:XMRadioStation(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
            if(listitem == 0) //
            {
                SCM(playerid, -1, "Showing Radio list!");
	            new tmpString[128], tpDialog[1000];

		        for(new x = 1; x < MAX_STATIONS; x++)
		        {
		            if(XMRInfo[x][XMRExist] == 1)
		            {
						format(tmpString, sizeof(tmpString), "%s (ID: %d)\n",XMRInfo[x][XMName],x);
						strcat(tpDialog, tmpString);
					}
				}
				ShowDialog(playerid, Show:XM_List_1, DIALOG_STYLE_LIST, "XM Radio List", tpDialog, "Select", "<<");
		    
            }
            if(listitem == 1)
            {
                listeningXMR[playerid] = false;
            	if(!IsPlayerInAnyVehicle(playerid))
				{
            		StopAudioStreamForPlayer(playerid);
            		SendClientMessage(playerid, COLOR_LIGHTRED, "Radio turned off.");
            		return 1;
				}
   				if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
    			{
   					new currentveh = GetPlayerVehicleID(playerid);
   					VEHLISTEN[currentveh] = false;
     				EachPlayer(i)
         			{
			          	if(IsPlayerInVehicle(i, currentveh))
			          	{
			          	    SendClientMessage(i, COLOR_LIGHTRED, "Radio turned off.");
				        	StopAudioStreamForPlayer(i);

						}
					}
					return 1;
				}
            }
            if(listitem == 2)
            {
                if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
                ShowDialog(playerid, Show:XMRadioAMenu, DIALOG_STYLE_LIST, "Dynamic Radio System by Lean", "Create XM Radio Station\nEdit Station", "Select", "Cancel");
			}
	}
	return 1;
}


Dialog:XM_List_1(playerid, response, listitem, inputtext[])
{
	new DynamicID = listitem+1;
	new string[128];
	if(!response)
	{
		ShowDialog(playerid, Show:XMRadioStation, DIALOG_STYLE_LIST, "Dynamic Radio System by Lean", "Stations\nTurn Off\n"COL_LIGHTRED"Admin Menu(Admins Only)", "Select", "Cancel");
		return 1;
	}
	listeningXMR[playerid] = true;
	if(!IsPlayerInAnyVehicle(playerid))
	{
		PlayAudioStreamForPlayer(playerid, XMRInfo[DynamicID][XMStation]);
		format(string, sizeof(string), "You are now listening to {FF9900}%s",XMRInfo[DynamicID][XMName],GetICName(playerid));
		SendClientMessage(playerid, COLOR_GREEN, string);
		format(string,sizeof(string),"> %s has tuned the radio to %s",GetICMame(playerid),XMRInfo[DynamicID][XMName]);
		SetPlayerChatBubble(playerid, string, COLOR_LIGHTGREEN, 200.0, 5000);
		return 1;
	}
	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	{

		format(string,sizeof(string),"> %s has tuned the radio to %s",GetICMame(playerid),XMRInfo[DynamicID][XMName]);
		SetPlayerChatBubble(playerid, string, COLOR_LIGHTGREEN, 200.0, 5000);
		SCM(playerid,COLOR_GREEN,string);
		format(string,sizeof(string),"-> Radio station changed to %s",XMRInfo[DynamicID][XMName]);
		new currentveh = GetPlayerVehicleID(playerid);
		VEHLISTEN[currentveh] = true;
		strmid(VEHURL[currentveh] , XMRInfo[DynamicID][XMStation], 0, strlen(XMRInfo[DynamicID][XMStation]), 96);
		EachPlayer(i)
		{
			if(IsPlayerInVehicle(i, currentveh))
			{
				PlayAudioStreamForPlayer(i, XMRInfo[DynamicID][XMStation]);
				SendClientMessage(i, COLOR_LIGHTRED, string);
				vehplayer[i] = 1;
			}
		}
		return 1;
	}
	else return SCM(playerid,COLOR_LIGHTRED,"   Only for drivers and front passangers.");

}



Dialog:XMRadioAMenu(playerid, response, listitem, inputtext[])
{
	if(response)
 	{
            if(listitem == 0) //
            {
                ShowDialog(playerid, Show:XMRadioCreate, DIALOG_STYLE_INPUT, "Xm Radio > Admin Menu > Input name","Please input the Station name:", "Select", "Cancel");
            }
            if(listitem == 1)
            {
            	new DynamicString[560];
	        	for(new ID = 1; ID < MAX_STATIONS; ID++)
	        	{
	        	    if(XMRInfo[ID][XMRExist] == 1)
					format(DynamicString, sizeof(DynamicString), "%s\n%s (ID: %d)\n",DynamicString,XMRInfo[ID][XMName],ID);
				}
	        	ShowDialog( playerid, Show:XMRadioEdit, DIALOG_STYLE_LIST,"Select a station to edit", DynamicString, "Select", "Cancel" );
            }
	}
	else
	{
	    ShowDialog(playerid, Show:XMRadioStation, DIALOG_STYLE_LIST, "Dynamic Radio System by Lean", "Create XM Radio Station\nEdit Station", "Select", "Cancel");
	}
	return 1;
}

new XMRadio[64],XMURL[96];

new Sstationid;

Dialog:XMRadioEdit(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
		Sstationid = listitem+1;
 	    new dString[ 256 ];
 	    format( dString, sizeof( dString ),"Selected Station: "COL_LIGHTRED"%s",XMRInfo[listitem][XMName]);
        ShowDialog( playerid, Show:XMRadioNName, DIALOG_STYLE_LIST,dString, "Edit Station Name\nEdit URL", "Select", "Cancel" );
	}
	else
	{
		new DynamicString[560];
  		for(new ID = 0; ID < MAX_STATIONS; ID++)
   		{
   		    if(XMRInfo[ID][XMRExist] == 1)
			format(DynamicString, sizeof(DynamicString), "%s\n%s (ID: %d)\n",DynamicString,XMRInfo[ID][XMName],ID);
		}
		ShowDialog(playerid, Show:XMRadioStation, DIALOG_STYLE_LIST, "Select XM Radio station to Edit", DynamicString, "Select", "Cancel");
	}
	return 1;
}


Dialog:XMRadioNName(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
	    if(listitem == 0)
	    {
	        ShowDialog(playerid, Show:XMRadioENAME, DIALOG_STYLE_INPUT, "Xm Radio > Admin Menu > Edit Name","Please input the new Station name", "Select", "Cancel");
		}
		if(listitem == 1)
		{
		    ShowDialog(playerid, Show:XMRadioEURL, DIALOG_STYLE_INPUT, "Xm Radio > Admin Menu > Edit URL","Please input the new URL link", "Select", "Cancel");
		}
	}
	else
	{
		Sstationid = listitem+1;
 	    new dString[ 256 ];
 	    format( dString, sizeof( dString ),"Selected Station: "COL_LIGHTRED"%s",XMRInfo[listitem][XMName]);
        ShowDialog( playerid, Show:XMRadioEdit, DIALOG_STYLE_LIST,dString, "Edit Station Name\nEdit URL", "Select", "Cancel" );
	}
	return 1;
}



Dialog:XMRadioENAME(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
			new string[126],ottquery[200];
			if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
			format(string, sizeof(string), "AdmWarn(%i): %s has renamed Station '%s(%d)' to %s.",PlayerInfo[playerid][pAdmin],GetName(playerid),XMRInfo[Sstationid][XMName],Sstationid,inputtext);
			SendAdminMessage(COLOR_YELLOW, string);
			strmid(XMRInfo[Sstationid][XMName] , inputtext, 0, strlen(inputtext), 64);

		 	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-stations` SET `sName` = '%s' WHERE `sID` = '%d'", inputtext, Sstationid);
		 	mysql_tquery(mysql, ottquery, "", "");

			LoadStations();
	}
	else
	{
	    ShowDialog(playerid, Show:XMRadioAMenu, DIALOG_STYLE_INPUT, "Xm Radio > Admin Menu > Input name","Please input the Station name:", "Select", "Cancel");
	}
	return 1;
}


Dialog:XMRadioEURL(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
		new string[126], ottquery[200];
		strmid(XMRInfo[Sstationid][XMStation] , inputtext, 0, strlen(inputtext), 96);
		format(string, sizeof(string), "AdmWarn(%i): %s has renamed Station URL '%s(%d)' to %s.",PlayerInfo[playerid][pAdmin],GetName(playerid),XMRInfo[Sstationid][XMStation],Sstationid,inputtext);
		SendAdminMessage(COLOR_YELLOW, string);

 		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-stations` SET `sUrl` = '%s' WHERE `sID` = '%d'", inputtext, Sstationid);
		mysql_tquery(mysql, ottquery, "", "");

		LoadStations();
	}
	else
	{
	    ShowDialog(playerid, Show:XMRadioAMenu, DIALOG_STYLE_INPUT, "Xm Radio > Admin Menu > Input name","Please input the Station name:", "Select", "Cancel");
	}
	return 1;
}



Dialog:XMRadioCreate(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
 	    format(XMRadio, sizeof(XMRadio),inputtext);
 	    new dString[ 256 ];
 	    format( dString, sizeof( dString ),""COL_WHITE"Selected Name: "COL_LIGHTRED"%s\n\n "COL_WHITE"You are now at the last step, please input the "COL_LIGHTRED"URL"COL_WHITE" of the station.\nExample: "COL_LIGHTRED"http://79.141.174.206:22000",inputtext);
        ShowDialog( playerid, Show:XMRadioURL, DIALOG_STYLE_INPUT,"XM Radio > Admin Menu > Input URL", dString, "Select", "Cancel" );
	}
	else
	{
	    ShowDialog(playerid, Show:XMRadioAMenu, DIALOG_STYLE_INPUT, "Xm Radio > Admin Menu > Input name","Please input the Station name:", "Select", "Cancel");
	}
	return 1;
}


Dialog:XMRadioURL(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
 	    format(XMURL, sizeof(XMURL),inputtext);
 	    PlayAudioStreamForPlayer(playerid, XMURL);
 	    new dString[ 356 ];
 	    format( dString, sizeof( dString ),""COL_WHITE"Selected Name: "COL_LIGHTRED"%s "COL_WHITE"\nSelected URL: "COL_LIGHTRED"%s\n\n"COL_WHITE"Are you able to hear any sound from the selected URL...\nAnd are you happy with the settings?\n"COL_LIGHTRED"[ ! ]"COL_WHITE"This is the last step of creating an XM Radio.",XMRadio, XMURL);
        ShowDialog( playerid, Show:XMRadioFinal, DIALOG_STYLE_MSGBOX,"Are you sure?", dString, "Yes.", "No." );
	}
	else
	{
	    ShowDialog( playerid, Show:XMRadioCreate, DIALOG_STYLE_INPUT,"XM Radio > Admin Menu > Input URL", "Please input the station name", "Select", "Cancel" );
	}
	return 1;
}


Dialog:XMRadioFinal(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
		new id = NextStation(), string[128], ottquery[200];
		strmid(XMRInfo[id][XMName] , XMRadio, 0, strlen(XMRadio), 64);
		strmid(XMRInfo[id][XMStation] , XMURL, 0, strlen(XMURL), 96);
		SendClientMessage(playerid,COLOR_GREEN,"Station Created.");
        format(string, sizeof(string), "AdmWarn(%i): %s has created an XM Radio Station with the name %s.",PlayerInfo[playerid][pAdmin],GetName(playerid), XMRadio );
		SendAdminMessage(COLOR_YELLOW, string);

  		mysql_format(mysql, ottquery, sizeof(ottquery), "INSERT INTO `seb-stations` (`sID`, `sName`, `sUrl`) VALUES ('%d', '%s', '%s')", id, XMRInfo[id][XMName], XMRInfo[id][XMStation]);
        mysql_tquery(mysql, ottquery, "", "");

        LoadStations();
        return 1;
	}

	else
	{
	    ShowDialog( playerid, Show:XMRadioCreate, DIALOG_STYLE_INPUT,"XM Radio > Admin Menu > Input URL", "Please input the station name", "Select", "Cancel" );
	}
	return 1;
}


LEANCMD:(createstation)
{
		if( PlayerInfo[playerid][pAdmin] < 5 ) return ADMIN_UNAUTHORIZED
		ShowDialog(playerid, Show:XMRadioAMenu, DIALOG_STYLE_LIST, "Dynamic Radio System by Lean", "Create XM Radio Station\nEdit Station", "Select", "Cancel");
        return 1;
}



LEANCMD:(telename)
{
	new telename[MAX_PLAYER_NAME], teleid, string[126], ottquery[95];
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"ds[24]",teleid,telename)) return SendClientMessage(playerid,-1, "USAGE: /telename [TELEID] [NEWNAME] "COL_ORANGE" [/aduty then /tp or /teleport to see the ID]");
	if(teleid == 1 && PlayerInfo[playerid][pAdmin] <= 4) return ADMIN_UNAUTHORIZED
	if(tpInfo[teleid][tpIDUsed] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Teleport ID specified is not in use!");
	if(strlen (telename) > 28) return SCM(playerid,COLOR_LIGHTRED,"ERROR: Maximum telename length is 28 characters.");
	format(string, sizeof(string), "AdmWarn(%i): %s has renamed Teleport '%s(%d)' to %s.",PlayerInfo[playerid][pAdmin],GetName(playerid),tpInfo[teleid][tpName],teleid,telename);
	SendAdminMessage(COLOR_YELLOW, string);
	tpInfo[teleid][tpName] = telename;

 	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-teleports` SET `tpName` = '%s' WHERE `tpID` = '%d'", telename, teleid);
 	mysql_tquery(mysql, ottquery, "", "");
	return 1;
}


LEANCMD:(metrohelp)
{
	SCM(playerid, COLOR_LIGHTRED, "Available Metropolitan Commands:");
	SCM(playerid, COLOR_WHITE, "/metrotp [TP Name]");
	SCM(playerid, COLOR_WHITE, "/createmetrotp [TP Name]");
    SCM(playerid, COLOR_WHITE, "/metrotelename [new name] [id]");
    SCM(playerid, COLOR_WHITE, "/metropos [id] INFO: Will save your current position.");
    SCM(playerid, COLOR_WHITE, "/deletemetrotele [id] INFO: Deletes the teleport permanently!.");
    return 1;
}


LEANCMD:(metrotelename)
{
	new telename[MAX_PLAYER_NAME], teleid, string[126], ottquery[95];
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"ds[24]",teleid,telename)) return SendClientMessage(playerid,-1, "USAGE: /metrotelename [TELEID] [NEWNAME]");
	if(teleid == 1 && PlayerInfo[playerid][pAdmin] <= 4) return ADMIN_UNAUTHORIZED
	if(sedtpInfo[teleid][SEDtpIDUsed] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Teleport ID specified is not in use!");
	if(strlen (telename) > 24) return SCM(playerid,COLOR_LIGHTRED,"ERROR: Maximum telename length is 24 characters.");
	format(string, sizeof(string), "AdmWarn(%i): %s has renamed Metro Teleport '%s(%d)' to %s.",PlayerInfo[playerid][pAdmin],GetName(playerid),tpInfo[teleid][tpName],teleid,telename);
	SendAdminMessage(COLOR_YELLOW, string);
	sedtpInfo[teleid][SEDTPName] = telename;

 	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-sebtp` SET `sName` = '%s' WHERE `sID` = '%d'", telename, teleid);
 	mysql_tquery(mysql, ottquery, "", "");
	return 1;
}

LEANCMD:(createmetrotp)
{
		new input[MAX_PLAYER_NAME], string[128], Float:xyz[3], tpID, ottquery[150+28];

		if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
        if(sscanf(params,"s[24]",input)) return SendClientMessage(playerid,-1, "USAGE: /createmetrotp [TELEPORTNAME]");

        if(strlen (input) > 24) return SCM(playerid,COLOR_LIGHTRED,"ERROR: Maximum telename length is 24 characters.");

        format(string, sizeof(string), "AdmWarn(%d): %s has created a METRO teleport with the name %s.",PlayerInfo[playerid][pAdmin],GetName(playerid), input );
		SendAdminMessage(COLOR_YELLOW, string);

		GetPlayerPos(playerid, xyz[0], xyz[1], xyz[2]);
        tpID = GetNextSEDTPID();

        sedtpInfo[tpID][sX] = xyz[0];
        sedtpInfo[tpID][sY] = xyz[1];
        sedtpInfo[tpID][sZ] = xyz[2];
        sedtpInfo[tpID][SEDTPName] = input;
        sedtpInfo[tpID][sVW] = GetPlayerVirtualWorld(playerid);
        sedtpInfo[tpID][sINT] = GetPlayerInterior(playerid);

        mysql_format(mysql, ottquery, sizeof(ottquery), "INSERT INTO `seb-sebtp` (`sID`, `sX`, `sY`, `sZ`, `sName`, `sVW`, `sINT`) VALUES ('%d', '%f', '%f', '%f', '%s', '%d', '%d')", tpID, sedtpInfo[tpID][sX], sedtpInfo[tpID][sY], sedtpInfo[tpID][sZ], sedtpInfo[tpID][SEDTPName], sedtpInfo[tpID][sVW], sedtpInfo[tpID][sINT]);
        mysql_tquery(mysql, ottquery, "", "");

        LoadSEDTPs();

        return 1;
}


LEANCMD:(metrotp)
{
		if(sscanf(params, "s[128]", params))
		{
            new tmpString[128], tpDialog[1000];
			for(new x = 1; x < MAX_TELEPORTS; x++)
			{
			    if(sedtpInfo[x][SEDtpIDUsed] == 1)
			    {
			        format(tmpString, sizeof(tmpString), "%s (ID: %d)\n", sedtpInfo[x][SEDTPName], x);
			        strcat(tpDialog, tmpString);
			    }
			}
			ShowDialog(playerid, Show:SEBTps, DIALOG_STYLE_LIST, "{006400}METRO Teleports", tpDialog, "Select", "Cancel");
			return 1;
		}
		else
		{
		    new tpID, string[128];
		    if(sscanf(params,"d", tpID)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /metrotp [id]");
			if(sedtpInfo[tpID][SEDtpIDUsed] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Designated teleport id does not exist.");
			SetPlayerInterior(playerid, sedtpInfo[tpID][sINT]);
			SetPlayerVirtualWorld(playerid, sedtpInfo[tpID][sVW]);
			SetPlayerPosEx(playerid, sedtpInfo[tpID][sX], sedtpInfo[tpID][sY], sedtpInfo[tpID][sZ], 100);
			format(string, sizeof(string), "You have been teleported to {006400}%s", sedtpInfo[tpID][SEDTPName]);
			SCM(playerid, COLOR_GREY, string);
		}
		return 1;
}



Dialog:SEBTps(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
            new tpID = listitem+1, string[94];
			SetPlayerInterior(playerid, sedtpInfo[tpID][sINT]);
			SetPlayerVirtualWorld(playerid, sedtpInfo[tpID][sVW]);
			SetPlayerPosEx(playerid, sedtpInfo[tpID][sX], sedtpInfo[tpID][sY], sedtpInfo[tpID][sZ], 100);
			format(string, sizeof(string), "You have been teleported to {006400}%s", sedtpInfo[tpID][SEDTPName]);
			SCM(playerid, COLOR_GREY, string);
			return 1;
	}
	return 1;
}


LEANCMD:(metropos)
{
	new tpID, string[146], Float:xyz[3], ottquery[160];
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"d",tpID)) return SendClientMessage(playerid,-1, "USAGE: /metropos [id]");
	if(sedtpInfo[tpID][SEDtpIDUsed] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Teleport ID specified is not in use!");
	if(tpID == 1 && PlayerInfo[playerid][pAdmin] <= 4) return ADMIN_UNAUTHORIZED

	GetPlayerPos(playerid, xyz[0], xyz[1], xyz[2]);

	sedtpInfo[tpID][sX] = xyz[0];
 	sedtpInfo[tpID][sY] = xyz[1];
  	sedtpInfo[tpID][sZ] = xyz[2];
    sedtpInfo[tpID][sVW] = GetPlayerVirtualWorld(playerid);
    sedtpInfo[tpID][sINT] = GetPlayerInterior(playerid);

	new zone[30];
	GetPlayer2DZone(playerid,zone,30);
	format(string, sizeof(string), "AdmWarn(%i): %s has changed position of Metro Teleport '%s(%d)' to his current location (%s).",PlayerInfo[playerid][pAdmin],GetName(playerid),tpInfo[tpID][tpName],tpID,zone);
	SendAdminMessage(COLOR_YELLOW, string);

	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-teleports` SET `sX` = '%f', `sY` = '%f', `sZ` = '%f', `sVW` = '%d', `sINT` = '%d' WHERE `sID` = '%d'", sedtpInfo[tpID][sX], sedtpInfo[tpID][sY], sedtpInfo[tpID][sZ], sedtpInfo[tpID][sVW], sedtpInfo[tpID][sINT], tpID);
 	mysql_tquery(mysql, ottquery, "", "");
	return 1;
}


LEANCMD:(deletemetrotele)
{
	new tmpTpID = GetNextSEDTPID(), tpIDToChange, tpIDDel, ottquery[65], ottquery2[50], string[128];
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"d",tpIDDel)) return SendClientMessage(playerid,-1, "USAGE: /deletemetrotele [id]");
	if(sedtpInfo[tpIDDel][SEDtpIDUsed] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Teleport ID specified is not in use!");
	if(tpIDDel == 1 && PlayerInfo[playerid][pAdmin] <= 4) return ADMIN_UNAUTHORIZED

	format(string, sizeof(string), "AdmWarn(%d): %s has deleted METRO teleport %s (%d).", PlayerInfo[playerid][pAdmin], GetName(playerid), sedtpInfo[tpIDDel][SEDTPName], tpIDDel);
	SendAdminMessage(COLOR_YELLOW, string);

	tpIDToChange = tmpTpID - 1;

	sedtpInfo[tpIDToChange][SEDtpIDUsed] = 0;

	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-sebtp` SET `sID` = '%d' WHERE `sID` = '%d'", tpIDDel, tpIDToChange);
	mysql_format(mysql, ottquery2, sizeof(ottquery2), "DELETE FROM `seb-sebtp` WHERE `sID` = '%d'", tpIDDel);
	mysql_tquery(mysql, ottquery2, "", "");
	mysql_tquery(mysql, ottquery, "", "");


	LoadSEDTPs();
	return 1;
}



LEANCMD:(telepos)
{
	new tpID, string[146], Float:xyz[3], ottquery[160];
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"d",tpID)) return SendClientMessage(playerid,-1, "USAGE: /telepos [TELEID] "COL_ORANGE" [/tp or /teleport to see the ID]");
	if(tpInfo[tpID][tpIDUsed] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Teleport ID specified is not in use!");
	if(tpID == 1 && PlayerInfo[playerid][pAdmin] <= 4) return ADMIN_UNAUTHORIZED

	GetPlayerPos(playerid, xyz[0], xyz[1], xyz[2]);

 	tpInfo[tpID][tpX] = xyz[0];
  	tpInfo[tpID][tpY] = xyz[1];
   	tpInfo[tpID][tpZ] = xyz[2];
    tpInfo[tpID][tpVW] = GetPlayerVirtualWorld(playerid);
    tpInfo[tpID][tpInt] = GetPlayerInterior(playerid);

	new zone[30];
	GetPlayer2DZone(playerid,zone,30);
	format(string, sizeof(string), "AdmWarn(%i): %s has changed position of Teleport '%s(%d)' to his current location (%s).",PlayerInfo[playerid][pAdmin],GetName(playerid),tpInfo[tpID][tpName],tpID,zone);
	SendAdminMessage(COLOR_YELLOW, string);

	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-teleports` SET `tpX` = '%f', `tpY` = '%f', `tpZ` = '%f', `tpVW` = '%d', `tpInt` = '%d' WHERE `tpID` = '%d'", tpInfo[tpID][tpX], tpInfo[tpID][tpY], tpInfo[tpID][tpZ], tpInfo[tpID][tpVW], tpInfo[tpID][tpInt], tpID);
 	mysql_tquery(mysql, ottquery, "", "");
	return 1;
}


LEANCMD:(spawnloc)
{
	new string[146], Float:xyz[3], ottquery[160];
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED

    GetPlayerPos(playerid, xyz[0], xyz[1], xyz[2]);

 	tpInfo[1][tpX] = xyz[0];
  	tpInfo[1][tpY] = xyz[1];
   	tpInfo[1][tpZ] = xyz[2];
    tpInfo[1][tpVW] = GetPlayerVirtualWorld(playerid);
    tpInfo[1][tpInt] = GetPlayerInterior(playerid);

	new zone[30];
	GetPlayer2DZone(playerid,zone,30);
	format(string, sizeof(string), "LeadWarn(%i): %s has changed spawn location to (%s).",PlayerInfo[playerid][pAdmin],GetName(playerid),zone);
	SendLeadMessage(COLOR_YELLOW, string);


	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-teleports` SET `tpX` = '%f', `tpY` = '%f', `tpZ` = '%f', `tpVW` = '%d', `tpInt` = '%d' WHERE `tpID` = '1'", tpInfo[1][tpX], tpInfo[1][tpY], tpInfo[1][tpZ], tpInfo[1][tpVW], tpInfo[1][tpInt]);
 	mysql_tquery(mysql, ottquery, "", "");
	return 1;
}





LEANCMD:(deletetele)
{

    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	new tmpTpID = GetNextTPID(), tpIDToChange, tpIDDel, ottquery[65], ottquery2[50], string[128];
	if(sscanf(params,"d",tpIDDel)) return SendClientMessage(playerid,-1, "USAGE: /deletetele [TELEID] "COL_ORANGE" [/tp or /teleport to see the ID]");
	if(tpInfo[tpIDDel][tpIDUsed] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Teleport ID specified is not in use!");
	if(tpIDDel == 1 && PlayerInfo[playerid][pAdmin] <= 4) return ADMIN_UNAUTHORIZED

	tpIDToChange = tmpTpID - 1;
	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-teleports` SET `tpID` = '%d' WHERE `tpID` = '%d'", tpIDDel, tpIDToChange);
	mysql_format(mysql, ottquery2, sizeof(ottquery2), "DELETE FROM `seb-teleports` WHERE `tpID` = '%d'", tpIDDel);
	mysql_tquery(mysql, ottquery2, "", "");
	mysql_tquery(mysql, ottquery, "", "");

	tpInfo[tpIDToChange][tpIDUsed] = 0;
	format(string, sizeof(string), "AdmWarn(%d): %s has deleted teleport %s (%d).", PlayerInfo[playerid][pAdmin], GetName(playerid), tpInfo[tpIDDel][tpName], tpIDDel);
	SendAdminMessage(COLOR_YELLOW, string);

	LoadTPs();
	return 1;
}

LEANCMD:(deleterank)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
    #endif
    new tmpTpID = GetNextRankID(), tpIDToChange, tpIDDel, ottquery[65], ottquery2[50], string[128];
	if(sscanf(params,"d",tpIDDel)) return SendClientMessage(playerid,-1, "USAGE: /deleterank [rankID]");
	if(RANKINFO[tpIDDel][RankExist] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Rank ID specified is not in use!");
	if(tpIDDel == 1 && PlayerInfo[playerid][pAdmin] <= 4) return ADMIN_UNAUTHORIZED

	tpIDToChange = tmpTpID - 1;
	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-ranks` SET `rID` = '%d' WHERE `rID` = '%d'", tpIDDel, tpIDToChange);
	mysql_format(mysql, ottquery2, sizeof(ottquery2), "DELETE FROM `seb-ranks` WHERE `rID` = '%d'", tpIDDel);
	mysql_tquery(mysql, ottquery2, "", "");
	mysql_tquery(mysql, ottquery, "", "");

	RANKINFO[tpIDDel][RankExist] = 0;
	format(string, sizeof(string), "AdmWarn(%d): %s has deleted rank %s (%d).", PlayerInfo[playerid][pAdmin], GetName(playerid), RANKINFO[tpIDDel][RankName],tpIDDel);
	SendAdminMessage(COLOR_YELLOW, string);

	LoadRanks();
	return 1;
}




LEANCMD:(deletestation)
{
	SCM(playerid,COLOR_LIGHTRED," Currently disabled.");
	return 1;
}

LEANCMD:(stationname)
{
        if(PlayerInfo[playerid][pAdmin] <= 2) return ADMIN_UNAUTHORIZED
		ShowDialog(playerid, Show:XMRadioAMenu, DIALOG_STYLE_LIST, "Dynamic Radio System by Lean", "Create XM Radio Station\nEdit Station", "Select", "Cancel");
        return 1;
}

LEANCMD:(stationurl)
{
        if(PlayerInfo[playerid][pAdmin] <= 2) return ADMIN_UNAUTHORIZED
		ShowDialog(playerid, Show:XMRadioAMenu, DIALOG_STYLE_LIST, "Dynamic Radio System by Lean", "Create XM Radio Station\nEdit Station", "Select", "Cancel");
        return 1;
}



LEANCMD:(createtp)
{
		new input[24], string[128], Float:xyz[3], tpID, ottquery[150+28];

		if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
        if(sscanf(params,"s[24]",input)) return SendClientMessage(playerid,-1, "USAGE: /createteleport [TELEPORTNAME]");
        new a = strlen(params);
        if(a > 24) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE" Max characters allowed is 32.");

        format(string, sizeof(string), "AdmWarn(%d): %s has created a teleport with the name %s.",PlayerInfo[playerid][pAdmin],GetName(playerid), input );
		SendAdminMessage(COLOR_YELLOW, string);

		GetPlayerPos(playerid, xyz[0], xyz[1], xyz[2]);
        tpID = GetNextTPID();

        tpInfo[tpID][tpX] = xyz[0];
        tpInfo[tpID][tpY] = xyz[1];
        tpInfo[tpID][tpZ] = xyz[2];
        tpInfo[tpID][tpName] = input;
        tpInfo[tpID][tpVW] = GetPlayerVirtualWorld(playerid);
        tpInfo[tpID][tpInt] = GetPlayerInterior(playerid);

        mysql_format(mysql, ottquery, sizeof(ottquery), "INSERT INTO `seb-teleports` (`tpID`, `tpX`, `tpY`, `tpZ`, `tpName`, `tpVW`, `tpInt`) VALUES ('%d', '%f', '%f', '%f', '%s', '%d', '%d')", tpID, tpInfo[tpID][tpX], tpInfo[tpID][tpY], tpInfo[tpID][tpZ], tpInfo[tpID][tpName], tpInfo[tpID][tpVW], tpInfo[tpID][tpInt]);
        mysql_tquery(mysql, ottquery, "", "");

        LoadTPs();

        return 1;
}






LEANCMD:(createrank)
{
		new input[MAX_RANKSTRINGS], string[128], tpID, ottquery[150+28];

		if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
        if(sscanf(params,"s[64]",input)) return SendClientMessage(playerid,-1, "USAGE: /createrank [TELEPORTNAME]");

		new c = strlen (input);

  		if(c > 64) return SCM(playerid,COLOR_LIGHTRED,"ERROR: Maximum rank name length is 64 characters.");

        format(string, sizeof(string), "AdmWarn(%d): %s has created a rank with the name %s.",PlayerInfo[playerid][pAdmin],GetName(playerid), input );
		SendAdminMessage(COLOR_YELLOW, string);

        tpID = GetNextRankID();

        RANKINFO[tpID][RankName] = input;

        mysql_format(mysql, ottquery, sizeof(ottquery), "INSERT INTO `seb-ranks` (`rName`) VALUES ('%s')", RANKINFO[tpID][RankName]);
        mysql_tquery(mysql, ottquery, "", "");

        LoadRanks();

        return 1;
}


LEANCMD:(rankname)
{
	new telename[MAX_RANKSTRINGS], teleid, string[126], ottquery[95];
	if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"ds[64]",teleid,telename)) return SendClientMessage(playerid,-1, "USAGE: /rankname [RankID] [NEWNAME] "COL_ORANGE" [/ranks to get the ID.]");

	if(RANKINFO[teleid][RankExist] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Rank ID specified is not in use!");


	new c = strlen (telename);
	if(c > 64) return SCM(playerid,COLOR_LIGHTRED,"ERROR: Maximum rankname length is 64 characters.");

	format(string, sizeof(string), "AdmWarn(%i): %s has renamed Rank '%s(%d)' to %s.",PlayerInfo[playerid][pAdmin],GetName(playerid),RANKINFO[teleid][RankName],teleid,telename);
	SendAdminMessage(COLOR_YELLOW, string);

	RANKINFO[teleid][RankName] = telename;

 	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-ranks` SET `rName` = '%s' WHERE `rID` = '%d'", telename, teleid);
 	mysql_tquery(mysql, ottquery, "", "");

 	LoadRanks();
	return 1;
}


LEANCMD:(acclist)
{
	if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
	accid = playerid;
	LoadUsers();
	return 1;
}
forward LoadUsers();
public LoadUsers()
{
	new ottquery[52];
	for(new x = 1; x < 100; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesUserExist", "i", x);
	}
}

forward DoesUserExist(userID);
public DoesUserExist(userID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", userID);
		mysql_tquery(mysql, ottquery, "DisplayUser", "i", userID);
	    return 1;
	}
	return 0;
}

forward DisplayUser(userID);
public DisplayUser(userID)
{
	new UserN[MAX_PLAYER_NAME], string[128];

 	cache_get_row(0, 1, UserN);
 	if(accid != INVALID_PLAYER_ID)
 	{
 	    format(string,sizeof(string),"%s (USERID: %d)",UserN, userID);
 		SCM(accid,COLOR_LIGHTRED,string);
	}
	else
	{
		format(string,sizeof(string),"08%s (User ID: %d)",UserN, userID);
  		IRC_GroupSayEx(string);
	}
	return 1;
}

forward LoadSEDTPs();
public LoadSEDTPs()
{
	new ottquery[52];
	for(new x = 1; x < MAX_TELEPORTS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-sebtp` WHERE `sID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesSEDTPExist", "i", x);
	}
}

forward DoesSEDTPExist(tpID);
public DoesSEDTPExist(tpID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-sebtp` WHERE `sID` = %d", tpID);
		mysql_tquery(mysql, ottquery, "LoadSEDTP", "i", tpID);
	    return 1;
	}
	return 0;
}

forward LoadSEDTP(tpID);
public LoadSEDTP(tpID)
{
	new tpNames[MAX_PLAYER_NAME];

	sedtpInfo[tpID][SEDtpIDUsed] = 1;
	sedtpInfo[tpID][sX] = cache_get_row_float(0, 1);
	sedtpInfo[tpID][sY] = cache_get_row_float(0, 2);
	sedtpInfo[tpID][sZ] = cache_get_row_float(0, 3);
 	cache_get_row(0, 4, tpNames);
 	sedtpInfo[tpID][sVW] = cache_get_row_int(0, 5);
 	sedtpInfo[tpID][sINT] = cache_get_row_int(0, 6);

  	sedtpInfo[tpID][SEDTPName] = tpNames;

	return 1;
}

stock GetNextSEDTPID()
{
	for(new x = 1; x < MAX_TELEPORTS; x++)
	{
	    if(sedtpInfo[x][SEDtpIDUsed] == 0)
	    {
	        return x;
	    }
	}
	return 1;
}



forward LoadTPs();
public LoadTPs()
{
	new ottquery[52];
	for(new x = 1; x < MAX_TELEPORTS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-teleports` WHERE `tpID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesTPExist", "i", x);
	}
}

forward DoesTPExist(tpID);
public DoesTPExist(tpID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-teleports` WHERE `tpID` = %d", tpID);
		mysql_tquery(mysql, ottquery, "LoadTP", "i", tpID);
	    return 1;
	}
	return 0;
}

forward LoadTP(tpID);
public LoadTP(tpID)
{
	new tpNames[MAX_PLAYER_NAME];

	tpInfo[tpID][tpIDUsed] = 1;
	tpInfo[tpID][tpX] = cache_get_row_float(0, 1);
	tpInfo[tpID][tpY] = cache_get_row_float(0, 2);
	tpInfo[tpID][tpZ] = cache_get_row_float(0, 3);
 	cache_get_row(0, 4, tpNames);
 	tpInfo[tpID][tpVW] = cache_get_row_int(0, 5);
 	tpInfo[tpID][tpInt] = cache_get_row_int(0, 6);

  	tpInfo[tpID][tpName] = tpNames;

	return 1;
}

stock GetNextTPID()
{
	for(new x = 1; x < MAX_TELEPORTS; x++)
	{
	    if(tpInfo[x][tpIDUsed] == 0)
	    {
	        return x;
	    }
	}
	return 1;
}

stock GetNextFurnitureID()
{
	for(new x = 1; x < MAX_FURNITURES; x++)
	{
	    if(x != 0)
	    {
		    if(fInfo[x][FurExist] == 0)
		    {
		        return x;
		    }
		}
	}
	return 1;
}


forward GetNextFurnitureIDas();
public GetNextFurnitureIDas()
{

	new ottquery[128];
	for(new x = 1; x < MAX_FURNITURES; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-furniture` WHERE `fID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesFExist", "i", x);
	}
	return 1;
}

forward DoesFExist(fID);
public DoesFExist(fID)
{
	new rows, fields;
	cache_get_data(rows, fields, mysql);
	if(rows)
	{

	}
	if(!rows)
	{
	    return fID;
	}
	return 0;
}







forward showdoormenutp(playerid);
public showdoormenutp(playerid)
{
	new DynamicString[ 600 ];
	for(new ID = 0; ID < sizeof(DoorInfo); ID++)
	{
			format(DynamicString, sizeof(DynamicString), "%s\n%s(ID: %d)\n",DynamicString,DoorInfo[ID][ddName],ID);
			ShowDialog(playerid, Show:DoorsTPS, DIALOG_STYLE_LIST, "Doors Menu", DynamicString, "Teleport", "<<");
	}
	return 1;
}

LEANCMD:(doors)
{
    if ((notp) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, "	The Teleport System has been disabled by an admin.");
		return 1;
	}
	if(sscanf(params, "s[128]", params))
	{
        showdoormenutp(playerid);
	}
	return 1;
}



Dialog:DoorsTPS(playerid, response, listitem, inputtext[])
{
		if(response)
        {
            if(DoorInfo[listitem][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Something went wrong.");

            new id = listitem;
			SetPlayerPosEx(playerid,DoorInfo[id][ddExteriorX],DoorInfo[id][ddExteriorY],DoorInfo[id][ddExteriorZ], 0);
			SetPlayerFacingAngle(playerid,DoorInfo[id][ddExteriorA]);
  			SetPlayerVirtualWorld(playerid,DoorInfo[id][ddExtVw]);
  			SetPlayerInterior(playerid,DoorInfo[id][ddExtInt]);
        }
		return 1;
}

new TeleS[MAX_TELEPORTS];


LEANCMD:(teleport)
{
		if ((notp) && PlayerInfo[playerid][pAdmin] < 1)
		{
			SendClientMessage(playerid, COLOR_GRAD2, "The teleport system has been disabled by an admin.");
			return 1;
		}



		new tmpString[128], tpDialog[1300];

		if(sscanf(params, "s[128]", params))
		{
			for(new x = 1; x < MAX_TELEPORTS; x++)
			{
			    if(tpInfo[x][tpIDUsed] == 1)
			    {
			        format(tmpString, sizeof(tmpString), "%s (ID: %d)\n", tpInfo[x][tpName], x);
			        strcat(tpDialog, tmpString);
			    }
			}
			ShowDialog(playerid, Show:TelePort, DIALOG_STYLE_LIST, ""COL_WHITE"Teleport System", tpDialog, "Teleport", "Cancel");
			return 1;
		}
		
		
  		new tpID, string[128];
    	if(!sscanf(params,"d", tpID))
    	{
			if(tpInfo[tpID][tpIDUsed] == 0) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Designated teleport id does not exist.");
			SetPlayerInterior(playerid, tpInfo[tpID][tpInt]);
			SetPlayerVirtualWorld(playerid, tpInfo[tpID][tpVW]);
			SetPlayerPosEx(playerid, tpInfo[tpID][tpX], tpInfo[tpID][tpY], tpInfo[tpID][tpZ], 100);
			format(string, sizeof(string), "You have been teleported to {FFA500}%s", tpInfo[tpID][tpName]);
			SCM(playerid, COLOR_GREY, string);
		}
		
		
		if(!sscanf(params, "s[128]", params))
		{
			for(new x = 1; x < MAX_TELEPORTS; x++)
			{
				if(!strcmp(params, tpInfo[x][tpName], true, 5))
				{
				    if(tpInfo[x][tpIDUsed] == 1)
				    {
						SetPlayerInterior(playerid, tpInfo[x][tpInt]);
						SetPlayerVirtualWorld(playerid, tpInfo[x][tpVW]);
						SetPlayerPosEx(playerid, tpInfo[x][tpX], tpInfo[x][tpY], tpInfo[x][tpZ], 100);
						format(string, sizeof(string),"You have teleported to %s (ID: %d)",tpInfo[x][tpName], x);
						SCM(playerid, COLOR_GRAD2, string);
						return 1;
					}
				}
			}
			
   			new sd = 0;
   			new s;
			for(new x = 1; x < MAX_TELEPORTS; x++)
			{
			    if(strfind(tpInfo[x][tpName], params, true) != -1)
				{
				    if(tpInfo[x][tpIDUsed] == 1)
				    {
				        TeleS[sd] = x;
				        sd++;
				        s = x;
				        format(tmpString, sizeof(tmpString), "%s (ID: %d)\n", tpInfo[x][tpName], x);
				        strcat(tpDialog, tmpString);
				    }
				}
			}
			if(sd == 1)
			{
			        new x = s;
					SetPlayerInterior(playerid, tpInfo[x][tpInt]);
					SetPlayerVirtualWorld(playerid, tpInfo[x][tpVW]);
					SetPlayerPosEx(playerid, tpInfo[x][tpX], tpInfo[x][tpY], tpInfo[x][tpZ], 100);
					format(string, sizeof(string),"You have teleported to %s (ID: %d)",tpInfo[x][tpName], x);
					SCM(playerid, COLOR_GRAD2, string);
					return 1;
			
			}
			ShowDialog(playerid, Show:TelePorting, DIALOG_STYLE_LIST, "No specific input found, showing close results", tpDialog, "Teleport", "Cancel");
   			return 1;
		}



		SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"No specific teleport found..");
		return 1;
}



Dialog:TelePorting(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            new x = TeleS[listitem];
			SetPlayerInterior(playerid, tpInfo[x][tpInt]);
			SetPlayerVirtualWorld(playerid, tpInfo[x][tpVW]);
			SetPlayerPosEx(playerid, tpInfo[x][tpX], tpInfo[x][tpY], tpInfo[x][tpZ], 100);
			new string[128];
			format(string, sizeof(string),"You have teleported to %s (ID: %d)",tpInfo[x][tpName], x);
			SCM(playerid, COLOR_GRAD2, string);
        }
	return 1;
}


Dialog:TelePort(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
			new tpID = listitem+1, string[128];

		 	if(GetPlayerState(playerid) == 2)
		  	{
	   			new tmpcar = GetPlayerVehicleID(playerid);
	      		LinkVehicleToInterior(tmpcar, tpInfo[tpID][tpInt]);
	       		SetVehicleVirtualWorld(tmpcar, tpInfo[tpID][tpVW]);
		   	}

			SetPlayerInterior(playerid, tpInfo[tpID][tpInt]);
			SetPlayerVirtualWorld(playerid, tpInfo[tpID][tpVW]);
			SetPlayerPosEx(playerid, tpInfo[tpID][tpX], tpInfo[tpID][tpY], tpInfo[tpID][tpZ]);

			format(string, sizeof(string),"You have teleported to %s (ID: %d)",tpInfo[tpID][tpName], tpID);
			SCM(playerid, COLOR_GRAD2, string);
        }
	return 1;
}



LEANCMD:(skin)
{
        if(PlayerInfo[playerid][Rank] == 1) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE" This command is not available for recruits.");
		if(Duty[playerid] == true) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"This is only available when off duty and for criminals! - Use "COL_LIGHTRED"/uniform");

		new id, string[128];

		if(sscanf(params,"d",id)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /skin [id]");
		if(id > 311 || id < 1) return SCM(playerid, COLOR_LIGHTRED, "Only skin ids between 1 and 311.");
		#if defined TRAINING_SASD
		if(id == SWAT_SKIN) return 1;
		#endif
		format(string, sizeof(string),"[ ! ]"COL_WHITE" Your skin has been changed to "COL_LIGHTRED"%d"COL_WHITE".", id);
		SCM(playerid, COLOR_LIGHTRED, string);

		SetPlayerSkin(playerid, id);
		PlayerInfo[playerid][pSkin] = id;
		return 1;
}



LEANCMD:(uptime)
{
	new string[128];

    new interval = GetTickCount() - serveruptime;

    new Seconds = (interval  / 1000);

    new minutes = (Seconds / 60);

    new hours = (minutes / 60);

    new days = (hours / 24);

    if(minutes == 0)
    {
            format( string, sizeof( string ), "Server has been up for %d seconds.",Seconds );
    		SCM(playerid,COLOR_LIGHTRED, string);
    		return 1;
   	}

	if( days > 0 )
	{
 			format( string, sizeof( string ), "Server has been up for %d days (%d hours).",days,hours );
    		SCM(playerid,COLOR_LIGHTRED, string);
    		return 1;
   	}
   	if( hours > 0)
   	{
   	        format( string, sizeof( string ), "Server has been up for %d hours.",hours );
    		SCM(playerid,COLOR_LIGHTRED, string);
    		return 1;
	}



    format( string, sizeof( string ), "Server has been up for %d minutes.",minutes );
    SCM(playerid,COLOR_LIGHTRED, string);
	return 1;
}

LEANCMD:(isafk)
{
   	new
        id;

	if(sscanf(params,"u",id)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: "COL_WHITE"/isafk [Playerid]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(isplayerpaused[id] == false)
	{
	    new str[64];
	    format(str,sizeof(str),"%d is not AFK.",id);
		SCM(playerid, COLOR_LIGHTRED, str);
		return 1;
	}
	else
	{
	    new str[128], interval;
    	interval = GetTickCount() - gPlayerStopWatchTick[id];
		new Seconds = (interval  / 1000);
	    format(str, sizeof(str), "Player %d has been tabbed/paused for %d seconds.",id, Seconds);
    	SendClientMessage(playerid, COLOR_WHITE, str);
	}
	return 1;
}

LEANCMD:(fcheck)
{
	new
		string[128];

	for(new ID = 0; ID < MAX_FURNITURES; ID++)
	{
		    if(IsPlayerInRangeOfPoint(playerid, 2.0, fInfo[ID][fposX],fInfo[ID][fposY],fInfo[ID][fposZ]))
			{
			    format(string,sizeof(string),"You are close to object ID %d (%s)",ID,fInfo[ID][modelname]);
			    SCM(playerid,COLOR_LIGHTRED,string);
			}
	}
	return 1;
}

LEANCMD:(fedit)
{
        if(PlayerInfo[playerid][pAdmin] <= 3 && grantbuild[playerid] == false) return ADMIN_UNAUTHORIZED
        new ID;
        if(sscanf(params,"d",ID)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /fedit [objectid]");

		idd[playerid] = ID;
  		SetPVarInt( playerid, "FurniturePosEdit",1 );
    	EditDynObject(playerid, fInfo[ID][FUROBJECTID]);
     	new string[128];
      	format(string,sizeof(string),"[DEBUGG] Create ObjectID: %d Object List ID: %d Object Name: %s",fInfo[idd[playerid]][FUROBJECTID],idd[playerid],fInfo[idd[playerid]][modelname]);
       	SCM(playerid, COLOR_WHITE, string);
        return 1;
}
#define MAX_FS 100

new FEDIT[MAX_FS][MAX_PLAYERS],
	fcurrent;







new idf[MAX_PLAYERS];



Dialog:FurnituresList(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
			if(listitem == 100)
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+100][modelname], ID+100, fInfo[ID+100][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures2, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
					}
					return 1;
			}
			if(listitem == 99)
			{
 					new lastidd = GetNextFurnitureID(),
    	    		lastid;

                    new strings[10];
			    	format(strings,sizeof(strings),"%d - 1",lastidd);
			    	SCM(playerid,COLOR_LIGHTRED, strings);
			    	if( lastidd > 1000 && lastidd < 10000 )
			    	{
			    		strdel( strings, 2, 10 );
			    		SCM(playerid,COLOR_LIGHTRED,strings);
			    		lastidd = strval( strings );
			    		new stringc[5];
			    		format( stringc, sizeof( stringc ), "%d00",lastidd );
			    		lastid = strval( stringc );
			    		SCM(playerid,COLOR_LIGHTRED," if( lastidd > 1000 && lastidd < 10000) ");
			    		new string[ 250 ];
						new stringz[24];
						for(new ID = 0; ID < 101; ID++)
						{
							    if(ID != 100 )
							    {
							        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+lastid][modelname], ID+lastid, fInfo[ID+lastid][Fcreator]);
								}
								else
								{
	       							format(stringz, sizeof(stringz), ""COL_YELLOW"FIRST PAGE >>\n");
							        strcat(string, stringz);
								}
								ShowDialog(playerid, Show:FurnituresLast, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
						}
						return 1;
					}
					if(lastidd < 1000)
					{
			    		strdel( strings, 1, 10 );
			    		SCM(playerid,COLOR_LIGHTRED,strings);
			    		lastidd = strval( strings );
			    		new stringc[5];
			    		format( stringc, sizeof( stringc ), "%d00",lastidd );
			    		lastid = strval( stringc );
			    		SCM(playerid,COLOR_LIGHTRED," if(lastidd < 1000) ");
				    	idf[playerid] = lastid;
			    		new string[ 250 ];
						new stringz[24];
						for(new ID = 0; ID < 101; ID++)
						{
							    if(ID != 100 )
							    {
							        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+lastid][modelname], ID+lastid, fInfo[ID+lastid][Fcreator]);
								}
								else
								{
	       							format(stringz, sizeof(stringz), ""COL_YELLOW"FIRST PAGE >>\n");
							        strcat(string, stringz);
								}
								ShowDialog(playerid, Show:FurnituresLast, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
						}
						return 1;
					}

					return 1;
			}
			else
            {
        		idd[playerid] = listitem;
        		FURNITURE_EDIT
			}

		}
	return 1;
}


Dialog:FurnituresLast(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
                idd[playerid] = (idf[playerid]+listitem);
        		FURNITURE_EDIT
        		return 1;
			}
			else
			{
				new string[ 250 ];
				new stringz[24];
				for(new ID = 0; ID < 101; ID++)
				{
					    if(ID == 100)
					    {
					        format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
					        strcat(string, stringz);
						}
						else
						{
							format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID][modelname], ID,fInfo[ID][Fcreator]);
						}
						ShowDialog(playerid, Show:Furnitures2, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
				}
			}
		}
	return 1;
}



Dialog:Furnitures2(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+100;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+200][modelname], ID+200,fInfo[ID+200][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures3, DIALOG_STYLE_LIST, "Furniture list(1)", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}

Dialog:Furnitures3(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+200;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+300][modelname], ID+300,fInfo[ID+300][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures4, DIALOG_STYLE_LIST, "Furniture list(2)", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}


Dialog:Furnitures4(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+300;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+400][modelname], ID+400,fInfo[ID+400][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures5, DIALOG_STYLE_LIST, "Furniture list(3)", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}


Dialog:Furnitures5(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+400;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+500][modelname], ID+500,fInfo[ID+500][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures6, DIALOG_STYLE_LIST, "Furniture list(4)", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}



Dialog:Furnitures6(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+500;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+600][modelname], ID+600,fInfo[ID+600][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures7, DIALOG_STYLE_LIST, "Furniture list(5)", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}




Dialog:Furnitures7(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+600;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+700][modelname], ID+700,fInfo[ID+700][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures8, DIALOG_STYLE_LIST, "Furniture list(6)", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}


Dialog:Furnitures8(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+700;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+800][modelname], ID+800,fInfo[ID+800][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures9, DIALOG_STYLE_LIST, "Furniture list(7)", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}

Dialog:Furnitures9(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+800;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+900][modelname], ID+900,fInfo[ID+900][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures10, DIALOG_STYLE_LIST, "Furniture list(8)", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}


Dialog:Furnitures10(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+900;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+1000][modelname], ID+1000,fInfo[ID+1000][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures11, DIALOG_STYLE_LIST, "Furniture list(9)", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}


Dialog:Furnitures11(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+1000;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+1100][modelname], ID+1100,fInfo[ID+1100][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures12, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}


Dialog:Furnitures12(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+1100;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+1200][modelname], ID+1200,fInfo[ID+1200][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures13, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}

Dialog:Furnitures13(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+1200;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+1300][modelname], ID+1300,fInfo[ID+1300][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures14, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}


Dialog:Furnitures14(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+1300;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+1400][modelname], ID+1400,fInfo[ID+1400][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures15, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}



Dialog:Furnitures15(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+1400;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+1500][modelname], ID+1500,fInfo[ID+1500][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures16, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}


Dialog:Furnitures16(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            if(listitem != 100)
            {
        		idd[playerid] = listitem+1500;
        		FURNITURE_EDIT
			}
			else
			{
			    	new string[ 250 ];
					new stringz[24];
					for(new ID = 0; ID < 101; ID++)
					{
						    if(ID != 100 )
						    {
						        format(string, sizeof(string), "%s\%s(%d) (CR:%s)\n",string, fInfo[ID+1600][modelname], ID+1600,fInfo[ID+1600][Fcreator]);
							}
							else
							{
       							format(stringz, sizeof(stringz), ""COL_YELLOW"NEXT PAGE >>\n");
						        strcat(string, stringz);
							}
							ShowDialog(playerid, Show:Furnitures17, DIALOG_STYLE_LIST, "Furniture list", string, "Submit", "Cancel");
					}
			}
		}
	return 1;
}


new currlist[MAX_PLAYERS];
new fshown[MAX_PLAYERS];
new old[MAX_PLAYERS];

forward showflists(playerid, fromslot);
public showflists(playerid, fromslot)
{
	new string[ 2000 ];
	fcurrent = 0;
	new slots = fromslot;

	new msg[60];
	format(msg, sizeof(msg), ""COL_YELLOW"*Select Furniture*\n");
	strcat(string, msg);
	
	if(fromslot != 0)
	{
		strcat(string, ""COL_YELLOW"*Go back*\n");
	}

	for(new i = fromslot; i < fromslot + MAX_FURNITURES; i++)
	{
  		if( i < sizeof( fInfo ) )
		{
  			if(fInfo[i][FVirtual] == GetPlayerVirtualWorld(playerid) && fInfo[i][FurExist] == 1 && fcurrent < NEXT_PAGE_SLOT)
		    {
      			fcurrent ++;
      			slots ++;
      			FEDIT[fcurrent][playerid] = i;
				format(msg, sizeof(msg), "Slot %d: %s %d\n",slots, fInfo[i][modelname], i);
				strcat(string, msg);
			}
			if( fcurrent == NEXT_PAGE_SLOT )
			{
			    fcurrent ++;
				strcat(string, ""COL_YELLOW"*Next Page*\n");
			}
		}

	}
	SetPVarInt(playerid, "FromFurSlot", fromslot);
	
	
	new stringf[50];
//	format(stringf, sizeof(stringf),""COL_YELLOW"*Select the furniture*");
//	strcat(string, stringf);
	new totalfurninhouse;
	for(new ID = 0; ID < MAX_FURNITURES; ID++)
	{
	    if(fInfo[ID][FVirtual] == GetPlayerVirtualWorld(playerid) && fInfo[ID][FurExist])
	    {
	        totalfurninhouse ++;
		}
	}
	
	format(stringf, sizeof(stringf),""COL_WHITE"Current Furniture("COL_GREEN"%d"COL_WHITE")",totalfurninhouse);
	ShowDialog(playerid, Show:FurnTest, DIALOG_STYLE_LIST, stringf, string, "Submit", "Cancel");
 	currlist[playerid] += 50;
	return 1;
}

Dialog:FurnTest(playerid, response, listitem, inputtext[])
{
		if(response) // If they clicked 'Select' or double-clicked a weapon
        {
			
        	new slot = GetPVarInt(playerid, "FromFurSlot");
        	// If they selected *select furniture*);
			if(listitem == 0)
			{
			    SCM(playerid,COLOR_LIGHTRED,"Selecting object <<");
			    SelectObject(playerid);
			    return 1;
			}
			// If they go back!
			if(slot > 0 && listitem == 1)
			{
			    showflists(playerid, old[playerid]);
			    return 1;
			}
			if(slot > 0)
			{
				listitem -= 1;
			}

			if(listitem > NEXT_PAGE_SLOT)
			{
				showflists(playerid, fshown[playerid]);
				return 1;
			}
        	
			if(listitem <= NEXT_PAGE_SLOT)
			{
				idd[playerid] = FEDIT[listitem][playerid];
				FURNITURE_EDIT
				fcurrent = 0;
				return 1;
			}

		}
		else
		{
		    DeletePVar(playerid, "FromFurSlot");
		    ShowFurnitureMain(playerid);
		}
		return 1;
}

Dialog:Furnitures(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
            	if(listitem == 100)
				{
		    		SCM(playerid,COLOR_LIGHTRED," Does not exist for now..");
		    		return 1;
				}

        		idd[playerid] = listitem+500;
        		ShowDialog(playerid, Show:FurnitureEdit, DIALOG_STYLE_LIST, "Furniture Edit", "Delete Object\nEdit Object\nRename Object\nDuplicate Object", "Submit", "<<");
		}

	return 1;
}

new turnsharp[MAX_FURNITURES];

Dialog:FurnitureEdit(playerid, response, listitem, inputtext[])
{

	switch (listitem)
	{
	    // Delete the object.
	    case 0:
		{
	        if(response) // If they clicked 'Select' or double-clicked a weapon
	        {
	        	new tmpFID = GetNextFurnitureID(), fIDToChange, fIDDel = idd[playerid], ottquery[63], ottquery2[50], string[128];

	        	fInfo[fIDDel][FurExist] = 0;
                DestroyDynamicObject(fInfo[fIDDel][FUROBJECTID]);
				fIDToChange = tmpFID - 1;
				mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-furniture` SET `fID` = '%d' WHERE `fID` = '%d'", fIDDel, fIDToChange);
				mysql_format(mysql, ottquery2, sizeof(ottquery2), "DELETE FROM `seb-furniture` WHERE `fID` = '%d'", fIDDel);
				mysql_tquery(mysql, ottquery2, "", "");
				mysql_tquery(mysql, ottquery, "", "");

				format(string, sizeof(string), "AdmWarn(%d): %s has deleted furniture %s (%d).", PlayerInfo[playerid][pAdmin], GetName(playerid), fInfo[fIDDel][modelname], fIDDel);
				SendAdminMessage(COLOR_YELLOW, string);

	        }
	        else return showflists(playerid, GetPVarInt(playerid, "FromFurSlot"));
	        return 1;
		}
		case 1:
		{
		    if(response)
		    {
		        SetPVarInt( playerid, "FurniturePosEdit",1 );
		        EditDynObject(playerid, fInfo[idd[playerid]][FUROBJECTID]);
		        new string[128];
		        format(string,sizeof(string),"[DEBUGG] Create ObjectID: %d Object List ID: %d Object Name: %s", fInfo[idd[playerid]][FUROBJECTID], idd[playerid], fInfo[idd[playerid]][modelname]);
		        SCM(playerid,COLOR_WHITE,string);
		        return 1;
			}

			else return showflists(playerid, GetPVarInt(playerid, "FromFurSlot"));
		}
		case 2:
		{
		    if(response)
		    {
		        new string[128];
		        format(string, sizeof(string),"%s\n\nInput the new name.",fInfo[idd[playerid]][modelname]);
				ShowDialog(playerid, Show:FurnituresEditName, DIALOG_STYLE_INPUT, "Input the new name!", string, "Submit", "Cancel");
		        return 1;
			}

			else return showflists(playerid, GetPVarInt(playerid, "FromFurSlot"));
		}
		// dup item.
		case 3:
		{
			if(response)
			{
			        new
						oldID = idd[playerid],
			        	ID = GetNextFurnitureID();
			        	
           			idd[playerid] = ID;
                    fInfo[ID][FUROBJECTID] = (ID);
                    fInfo[ID][FurExist] = 2;
                    fInfo[ID][FUROBJECTID] = CreateDynamicObject( fInfo[oldID][FMODELID], fInfo[oldID][fposX], fInfo[oldID][fposY], fInfo[oldID][fposZ], fInfo[oldID][XFpos], fInfo[oldID][YFpos], fInfo[oldID][ZFpos]); // Creating the graffiti for player
                    EditDynObject( playerid, fInfo[ID][FUROBJECTID]);
                    fOBJECTID[playerid] = fInfo[oldID][FMODELID];
                    fInfo[ID][modelname] = fInfo[oldID][modelname];
                    SetPVarInt( playerid, "Furnituring", 1 );
                    return 1;
		    }
			else return showflists(playerid, GetPVarInt(playerid, "FromFurSlot"));
		}
		// Flatten Rotation.
		case 4:
		{
			if(response)
			{
					if( turnsharp[idd[playerid]] == 0)
					{
				        SetDynamicObjectRot(fInfo[idd[playerid]][FUROBJECTID], fInfo[idd[playerid]][XFpos], fInfo[idd[playerid]][YFpos], 90);
				        turnsharp[idd[playerid]] = 1;
 			        	SCM(playerid,COLOR_LIGHTRED,"	Done (90 deegres) - Select again for 180 degrees.");
			        	FURNITURE_EDIT
			        	fInfo[idd[playerid]][YFpos] = 90;
			        	return 1;
					}
					if( turnsharp[idd[playerid]] == 1 )
					{
					    turnsharp[idd[playerid]] = 0;
					    SetDynamicObjectRot(fInfo[idd[playerid]][FUROBJECTID], fInfo[idd[playerid]][XFpos], fInfo[idd[playerid]][YFpos], 180);
	        			SCM(playerid,COLOR_LIGHTRED,"	Done (180 deegres) - Select again for 90 degrees.");
	        			fInfo[idd[playerid]][YFpos] = 180;
			        	FURNITURE_EDIT
			        	return 1;
					}
                    return 1;
		    }
			else return showflists(playerid, GetPVarInt(playerid, "FromFurSlot"));
		}
		// Select object
		case 5:
		{
			if(response)
			{
					SelectObject(playerid);
                    return 1;
		    }
			else return showflists(playerid, GetPVarInt(playerid, "FromFurSlot"));
		}
    }
    return 1;
}






Dialog:FurnituresEditName(playerid, response, listitem, inputtext[])
{

	        if(response) // If they clicked 'Select' or double-clicked a weapon
	        {
				if(sscanf(inputtext, "s[128]", inputtext))
				{
                        FURNITURE_EDIT
				        return 1;
				}
				else
				{
				        new string[128], leanquery[128];
				    	strmid(fInfo[idd[playerid]][modelname],inputtext,0,36,36);
				    	format(string, sizeof(string),"You have edited the name to %s.",fInfo[idd[playerid]][modelname]);
				    	SCM(playerid, COLOR_YELLOW, string);
			    		mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-furnitures` SET `fModelName` = '%s' WHERE `fID` = '%d'", fInfo[idd[playerid]][modelname], idd[playerid]);
 						mysql_tquery(mysql, leanquery, "", "");
 						FURNITURE_EDIT
				}
	        }
	        else return FURNITURE_EDIT
	        return 1;
}



enum DoorstEnum
{
    Doormodel,
	Doorname[60]
}

new DoorsObjects[][DoorstEnum] = {
{1567, "Ward drove Door"},
{1535, "Apartment Door"},
{1533, "24/7 Door"},
{1498, "White window Door"},
{3109, "Cockpit Door"},
{3089, "Wooden door(Windows)"},
{3062, "Blue Door"},
{3061, "Black Door"},
{3029, "Red Door"},
{2944, "Boat Door"},
{2930, "Gate Door"},
{1523, "Swinging White Door"},
{1497,"Wooden Door"},
{1491, "Wooden movable door"},
{1492, "Green moveable door"},
{1493, "Red seethrough door"},
{1494, "Blue moveable door"},
{1495, "Blue seethrough door"},
{1496, "Wooden seethrough door"},
{1497, "Wooden door(Windows)"},
{1498, "Wooden door"},
{1499, "White door 2"},
{1500, "Metal moveable door"},
{1501, "Wooden seethrough door 2"},
{1502, "wooden seethrough door 3"},
{1504, "Wooden moveable door 2"},
{1505, "Blue door 2"},
{1506, "White door 3"},
{1507, "Yellow door"},
{1516, "Massive metal door"},
{1522, "Store door"},
{1532, "Store door 2"},
{1533, "Store door 3"},
{1535, "Motel room door"},
{1536, "Fancy glass door"}
};


LEANCMD:(fiddoor)
{
	new string[1000];
	if(PlayerInfo[playerid][pAdmin] < 4 && grantbuild[playerid] == false) return ADMIN_UNAUTHORIZED
	for(new x;x<sizeof(DoorsObjects);x++)
	{
		format(string, sizeof(string), "%s%s\n", string, DoorsObjects[x][Doorname]);
	}
	ShowDialog(playerid, Show:DoorFurniture, DIALOG_STYLE_LIST, "Door List", string, "Submit", "Cancel");
	return 1;
}


Dialog:DoorFurniture(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
        {
                    new	Float:X[3], ID = GetNextFurnitureID();
                    GetPlayerPos( playerid, X[0], X[1], X[2] );
                    idd[playerid] = ID;
                    fInfo[ID][FUROBJECTID] = ID;
                    fInfo[ID][FurExist] = 2;
                    fInfo[ID][FUROBJECTID] = CreateDynamicObject( DoorsObjects[listitem][Doormodel], X[0], X[1]-2, X[2], 0.0, 0.0, 0.0, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, -1, 200.0); // Creating the graffiti for player
                    fOBJECTID[playerid] = DoorsObjects[listitem][Doormodel];
                    format(fOBJECTNAME[playerid], sizeof(fOBJECTNAME),DoorsObjects[listitem][Doorname]);
                    SetPVarInt( playerid, "DFurnituring", 1 );
                    EditDynObject(playerid, fInfo[ID][FUROBJECTID]);
					return 1;
		}
	return 1;
}



public createdoorfurniture(playerid)
{
    new string[128], ottquery[1000], tmpString[400];

	totalfs++;
    if(totalfs > MAX_FURNITURES) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"All furniture slots are in use, contact Lean.");

	new ID = idd[playerid];
	SCM(playerid,COLOR_LIGHTRED, string);

	fInfo[ID][FurExist] = 1;
	fInfo[ID][Fcreator] = GetName(playerid);
	fInfo[ID][modelname] = fOBJECTNAME[playerid];
	fInfo[ID][FMODELID] = fOBJECTID[playerid];
    fInfo[ID][FVirtual] = GetPlayerVirtualWorld(playerid);
    fInfo[ID][FDoor] = true;
    fInfo[ID][FDoors] = true;
	fInfo[ID][fposX] = FURNXYZ[playerid][0];
	fInfo[ID][fposY] = FURNXYZ[playerid][1];
	fInfo[ID][fposZ] = FURNXYZ[playerid][2];
	fInfo[ID][XFpos] = FURNXYZ[playerid][3];
	fInfo[ID][YFpos] = FURNXYZ[playerid][4];
	fInfo[ID][ZFpos] = FURNXYZ[playerid][5];


	format(tmpString, sizeof(tmpString), "INSERT INTO `seb-furniture` (`fID`, `fCreator`, `fModelName`, `fObjectID`, `fModelID`, `fVW`, `fDoor`, `fDoors`, `fPosX`, `fPosY`, `fPosZ`, `fXFPos`, `fYFPos`, `fZFpos`) ");
 	strcat(ottquery, tmpString);
 	format(tmpString, sizeof(tmpString), "VALUES (%d, '%s', '%s', %d, %d, %d, %d, %d, %f, %f, %f, %f, %f, %f)",
    ID,
	fInfo[ID][Fcreator],
	fInfo[ID][modelname],
	fInfo[ID][FUROBJECTID],
	fInfo[ID][FMODELID],
	fInfo[ID][FVirtual],
	fInfo[ID][FDoor],
	fInfo[ID][FDoors],
	fInfo[ID][fposX],
	fInfo[ID][fposY],
	fInfo[ID][fposZ],
	fInfo[ID][XFpos],
	fInfo[ID][YFpos],
	fInfo[ID][ZFpos]);
	strcat(ottquery, tmpString);

    mysql_tquery(mysql, ottquery, "", "");
	format(string, sizeof(string),"AdmWarn(%d): %s has created furniture object %s(%d) (ID: %d).",ALEVEL, GetName(playerid),fOBJECTNAME[playerid],fOBJECTID[playerid], ID );
	SendAdminMessage(COLOR_YELLOW, string);
	idd[playerid] = ID;
	FURNITURE_EDIT
	return 1;
}


/*
LEANCMD:(door)
{
		for(new id = 0; id < MAX_FURNITURES; id++)
		{
			if(IsPlayerInRangeOfPoint(playerid, 2.0, fInfo[id][fposX], fInfo[id][fposY], fInfo[id][fposZ]))
			{
			    if(fInfo[id][FDoor] == 1)
			    {
					if(fInfo[id][FDoors] == 1)
					{
      					new Float:rx,Float:ry,Float:rz;
			            GetDynamicObjectRot(fInfo[id][FUROBJECTID], rx, ry, rz);
						SetDynamicObjectRot(fInfo[id][FUROBJECTID], rx, ry, rz+268);
			        	fInfo[id][FDoors] = 0;
			        	SCM(playerid,COLOR_GREEN,"[ ! ] "COL_WHITE"Door Opened.");
			        	return 1;
					}
     				if(fInfo[id][FDoors] == 0)
			        {
						SetDynamicObjectRot(fInfo[id][FUROBJECTID], fInfo[id][XFpos], fInfo[id][YFpos], fInfo[id][ZFpos]);
			        	fInfo[id][FDoors] = 1;
			        	SCM(playerid,COLOR_GREEN,"[ ! ] "COL_WHITE"Door Closed.");
			        	return 1;
					}
				}
			}
		}
		return 1;
}
*/


stock IsCloseObjectDoor(Objectid)
{
	switch (Objectid)
	{
	    case 977, 1491..1507, 1522,1523, 1532, 1535, 1536..1538, 1555, 1556, 1557, 1560, 1561, 1566, 1567, 1569, 3109, 3089, 3062, 3061, 3029, 2944, 2930:
		{
		    return true;
		}

	}
	return false;
}



LEANCMD:(door)
{
		for(new id = 0; id < MAX_FURNITURES; id++)
		{
			if(IsPlayerInRangeOfPoint(playerid, 2.0, fInfo[id][fposX], fInfo[id][fposY], fInfo[id][fposZ]))
			{
			    if(IsCloseObjectDoor(fInfo[id][FMODELID]))
			    {
					if(fInfo[id][FDoors] == 1)
					{
					    new Float:rx,Float:ry,Float:rz;
					    GetDynamicObjectRot(fInfo[id][FUROBJECTID], rx, ry, rz);
						new Float:x, Float:y, Float:z; GetPlayerPos( playerid, x, y, z );
						new Float:_aRelativeAngle 	= atan2( x-rx, y-ry ),
							Float:_aDoorAngle		= ( 0.0 < _aRelativeAngle < 90.0 ) ? (90.0) : (( 90.0 < _aRelativeAngle < 180.0 ) ? (-90.0) : (( 180.0 < _aRelativeAngle < 270.0 ) ? (-90.0) : (90.0)));
						SetDynamicObjectRot( fInfo[id][FUROBJECTID], rx, ry, rz+_aDoorAngle );
			        	fInfo[id][FDoors] = 0;
			        	SCM(playerid,COLOR_GREEN,"[ ! ] Door Opened.");
			        	return 1;
					}
     				if(fInfo[id][FDoors] == 0)
			        {
						SetDynamicObjectRot(fInfo[id][FUROBJECTID], fInfo[id][XFpos], fInfo[id][YFpos], fInfo[id][ZFpos]);
			        	fInfo[id][FDoors] = 1;
			        	SCM(playerid,COLOR_GREEN,"[ ! ] "COL_WHITE"Door Closed.");
			        	return 1;
					}
				}
			}
		}
		return 1;
}


stock IsCloseObjectGate(Objectid)
{
	switch (Objectid)
	{
	    case 980:
		{
		    return true;
		}

	}
	return false;
}



LEANCMD:(gate)
{
		for(new id = 0; id < MAX_FURNITURES; id++)
		{
			if(IsPlayerInRangeOfPoint(playerid, 15.0, fInfo[id][fposX], fInfo[id][fposY], fInfo[id][fposZ]))
			{
			    if(IsCloseObjectGate(fInfo[id][FMODELID]))
			    {
					if(fInfo[id][FDoors] == 0)
					{
						MoveDynamicObject(fInfo[id][FUROBJECTID], fInfo[id][fposX], fInfo[id][fposY], fInfo[id][fposZ]-5.3, 1.0);
			        	fInfo[id][FDoors] = 1;
			        	return 1;
					}
     				if(fInfo[id][FDoors] == 1)
			        {
						MoveDynamicObject(fInfo[id][FUROBJECTID], fInfo[id][fposX], fInfo[id][fposY], fInfo[id][fposZ], 1.0);
			        	fInfo[id][FDoors] = 0;
			        	return 1;
					}
				}
			}
		}
		return 1;
}


stock FurnitureBuyList(playerid)
{
	new string[400];
	for(new x;x<sizeof(AttachmentObjects);x++)
	{
		format(string, sizeof(string), "%s%s\n", string, AttachmentObjects[x][attachname]);
	}
	ShowPlayerDialog(playerid, DIALOG_FURNITURES, DIALOG_STYLE_LIST, \
	"{FF0000}Furniture List", string, "Select", "Cancel");
}

stock ShowFurnitureMain(playerid)
{
    fshown[playerid] = 0;
    ShowDialog(playerid, Show:FurnitureMain, DIALOG_STYLE_LIST, "Furniture Main Menu", "Buy Furniture\nCurrent Furniture\nInformation", "Select", "<<");
}
#define FURNITURE_LIMIT 400

stock FurnitureIn(playerid)
{
	new fcurrents;
	for(new ID = 0; ID < MAX_FURNITURES; ID++)
	{
	    if(fInfo[ID][FVirtual] == GetPlayerVirtualWorld(playerid) && fInfo[ID][FurExist])
	    {
	        fcurrents ++;
		}
	}
	new limits = (FURNITURE_LIMIT - fcurrents);
	new string[456];
	format(string, sizeof(string), " "COL_WHITE"This property currently has "COL_GREEN"%d"COL_WHITE" items.\n-You have a furniture item limit of "COL_GREEN"%d\n"COL_WHITE"-You have the option to add up to "COL_GREEN"%d"COL_WHITE" more items",fcurrents,FURNITURE_LIMIT,limits);
	ShowDialog(playerid, Show:FurnitureInfo, DIALOG_STYLE_MSGBOX, "House Information", string, "<<", "");

}

Dialog:FurnitureInfo(playerid, response, listitem, inputtext[])
{
		ShowFurnitureMain(playerid);
		return 1;
}



LEANCMD:(furniture)
{
    if(PlayerInfo[playerid][pAdmin] < 4 && grantbuild[playerid] == false) return ADMIN_UNAUTHORIZED

    ShowFurnitureMain(playerid);

	return 1;
}


Dialog:FurnitureMain(playerid, response, listitem, inputtext[])
{
		if(response)
        {
            switch(listitem)
            {
				case 0:
				{
                    FurnitureBuyList(playerid);
				}
				case 1:
				{
				    showflists(playerid, 0);
				}
				case 2:
				{
				    FurnitureIn(playerid);
				}
			}
        }
		return 1;
}


LEANCMD:(interiors)
{
    if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
	new string[1000];
	for(new x;x<sizeof(Interiors);x++)
	{
		format(string, sizeof(string), "%s%s\n", string, Interiors[x][interiorname]);
	}
	ShowPlayerDialog(playerid, DIALOG_INTERIORS, DIALOG_STYLE_LIST, \
	"{FF0000}Interior List", string, "Select", "Cancel");
	return 1;
}
#define MAX_SCENES 50
new Text3D:SceneText[MAX_SCENES],
	bool:SceneUsed[MAX_SCENES];


LEANCMD:(createscene)
{
	if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /createscene [Text]");
	new
		Float:ScenePos[3],
		string[128];
	GetPlayerPos(playerid,ScenePos[0],ScenePos[1],ScenePos[2]);
	format(string,sizeof(string),"(( %s )) %s",GetName(playerid),params);
	for(new x = 0; x < MAX_SCENES; x++)
	{
	    if(SceneUsed[x] == false)
	    {
   			SceneText[x] = CreateDynamic3DTextLabel(string,COLOR_PURPLE,ScenePos[0],ScenePos[1],ScenePos[2], 20.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID, 0, GetPlayerInterior(playerid), -1, -1, 20.0);
   			SceneUsed[x] = true;
   			SCM(playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"Scene set.");
   			return 1;
		}
	}
	SCM(playerid, COLOR_LIGHTRED, "ERROR: There is too many scenes created on the server, /clearscenes. LIMIT: 50");
    return 1;
}

LEANCMD:(clearscenes)
{
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	for(new x = 0; x < MAX_SCENES; x++)
	{
		 	DestroyDynamic3DTextLabel(SceneText[x]);
   			SceneUsed[x] = false;
	}
	
	new string[33+MAX_PLAYER_NAME];
	format(string, sizeof(string),"Admin %s has cleared all scenes.",GetName(playerid));
	SendClientMessageToAll(COLOR_LIGHTRED, string);
	return 1;
}

stock currency_format(number, delim[2] = ",")
{
	new
	    temp_Str[32],
		temp_Len = 0;
	valstr(temp_Str, number, false);
	temp_Len = strlen(temp_Str);
	strins(temp_Str, "$", 0, sizeof(temp_Str));

	if(temp_Len > 3)
	{
	    for(new i = 3; i< temp_Len; i += 3)
	    {
	        strins(temp_Str, delim, temp_Len - i+1, sizeof(temp_Str));
		}
	}
	return temp_Str;
}




LEANCMD:(dice)
{
        new rand = random(6);
        new string[MAX_PLAYER_NAME+34];
		format(string, sizeof(string),"%s Rolls the dice and lands on %d.",GetICName(playerid), rand+1);
        ProxDetector(10.0, playerid, string, -1,-1,-1,-1,-1);
		return 1;
}


LEANCMD:(coin)
{
        new rand = random(2);
        new string[MAX_PLAYER_NAME+33];
        switch(rand)
        {
                case 0: format(string, sizeof(string),"%s flips a coin and lands on tail",GetICName(playerid));
                case 1: format(string, sizeof(string),"%s flips a coin and lands on head",GetICName(playerid));

        }
        ProxDetector( 10.0, playerid, string, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE );
		return 1;
}



LEANCMD:(mod)
{
		new playerState = GetPlayerState(playerid);
        if (playerState == PLAYER_STATE_PASSENGER) return SCM(playerid, COLOR_LIGHTRED, "Only drivers can use this!");
        if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_GREY, "You are not in a vehicle.");

	    ShowDialog(playerid, Show:Modding, DIALOG_STYLE_LIST, "Modding Menu", "Rims\nNos\nRepair Car\nHydraulics", "Submit", "Cancel");
	    return 1;
}



LEANCMD:(dropgun)
{
    new
	weaponid,
	weapon[24],
	string[24+MAX_PLAYER_NAME+40];

	if(sscanf(params,"i", weaponid))return SendClientMessage(playerid, Grey, "Usage: /dropgun [Weaponid] ");
	new weaptype,weapammo;
 	GetPlayerWeaponData(playerid, GetWeaponSlot(weaponid), weaptype, weapammo);
 	if(weapammo < 1) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You cannot drop a gun which you dont have.");
	GetWeaponName(weaponid,weapon,24);
	DropPlayerWeapon(playerid,weaponid);
	format(string, sizeof(string),"* %s throws his %s on the ground.",GetICName(playerid),weapon);// Formatting a string to send to the spectator.
    SendMeessage(playerid, string);
	return 1;
}






LEANCMD:(carsign)
{
    if(!(IsPlayerInAnyVehicle(playerid))) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"You have to be in a vehicle.");

	if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"/carsign [Text]");

	new
		string[128];

	format( string,sizeof(string),"%s",params);

	DestroyDynamic3DTextLabel( vehicle3Dtext[GetPlayerVehicleID(playerid)] );

    vehicle3Dtext[ GetPlayerVehicleID(playerid) ] = CreateDynamic3DTextLabel( string, -1, -0.8, -2.8, -0.3, 20.0, INVALID_PLAYER_ID, GetPlayerVehicleID(playerid), 1, 0, -1, -1, 50.0 );

	SCM( playerid, COLOR_LIGHTRED , "USAGE: /remove_carsign "COL_WHITE" - when you're done with it." );
    return 1;
}


LEANCMD:(remove_carsign)
{
	if(!(IsPlayerInAnyVehicle(playerid))) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"You have to be in a vehicle.");
	DestroyDynamic3DTextLabel(vehicle3Dtext[GetPlayerVehicleID(playerid)]);
	return 1;
}













LEANCMD:(base)
{
	SetPlayerPosEx(playerid, -2261.5430,-1736.4402,487.4337, 0);
	SendClientMessage(playerid, COLOR_GREY, "You have been teleported to {E68C0E}Base jump");
	SetPlayerInterior(playerid, 0);
	GiveWeapon(playerid, 46, 1);
	SetPlayerInterior(playerid, 0);
	return 1;
}
#define MAX_MARKS 21

new Float:markdest[MAX_MARKS][MAX_PLAYERS][3];
new Marks[MAX_MARKS][MAX_PLAYERS][3];

LEANCMD:(mark)
{
	new markid,string[128];
	if(sscanf(params,"d",markid) || markid <= 0 || markid >= MAX_MARKS)
	{
		format(string,sizeof(string),"USAGE: "COL_WHITE"/mark [1-%d]",(MAX_MARKS-1));
 		SCM(playerid,COLOR_LIGHTRED,string);
 		return 1;
	}
	GetPlayerPos(playerid, markdest[markid][playerid][0],markdest[markid][playerid][1],markdest[markid][playerid][2]);
 	Marks[markid][playerid][0] = GetPlayerInterior(playerid);
  	Marks[markid][playerid][1] = GetPlayerVirtualWorld(playerid);
  	Marks[markid][playerid][2] = 1;
	format(string,sizeof(string),"[ ! ] "COL_WHITE"You have set a marker for marker %d.",markid);
	SCM(playerid,COLOR_LIGHTRED,string);
	return 1;
}
LEANCMD:(gotomark)
{
	if ((notp) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, "The teleport system has been disabled by an admin.");
		return 1;
	}



	new markid,string[128];

	if(sscanf(params,"d",markid) || markid <= 0 || markid >= MAX_MARKS)
	{
		format(string,sizeof(string),"USAGE: "COL_WHITE"/gotomark [1-%d]",(MAX_MARKS-1));
 		SCM(playerid,COLOR_LIGHTRED,string);
 		return 1;
	}
	if(Marks[markid][playerid][2] == 0) return SCM(playerid,COLOR_LIGHTRED,"You dont have anything saved on this mark.");

 	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
  	{
  	    new tmpcar = GetPlayerVehicleID(playerid);
		SetPlayerInterior(playerid, Marks[markid][playerid][0]);
   		SetPlayerVirtualWorld(playerid, Marks[markid][playerid][1]);
   		LinkVehicleToInterior(tmpcar, Marks[markid][playerid][0]);
   		SetPlayerPosEx(playerid, markdest[markid][playerid][0],markdest[markid][playerid][1],markdest[markid][playerid][2]);
		format(string,sizeof(string),"[ ! ] "COL_WHITE"You have been teleported to your marker (ID: %d)",markid);
		SCM(playerid,COLOR_LIGHTRED,string);
		return 1;
   	}
   	else
  	{
		SetPlayerPosEx(playerid, markdest[markid][playerid][0],markdest[markid][playerid][1],markdest[markid][playerid][2]);
		SetPlayerInterior(playerid,Marks[markid][playerid][0]);
		SetPlayerVirtualWorld(playerid,Marks[markid][playerid][1]);
		format(string,sizeof(string),"[ ! ] "COL_WHITE"You have been teleported to your marker (ID: %d)",markid);
		SCM(playerid,COLOR_LIGHTRED,string);
	}
	return 1;
}





LEANCMD:(removecp)
{
  DisablePlayerCheckpoint(playerid);
  onhouse[playerid] = -1;
  SCM(playerid, COLOR_YELLOW, "SERVER: All checkpoints disabled!");
  return 1;
}



LEANCMD:(civilian)
{
	  	new
		  string[53];


	  	format(string, sizeof(string), "** HQ: %s is now off Duty! **",GetICName(playerid));
	  	LEGRESET(playerid);
	  	SendClientMessageToAll(COLOR_DUTY, string);
	  	ResetWeapons(playerid);
	  	Taser[playerid] = false;
	  	Rubber[playerid] = false;
	  	Criminal[playerid] = false;
 	 	Swat[playerid] = false;
	  	Duty[playerid] = false;
	  	SetPlayerArmour(playerid, 0.0);
	  	Civilian[playerid] = true;
	  	SetPlayerSkin(playerid, PlayerInfo[playerid][pSkin]);

    	if(AdminDuty[playerid] == true)
	    {
	    	SetPlayerColor(playerid, COLOR_ADMINDUTY);
	    	SetPlayerHealthEx(playerid, 999.0);
	    	return 1;
	    }
		else
		{
		    SetPlayerColor(playerid, COLOR_WHITE);
		}
		return 1;
}





LEANCMD:(world)
{
     new
	     world,
	     string[ 96 ];

     if(sscanf(params, "i", world))
	 {
	 	format(string, sizeof(string), "USAGE: /world [WorldID] "COL_ORANGE"CURRENT WORLD: %d!",GetPlayerVirtualWorld(playerid));
	 	SCM(playerid, COLOR_GREY, string);
	 	return 1;
	 }
     if(IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_LIGHTRED, "You cant use this while in a vehicle.");
     else if(GetPlayerInterior(playerid) >= 1) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This command is not available in a interior.");
	 else
	 {
		 format(string, sizeof(string), "Your virtual world have been set to %i.",world);
		 SendClientMessage(playerid, COLOR_LIGHTRED, string);
		 WORLD[playerid] = world;
		 SetPlayerVirtualWorld(playerid, world);
	 }
	 return 1;
}








LEANCMD:(check)
{
    if(IsPlayerInAnyVehicle(playerid)) return ShowPlayerDialog(playerid, 6, DIALOG_STYLE_LIST, "Trunk", "1. Shotgun[Ammo:100]\n2. MP5[Ammo:500]\n3. M4[Ammo:500]\n4. SPAZ[Ammo:100]\n5. Sniper[Ammo:50]", "Ok", "Cancel");

    new count2 = 0;
    for(new vid=0; vid <= GetVehiclePoolSize(); vid++)
    {
        new Float:ppx, Float:ppy, Float:ppz;
        GetVehiclePos(vid, ppx, ppy, ppz);
        if(IsPlayerInRangeOfPoint(playerid, 3.5, ppx, ppy, ppz))
        {
            count2++;
        }
    }
    if(count2 > 0)
    {
	    for(new vid=0; vid <= GetVehiclePoolSize(); vid++)
	    {
	        new Float:ppx, Float:ppy, Float:ppz;
	        GetPosBehindVehicle(vid, ppx, ppy, ppz, 4.0);
	        if(IsPlayerInRangeOfPoint(playerid, 3.0, ppx, ppy, ppz))
	        {
	            new vehicle,engine,lights,alarm,doors,bonnet,boot,objective;
	            GetVehicleParamsEx(vehicle,engine,lights,alarm,doors,bonnet,boot,objective);
	            if(boot == 1)
	            {
	            	ShowPlayerDialog(playerid, 16010, DIALOG_STYLE_LIST, "Trunk", "1. Shotgun[Ammo:100]\n2. MP5[Ammo:500]\n3. M4[Ammo:500]\n4. SPAZ[Ammo:100]\n5. Sniper[Ammo:50]", "Ok", "Cancel");
	            }
	            else return SCM(playerid, COLOR_LIGHTRED, "Trunk needs to be open in order to use this.");
	        }
	        else return SCM(playerid, COLOR_LIGHTRED, "You need to be near the trunk...");
	    }
	    return 1;
    }
    else return SCM(playerid, COLOR_GREY, "You are not near a vehicle.");
}



LEANCMD:(rangerespawn)
{
    new count2 = 0;
    new string[MAX_PLAYER_NAME+59];
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    for(new vid=1; vid <= GetVehiclePoolSize(); vid++)
    {
        new Float:ppx, Float:ppy, Float:ppz;
        GetVehiclePos(vid, ppx, ppy, ppz);
        if(IsPlayerInRangeOfPoint(playerid, 15.0, ppx, ppy, ppz))
        {
            count2++;
        }
    }
    if(count2 > 0)
    {
	    for(new vid=1; vid <= GetVehiclePoolSize(); vid++)
	    {
	        new Float:ppx, Float:ppy, Float:ppz;
	        GetVehiclePos(vid, ppx, ppy, ppz);
	        if(IsPlayerInRangeOfPoint(playerid, 15.0, ppx, ppy, ppz ) && !IsVehicleOccupied(vid))
	        {
				SetVehicleToRespawn(vid);
	        }
	    }
	    format(string, sizeof(string), "AdmWarn(%d): %s has respawned vehicles near his location.",ALEVEL,GetName(playerid));
	    SendAdminMessage(COLOR_YELLOW, string);
	    return 1;
    }
    else return SCM(playerid, COLOR_GREY, "There is no vehicles close to your location.");
}


LEANCMD:(rangedespawn)
{
    new count2 = 0;
    new string[86];
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    for(new vid=1; vid <= GetVehiclePoolSize(); vid++)
    {
        new Float:ppx, Float:ppy, Float:ppz;
        GetVehiclePos(vid, ppx, ppy, ppz);
        if(IsPlayerInRangeOfPoint(playerid, 15.0, ppx, ppy, ppz))
        {
            count2++;
        }
    }
    if(count2 > 0)
    {
	    for(new vid=1; vid <= GetVehiclePoolSize(); vid++)
	    {
	        new Float:ppx, Float:ppy, Float:ppz;
	        GetVehiclePos(vid, ppx, ppy, ppz);
			new car = VehicleIDX(vid);
	        if(IsPlayerInRangeOfPoint(playerid, 15.0, ppx, ppy, ppz ) && !IsVehicleOccupied(vid))
	        {
	            if(car == INVALID_VEHICLE_ID)
	            {
	        		DestroyVehicle(vid);
				}
				else
				{
				    SetVehicleToRespawn(vid);
				}
	        }
	    }
	    format(string, sizeof(string), "AdmWarn(%d): %s has despawned vehicles near his location.",ALEVEL,GetName(playerid));
	    SendAdminMessage(COLOR_YELLOW, string);
	    return 1;
    }
    return SCM(playerid, COLOR_GREY, "There is no vehicles close to your location.");
}






LEANCMD:(fightingstyle)
{
    ShowPlayerDialog(playerid, 1339, DIALOG_STYLE_LIST, "Fighting Style.", "Normal Fighting Style\nBoxing FightingStyle\nKungFu FightingStyle", "Select", "Cancel");
    return 1;
}




LEANCMD:(mask)
{

    if ((nomask) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, "The mask system has been disabled by an admin.");
		return 1;
	}

    if(GetPVarInt(playerid, "Masked") == 0)
    {
    	SetPVarInt(playerid, "Masked", true);
    	textdraw[playerid] = CreatePlayerTextDraw(playerid, 532.0, 10.0, "_");
		PlayerTextDrawFont(playerid, textdraw[playerid], TEXT_DRAW_FONT_MODEL_PREVIEW);
    	PlayerTextDrawBackgroundColor(playerid, textdraw[playerid], 0xFFFFFF00);
    	PlayerTextDrawTextSize(playerid, textdraw[playerid], 40.0, 40.0);
    	PlayerTextDrawSetPreviewModel(playerid, textdraw[playerid], 19036);
    	PlayerTextDrawSetPreviewRot(playerid, textdraw[playerid], -4.0, 0.0, 94.0, 0.9);
    	PlayerTextDrawShow(playerid, textdraw[playerid]);
    	GameTextForPlayer(playerid, "~n~~n~~n~~p~YOU'VE PUT A MASK ON!", 1000, 3);
		EachPlayer(i)
		{
		    if(AdminDuty[i] == true)
		    {
    			ShowPlayerNameTagForPlayer(i, playerid, 1);
			}
			else
   			{
    			ShowPlayerNameTagForPlayer(i, playerid, 0);
    		}
		}
    }
    else
    {
    	SetPVarInt(playerid, "Masked", false);
    	PlayerTextDrawDestroy(playerid, textdraw[playerid]);
    	GameTextForPlayer(playerid, "~n~~n~~n~~p~YOU'VE TAKEN THE MASK OFF!", 1000, 3);
		EachPlayer(i)
		{
    		ShowPlayerNameTagForPlayer(i, playerid, 1);
		}
    }
    return 1;

}



LEANCMD:(rubberbullets)
{
	  new
	       string[128];


	  if(Civilian[playerid] == true || Criminal[playerid] == true) return SendClientMessage(playerid,COLOR_LIGHTRED, "NOTICE: "COL_WHITE"This is for Cops only.");
	  Rubber[playerid] = !Rubber[playerid];
	  if(Rubber[playerid] == false)
	  {
	  	format(string, sizeof(string), "SERVER: You've changed to LETHAL AMMUNITION.");
	  	SendClientMessage(playerid, COLOR_YELLOW, string);
	  }
	  else
	  {
	  	format(string, sizeof(string), "SERVER: You've changed to LESS LETHAL AMMO / RUBBER BULLETS.");
	  	SendClientMessage(playerid, COLOR_YELLOW, string);
	  }
	  return 1;
}

LEANCMD:(tazer)
{
	return cmd_taser(playerid, params);
}



LEANCMD:(taser)
{
  new
      string[50];

  if(Civilian[playerid] == true || Criminal[playerid] == true) return SendClientMessage(playerid,COLOR_LIGHTRED, "NOTICE: "COL_WHITE"This is for Cops only.");
  Taser[playerid] = !Taser[playerid];
  if(Taser[playerid]){
  GiveWeapon(playerid, WEAPON_SILENCED, 13);
  format(string, sizeof(string), "* %s unholsters their taser", GetICName(playerid));
  }else{
  GiveWeapon(playerid, 24, 300);
  format(string, sizeof(string), "* %s holster their taser", GetICName(playerid));
  }
  ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
  return 1;
}



LEANCMD:(togdeath)
{
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	if(PlayerInfo[playerid][pSdeath] == 0)
	{
		PlayerInfo[playerid][pSdeath] = 1;
		SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"You have disabled deathlogs.");
	}
	else
	{
		PlayerInfo[playerid][pSdeath] = 0;
		SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"You have enabled deathlogs.");
	}
	return 1;
}


LEANCMD:(veh)
{
            if(PlayerInfo[playerid][pAdmin] >= 4)
            {
            new veh,color1,color2;
            if (!sscanf(params, "iii", veh, color1,color2))
            {
                      new Float:x, Float:y, Float:z;
                      GetPlayerPos(playerid, x,y,z);
                      CreateVehicle(veh, x, y, z, 0, color1, color2, 5000 );
            }
            else SendClientMessage(playerid, 0xFFFFFFFF, "USAGE: /veh [carid] [Color 1] [Color 2]");
            }
            else ADMIN_UNAUTHORIZED
        	return 1;
}


LEANCMD:(setplate)
{
                    new
						plate[12],
					    vehid = GetPlayerVehicleID(playerid),
						string[80],
						Float:x,
						Float:y,
						Float:z,
                        color1,
                        color2;

                    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You have to be in a vehicle.");
                    if(sscanf(params, "s[12]", plate)) return SendClientMessage(playerid, COLOR_LIGHTRED, "USAGE: "COL_WHITE"/setplate [Plate] - Max 9 characters.");
                    new c = strlen(plate);
                    if(c > 9) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"Only a maximum of 9 characters.");
					new car = VehicleIDX(vehid);
		  	    	if(car != INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "You cant change plate of server created vehicles.");

					new Float:z_rot;
					GetVehicleZAngle(vehid, z_rot);
					GetVehicleColor(vehid, color1, color2);
                    GetVehiclePos(vehid, x, y, z);
                    SetVehicleNumberPlate(vehid, plate);
                    SetVehicleToRespawn(vehid);
                    SetVehiclePos(vehid, x, y, z);
                    SetVehicleZAngle(vehid, z_rot);
                    PutPlayerInVehicle(playerid, vehid, 0);
                    ChangeVehicleColor(vehid,color1,color2);
                    format(string, sizeof(string), "Your plate is now %s, beware this resets upon vehicle respawn.", plate);
                    SendClientMessage(playerid, COLOR_YELLOW, string);
                    return 1;
}



LEANCMD:(carcolor)
{
            new
			     color1,
			     color2,
			     string[146],
			     veh = GetPlayerVehicleID(playerid);

            if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_GREY, "You are not in a vehicle.");
            if (!sscanf(params, "ii", color1,color2))
            {
                if(color1 < 0 || color2 > 255) return SCM(playerid, COLOR_GREY, "Only colors between 0 - 255");
                new car = VehicleIDX(veh);
				if(car != INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "You cant change color of server created vehicles.");
				ChangeVehicleColor(GetPlayerVehicleID(playerid),color1,color2);
				format(string, sizeof(string),"[ ! ] "COL_WHITE"Vehicle color has been changed to %s[#%d] "COL_WHITE"- %s[#%d] "COL_WHITE"("COL_LIGHTRED"/colorlist"COL_WHITE" for a full list).",HexToEmbed(VehColor[color1]),color1,HexToEmbed2(VehColor[color2]),color2);
				SCM(playerid,COLOR_LIGHTRED,string);
            }
            else SendClientMessage(playerid, 0xFFFFFFFF, "Usage: /carcolor [Color 1] [Color 2]");
        	return 1;
}



new ColorList[][121] = {
	"{000000}000 {F5F5F5}001 {2A77A1}002 {840410}003 {263739}004 {86446E}005 {D78E10}006 {4C75B7}007 {BDBEC6}008 {5E7072}009",
	"{46597A}010 {656A79}011 {5D7E8D}012 {58595A}013 {D6DAD6}014 {9CA1A3}015 {335F3F}016 {730E1A}017 {7B0A2A}018 {9F9D94}019\n",
	"{3B4E78}020 {732E3E}021 {691E3B}022 {96918C}023 {515459}024 {3F3E45}025 {A5A9A7}026 {635C5A}027 {3D4A68}028 {979592}029",
	"{421F21}030 {5F272B}031 {8494AB}032 {767B7C}033 {646464}034 {5A5752}035 {252527}036 {2D3A35}037 {93A396}038 {6D7A88}039\n",
	"{221918}040 {6F675F}041 {7C1C2A}042 {5F0A15}043 {193826}044 {5D1B20}045 {9D9872}046 {7A7560}047 {989586}048 {ADB0B0}049",
	"{848988}050 {304F45}051 {4D6268}052 {162248}053 {272F4B}054 {7D6256}055 {9EA4AB}056 {9C8D71}057 {6D1822}058 {4E6881}059\n",
	"{9C9C98}060 {917347}061 {661C26}062 {949D9F}063 {A4A7A5}064 {8E8C46}065 {341A1E}066 {6A7A8C}067 {AAAD8E}068 {AB988F}069",
	"{851F2E}070 {6F8297}071 {585853}072 {9AA790}073 {601A23}074 {20202C}075 {A4A096}076 {AA9D84}077 {78222B}078 {0E316D}079\n",
	"{722A3F}080 {7B715E}081 {741D28}082 {1E2E32}083 {4D322F}084 {7C1B44}085 {2E5B20}086 {395A83}087 {6D2837}088 {A7A28F}089",
	"{AFB1B1}090 {364155}091 {6D6C6E}092 {0F6A89}093 {204B6B}094 {2B3E57}095 {9B9F9D}096 {6C8495}097 {4D8495}098 {AE9B7F}099\n",
	"{406C8F}100 {1F253B}101 {AB9276}102 {134573}103 {96816C}104 {64686A}105 {105082}106 {A19983}107 {385694}108 {525661}109",
	"{7F6956}110 {8C929A}111 {596E87}112 {473532}113 {44624F}114 {730A27}115 {223457}116 {640D1B}117 {A3ADC6}118 {695853}119\n",
	"{9B8B80}120 {620B1C}121 {5B5D5E}122 {624428}123 {731827}124 {1B376D}125 {EC6AAE}126 {000000}127 {177517}128 {210606}129",
	"{125478}130 {452A0D}131 {571E1E}132 {010701}133 {25225A}134 {2C89AA}135 {8A4DBD}136 {35963A}137 {B7B7B7}138 {464C8D}139\n",
	"{84888C}140 {817867}141 {817A26}142 {6A506F}143 {583E6F}144 {8CB972}145 {824F78}146 {6D276A}147 {1E1D13}148 {1E1306}149",
	"{1F2518}150 {2C4531}151 {1E4C99}152 {2E5F43}153 {1E9948}154 {1E9999}155 {999976}156 {7C8499}157 {992E1E}158 {2C1E08}159\n",
	"{142407}160 {993E4D}161 {1E4C99}162 {198181}163 {1A292A}164 {16616F}165 {1B6687}166 {6C3F99}167 {481A0E}168 {7A7399}169",
	"{746D99}170 {53387E}171 {222407}172 {3E190C}173 {46210E}174 {991E1E}175 {8D4C8D}176 {805B80}177 {7B3E7E}178 {3C1737}179\n",
	"{733517}180 {781818}181 {83341A}182 {8E2F1C}183 {7E3E53}184 {7C6D7C}185 {020C02}186 {072407}187 {163012}188 {16301B}189",
	"{642B4F}190 {368452}191 {999590}192 {818D96}193 {99991E}194 {7F994C}195 {839292}196 {788222}197 {2B3C99}198 {3A3A0B}199\n",
	"{8A794E}200 {0E1F49}201 {15371C}202 {15273A}203 {375775}204 {060820}205 {071326}206 {20394B}207 {2C5089}208 {15426C}209",
	"{103250}210 {241663}211 {692015}212 {8C8D94}213 {516013}214 {090F02}215 {8C573A}216 {52888E}217 {995C52}218 {99581E}219\n",
	"{993A63}220 {998F4E}221 {99311E}222 {0D1842}223 {521E1E}224 {42420D}225 {4C991E}226 {082A1D}227 {96821D}228 {197F19}229",
	"{3B141F}230 {745217}231 {893F8D}232 {7E1A6C}233 {0B370B}234 {27450D}235 {071F24}236 {784573}237 {8A653A}238 {732617}239\n",
	"{319490}240 {56941D}241 {59163D}242 {1B8A2F}243 {38160B}244 {041804}245 {355D8E}246 {2E3F5B}247 {561A28}248 {4E0E27}249",
	"{706C67}250 {3B3E42}251 {2E2D33}252 {7B7E7D}253 {4A4442}254 {28344E}255\n"
};



stock ShowCarColorList(playerid,dialogid,Caption[],Button1[],Button2[])
{
	new BigString[3098];
	for(new i = 0; i < sizeof(ColorList); i++) format(BigString, sizeof(BigString), "%s%s", BigString, ColorList[i]);
	ShowPlayerDialog(playerid,dialogid,DIALOG_STYLE_MSGBOX,Caption,BigString,Button1,Button2);
}

LEANCMD:(colorlist)
{

	ShowCarColorList(playerid,9392,"Colorlist!","Close","Close");
	return 1;

}

LEANCMD:(vehhp)
{
            new
			     vehicleid,
			     ammount,
			     string[128];

            if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
            if(sscanf(params, "ii", vehicleid, ammount)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /Vehhp [VehicleID] [amount]");
            if(!IsValidVehicle(vehicleid)) return SCM(playerid, COLOR_GREY, "Invalid vehicleid!");
            SetVehicleHealth(vehicleid, ammount);
            format(string,sizeof(string),"AdmWarn(%i): %s has set the vehicle %d health to %d.",ALEVEL,GetName(playerid),vehicleid,ammount);
            SendAdminMessage(COLOR_YELLOW,string);
        	return 1;
}

LEANCMD:(animlist)
{
	return cmd_anims(playerid, params);
}


LEANCMD:(stopanim)
{
    if(DM[playerid] == true || DM1[playerid] == true) return 1;
    if(IsPlayerInAnyVehicle(playerid)) return ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.1, 0, 0, 0, 0, 0, 0);
	ClearAnimations(playerid);
	return 1;
}


LEANCMD:(tpbreach)
{

    if ((notp) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, "The teleport system has been disabled by an admin.");
		return 1;
	}
	else
	{
	    SetPlayerPosEx(playerid, 1928.1375, 700.1694, 10.8203, 0);
	    SendClientMessage(playerid, COLOR_GREY, "You have been teleported to housebreaching center!");
	    SetPlayerInterior(playerid, 0);
	    SetPlayerVirtualWorld(playerid, WORLD[playerid]);
	    return 1;
    }
}





LEANCMD:(handcuff)
{
	new targetid,string[ 64 ];
	if(sscanf(params,"u",targetid)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /handcuff [PlayerID/PartOfName]");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(AdminDuty[targetid] == true) return SCM(playerid, COLOR_LIGHTRED, "Trying to abuse admins?");
	if(IsPlayerNearPlayer(playerid, targetid, 3.0))
	{
        SetPlayerSpecialAction(targetid,SPECIAL_ACTION_CUFFED);
        format(string,sizeof(string),"WARN: "COL_WHITE"You have been cuffed by %s.",GetICName(playerid));
        SCM(targetid, COLOR_LIGHTRED, string);
        cuffed[targetid] = true;
	}
	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "You are not close enough to this player.");
	}
	return 1;
}


LEANCMD:(unhandcuff)
{
	new targetid,string[ 64 ];
	if(sscanf(params,"u",targetid)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /unhandcuff [PlayerID/PartOfName]");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(IsPlayerNearPlayer(playerid, targetid, 3.0))
	{
        SetPlayerSpecialAction(targetid,SPECIAL_ACTION_NONE);
        format(string,sizeof(string),"WARN: "COL_WHITE"You have been uncuffed by %s.",GetICName(playerid));
        SCM(targetid, COLOR_LIGHTRED, string);
        cuffed[targetid]= false;
	}
	return 1;
}



LEANCMD:(changepw)
{
    SetPlayerChatBubble(playerid, "(( CHANGING PASSWORD ))", COLOR_LIGHTRED, 50.0, 5000);
    ShowPlayerDialog(playerid, DIALOG_REGISTER, DIALOG_STYLE_INPUT,""COL_WHITE"Change User Password",""COL_WHITE"Type in the new password below, atleast 9 characters long.\n\n\n"COL_LIGHTRED"[ ! ]"COL_WHITE" DO NOT USE SAME PASSWORD AS YOU DO ON LS-RP.","Change","Cancel");
    return 1;
}



LEANCMD:(setfreq)
{
	new radio, str[37];
	if(sscanf(params, "d", radio)) return SendClientMessage(playerid, -1, "[USAGE]: /setfreq [Frequency Number]");
	PlayerInfo[playerid][Freq] = radio;
	format(str, sizeof(str), "You have set your frequency to %d.",radio);
	SCM(playerid, COLOR_YELLOW, str);

	new radios[5];
	valstr(radios, PlayerInfo[playerid][Freq], true);
	PlayerTextDrawSetString(playerid, TDEditor_PTD[playerid][9], radios);
	return 1;
}


LEANCMD:(r)
{
	new
	    string[128];

    if (muted[playerid] == true) return SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY,"USAGE: /r [text]");
	format(string, sizeof(string), "**[CH: %d S:1] %s: %s",PlayerInfo[playerid][Freq],GetICMame(playerid), params);
	new radio = PlayerInfo[playerid][Freq];
	EachPlayer(i)
	{
    		if(PlayerInfo[i][Freq] == radio || listeningR[i] == true && PlayerInfo[playerid][pAdmin] > 4)
		    {
				SendClientMessage(i, COLOR_RADIO, string);
			}
	}
	format(string, sizeof(string), "(Radio) %s says: %s",GetICMame(playerid), params);
	ProxDetectorRadio(20.0, playerid, string, COLOR_GRAD1, COLOR_GRAD2,COLOR_GRAD3,COLOR_GRAD4,COLOR_GRAD5);
	format(string, sizeof(string), "04[RADIO]07 **[CH: %d S:1] %s: %s",PlayerInfo[playerid][Freq], GetICName(playerid), params);
 	IRC_GroupSayEx(string);
    format(string,sizeof(string),"(Radio) %s says: %s",GetICName(playerid), params);
    WriteLog("Radio", string);
	return 1;
}



LEANCMD:(rlow)
{
	new
	    string[128];

    if (muted[playerid] == true) return SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY,"USAGE: /r [text]");
	format(string, sizeof(string), "**[CH: %d S:1] %s: %s",PlayerInfo[playerid][Freq],GetICName(playerid), params);
	new radio = PlayerInfo[playerid][Freq];
	EachPlayer(i)
	{
    		if(PlayerInfo[i][Freq] == radio || listeningR[i] == true && PlayerInfo[playerid][pAdmin] > 4)
		    {
				SendClientMessage(i, COLOR_RADIO, string);
			}
	}
	format(string, sizeof(string), "(Radio) %s says: %s",GetICMame(playerid), params);
	ProxDetectorRadio(5.0, playerid, string,COLOR_GRAD1,COLOR_GRAD2,COLOR_GRAD3,COLOR_GRAD4,COLOR_GRAD5);
	format(string, sizeof(string), "04[RADIO]07 **[CH: %d S:1] %s: %s",PlayerInfo[playerid][Freq], GetICName(playerid), params);
 	IRC_GroupSayEx(string);
	return 1;
}

LEANCMD:(listenfreq)
{

    if (PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED

    if(listeningR[playerid] == false)
    {
        listeningR[playerid] = true;
        new string[128];
  		format(string, sizeof(string), "AdmWarn(%d): %s is listening to all radio frequencies." ,PlayerInfo[playerid][pAdmin], GetName(playerid));
    	SendAdminMessage(COLOR_YELLOW, string);
    	return 1;
    }
    
    if(listeningR[playerid] == true)
    {
        listeningR[playerid] = false;
        new string[128];
  		format(string, sizeof(string), "AdmWarn(%d): %s is no longer listening to all radio frequencies." ,PlayerInfo[playerid][pAdmin], GetName(playerid));
    	SendAdminMessage(COLOR_YELLOW, string);
    	return 1;
    }
    
	return 1;

}



LEANCMD:(kick)
{
    new
	    id,
		reason[64],
		string[128];

    if(PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 4) return ADMIN_UNAUTHORIZED
	if(sscanf(params, "us[64]", id, reason)) return SCM(playerid, COLOR_WHITE,"USAGE: /kick [playerid/partofname] [reason]");
    if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
    if(PlayerInfo[playerid][pAdmin] < PlayerInfo[id][pAdmin]) return SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This player is higher ranked admin than you are.");
    else
    {
	    format(string, sizeof(string),"AdmCmd: %s was kicked by %s, reason: %s",GetName(id),GetName(playerid),reason);
	    SendClientMessageToAll(COLOR_LIGHTRED,string);
	    format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s was kicked by %s, reason: %s",GetName(id),GetName(playerid),reason);
     	IRC_GroupSayEx(string);
        format(string,sizeof(string),"AdmCmd: %s was kicked by %s, reason: %s",GetName(id),GetName(playerid),reason);
        WriteLog("PlayerKicks", string);
        TogglePlayerControllable(id,0);
        SetTimerEx("Kicku", 500, false, "i", id); 
    }
    return 1;
}



LEANCMD:(ban)
{
	new
         id,
		 reason[94],
		 string[128];

	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"us[94]", id, reason)) return SCM(playerid, COLOR_WHITE,"USAGE: /ban [playerid/partofname] [reason]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	new Length = strlen(reason);
	if( Length > 25) return SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Reason given is too long!");
	else
	{
 		format(string, sizeof(string), "AdmCmd: %s was banned by %s, reason: %s",GetName(id),GetName(playerid) , reason);
 		SendClientMessageToAll(COLOR_LIGHTRED, string);
 		WriteLog("PlayerBans", string);
   		format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s was banned by %s, reason: %s",GetName(id),GetName(playerid),reason);
     	IRC_GroupSayEx(string);

	  	PlayerInfo[id][pBanned] = 1;
	  	PlayerInfo[id][pBannedr] = reason;
	  	SetTimerEx("Kicku", 500, false, "i", id);

	}
	return 1;
}



new ACCUNBAN[MAX_PLAYER_NAME];
LEANCMD:(unban)
{
    new
	    sP[MAX_PLAYER_NAME],
		ottquery[55+MAX_PLAYER_NAME];

    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    if(sscanf(params, "s[24]", sP)) return SendClientMessage(playerid, -1, "USAGE: /unban [ACCOUNT NAME]");
    if(strlen(sP) < 3 || strlen(sP) > MAX_PLAYER_NAME) return SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Invalid name!");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountUnban", "d", playerid);
	ACCUNBAN = sP;
    return 1;
}

forward OnAccountUnban(playerid);
public OnAccountUnban(playerid)
{
    new ottquery[65+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Banned` = '0' WHERE `Username` = '%s'", ACCUNBAN);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(%d): %s has unbanned the account %s." ,PlayerInfo[playerid][pAdmin], GetName(playerid), ACCUNBAN);
    	SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}







LEANCMD:(crimskin)
{
    if(PlayerInfo[playerid][Rank] == 1) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE" This command is not available for recruits.");
    
	if(Civilian[playerid] == true)
	{
        SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Please select a skin you want to use as a criminal!");
		DestroySelectionMenu(playerid);

		SetPVarInt(playerid, "skinc_active", 1);


		CreateSelectionMenu(playerid);
		SelectTextDraw(playerid, 0xACCBF1FF);
		CrimSkinning[playerid] = true;
		return 1;
	}
	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "Please go /offduty before setting your crimskin..");
	}
	return 1;
}


public selectcrim(playerid, response, skin)
{
	if(response)
	{
		new string[128];
		format(string,sizeof(string),"[ ! ] "COL_WHITE"%d"COL_LIGHTRED" has been set as your criminal skin.",skin);
		SCM(playerid,COLOR_LIGHTRED,string);
		PlayerInfo[playerid][pCrim] = skin;
		SetPlayerSkin(playerid,PlayerInfo[playerid][pSkin]);
	}
	else {
 	SCM(playerid,COLOR_LIGHTRED,"Criminal skin selector aborted.");
 	SetPlayerSkin(playerid,PlayerInfo[playerid][pSkin]);}
	return 1;
}



LEANCMD:(do)
{
	if ((noic) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, IC_DISABLED_ATTEMPT_MESSAGE);
		return 1;
	}



    if (muted[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
		return 1;
	}

	if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_GREY,"USAGE: /do [action]");
	new string[ MAX_PLAYER_NAME + 156 ];
    format(string, sizeof(string), "* %s ((%s))", params, GetICMame(playerid));
	SendMeessage(playerid, string);
    format(string,sizeof(string),"[/DO] * %s ((%s))",params,GetICMame(playerid));
    WriteLog("Emotes", string);
	return 1;
}



LEANCMD:(me)
{
	if ((noic) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, IC_DISABLED_ATTEMPT_MESSAGE);
		return 1;
	}



    if (muted[playerid] == true) return SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
   	if(IsSpecing[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You can not talk while spectating");
		return 1;
	}
    new string[MAX_PLAYER_NAME + 146];
	if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_GREY,"USAGE: /me [action]");
    format(string, sizeof(string), "* %s %s", GetICMame(playerid), params);
	SendMeessage(playerid, string);
	format(string, sizeof(string), "04[EMOTE]06 * %s %s",GetICName(playerid), params);
 	IRC_GroupSayEx(string);
    format(string,sizeof(string),"[/ME] * %s %s",GetICName(playerid), params);
    WriteLog("Emotes", string);
	return 1;
}



LEANCMD:(melow)
{

    if (muted[playerid] == true) return SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
    new string[MAX_PLAYER_NAME + 146];
	if(IsSpecing[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You can not talk while spectating");
		return 1;
	}
	if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_GREY,"USAGE: /melow [action]");
    format(string, sizeof(string), "* %s %s", GetICMame(playerid), params);
	SendMeLowessage(playerid,string);
	format(string, sizeof(string), "04[EMOTE]06 * %s %s",GetICName(playerid), params);
 	IRC_GroupSayEx(string);
    format(string,sizeof(string),"[/MELOW] * %s %s",GetICName(playerid), params);
    WriteLog("Emotes", string);
	return 1;
}

LEANCMD:(vehint)
{
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	new vid,int,string[128];
	if(sscanf(params,"dd",vid,int)) return SCM(playerid,COLOR_GREY,"USAGE: /vehint [vehicleid] [interiorid]");
	if(!IsValidVehicle(vid)) return SCM(playerid,COLOR_GREY,"ERROR: Invalid vehicleid.");
	LinkVehicleToInterior(vid, int);
 	format(string, sizeof(string), "AdmWarn(%d): %s has set Vehicle[%d] interior to %d.",ALEVEL,GetName(playerid),vid,int);
    SendAdminMessage(COLOR_YELLOW, string);
	return 1;
}







LEANCMD:(b)
{

    if (muted[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
		return 1;
	}


	if(IsSpecing[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You can not talk while spectating");
		return 1;
	}


	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY,"USAGE: /b [local ooc chat]");
	new string[156];
	if(AdminDuty[playerid] == false)
	{
	    format(string, sizeof(string), "(( [%i] %s: %s ))",playerid, GetName(playerid), params);
		SendBMessage(playerid, string);
		format(string, sizeof(string), "04[OOC]14 (( [%i] %s: %s ))",playerid, GetName(playerid), params);
	 	IRC_GroupSayEx(string);
	    format(string,sizeof(string),"[/b] (( %s: %s ))",GetName(playerid), params);
	    WriteLog("Chat", string);
		return 1;
	}
	else
	{
		format(string, sizeof(string), "(( [%i] "COL_ORANGE"%s"COL_GREY": %s ))",playerid, GetName(playerid), params);
		SendBMessage(playerid, string);
		format(string, sizeof(string), "04[OOC]14 (( [%i] 07%s14: %s ))",playerid, GetName(playerid), params);
	 	IRC_GroupSayEx(string);
	    format(string,sizeof(string),"[ADMINDUTY /b] (( %s: %s ))",GetName(playerid), params);
	    WriteLog("Chat", string);
	}
	return 1;
}



LEANCMD:(gotolv)
{
	SetPlayerPosEx(playerid, 1688.7521,1447.7057,10.7675);
	SendClientMessage(playerid, COLOR_GRAD1, "You have been teleported to Las Venturas.");
	SetPlayerInterior(playerid,0);
	SetPlayerVirtualWorld(playerid, 0);
	return 1;
}




LEANCMD:(gotosf)
{

	SetPlayerPosEx(playerid, -1767.3699,-579.8153,16.3359);
	SendClientMessage(playerid, COLOR_GRAD1, "You have been teleported.");
	SetPlayerInterior(playerid,0);
	SetPlayerVirtualWorld(playerid, 0);
	return 1;
}



LEANCMD:(gotols)
{
	SetPlayerPosEx(playerid, 1529.6, -1691.2, 13.3);
	SendClientMessage(playerid, COLOR_GRAD1, " You have been teleported.");
	SetPlayerInterior(playerid,0);
	SetPlayerVirtualWorld(playerid, 0);
	return 1;
}


LEANCMD:(gotolsh)
{
	SetPlayerPos(playerid, 1529.6, -1691.2, 13.3);
	SendClientMessage(playerid, COLOR_GRAD1, " You have been teleported.");
	SetPlayerInterior(playerid,0);
	SetPlayerVirtualWorld(playerid, 0);
	return 1;
}



LEANCMD:(goto)
{
    new
	     targetid,
	     tmpcar = GetPlayerVehicleID(playerid),
	     Float:x,
		 Float:y,
		 Float:z;
    if ((notp) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, "The teleport system has been disabled by an admin.");
		return 1;
	}

    if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /goto [partofname/playerid]");
    if(targetid == playerid)return SendClientMessage(playerid,COLOR_LIGHTRED,"Teleport to yourself?");
    if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
    if(GetPlayerState(playerid) == 2)
	{
    	SetPlayerInterior(playerid, GetPlayerInterior(targetid));
    	GetPlayerPos(targetid, x, y, z);
	    SetPlayerPosEx(playerid, x+1, y+1, z);
	    LinkVehicleToInterior(tmpcar, GetPlayerInterior(targetid));
	    SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(targetid));
        WORLD[playerid] = WORLD[targetid];
	}
	else
    {
    	SetPlayerInterior(playerid, GetPlayerInterior(targetid));
    	GetPlayerPos(targetid, x, y, z);
    	SetPlayerPosEx(playerid, x+1, y+1, z, 0);
	    SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(targetid));
	    WORLD[playerid] = WORLD[targetid];
    }
    SCM(playerid, COLOR_GREY, " You have been teleported.");
    return 1;
}





LEANCMD:(whisper)
{
	if (muted[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
		return 1;
	}

	new
	     id,
		 string[MAX_PLAYER_NAME + MAX_PLAYER_NAME + 147];

	if(IsSpecing[playerid] == true) return SCM(playerid, COLOR_GREY, "You can't whisper while spectating.");
	if(sscanf(params,"us", id, params)) return SCM(playerid, COLOR_GREY,"USAGE: /(w)hisper [playerid/partofname] [text]");
	if(id == playerid) return SendClientMessage(playerid,COLOR_LIGHTRED,"Whisper to yourself? o.O");
	if( id == INVALID_PLAYER_ID ) return INVALID_PLAYERMSG
 	if(IsPlayerNearPlayer(playerid, id, 3.0))
  	{
            format(string,sizeof(string),"%s mutters something", GetICName(playerid));
            SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 100.0, 10000);
            
			format(string, sizeof(string), "%s whispers %s", GetICName(playerid), params);
			SendPlayerMessage(playerid, COLOR_YELLOW3, string);
			
			format(string, sizeof(string), "%s whispers %s", GetICName(playerid), params);
			SendPlayerMessage(id, COLOR_YELLOW3, string);
			
			format(string, sizeof(string), "%s whisperd to %s %s", GetICName(playerid),GetICName(id),params);
			WriteLog("Whisper", string);
			format(string, sizeof(string), "04[WHISPER]08 %s whisperd to %s: %s", GetICName(playerid),GetICName(id),params);
   			IRC_GroupSayEx(string);
	}
	else return SCM(playerid, COLOR_GREY,"That player is not near you.");
	return 1;
}

LEANCMD:(re)
{
	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY,"USAGE: /re [text]");
	new string[128];
	format(string, sizeof(string), "[Request: %d] {FF9900}%s (%d) reported: %s",playerid, GetName(playerid),playerid, params);
	SendAdminMessage(COLOR_LIGHTRED, string);
	SendClientMessage(playerid, COLOR_LIGHTRED, "Request sent to all online administrators.");
	return 1;
}



LEANCMD:(time)
{
		new hour,minute,second,string[64];
		gettime(hour,minute,second);
		FixHour(hour);
		hour = shifthour;
		if (minute < 10)
		{
				format(string, sizeof(string), "~g~|~w~%d:0%d~g~|", hour, minute);
		}
		else
		{
				format(string, sizeof(string), "~g~|~w~%d:%d~g~|", hour, minute);

		}
		GameTextForPlayer(playerid, string, 5000, 1);
		format(string, sizeof(string), "%s checks the time.", GetICMame(playerid));
		SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 10000);
		return 1;
}

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////- END OF COMMANDS -//////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
#define DIALOG_ROADBLOCK 1343
new roaded = 0;

#define MAX_ROADBLOCKS 200

enum rInfo
{
	rCreated,
    Float:rX,
    Float:rY,
    Float:rZ,
    rObject,
    rObjectID,
    rName[30],
};
new RoadInfo[MAX_ROADBLOCKS][rInfo];


enum RoadBlockEnum
{
    RoadID,
	RoadName[30]
}

new RoadBlockInfo[][RoadBlockEnum] = {
{1238, "Traffic Cone"},
{19834, "Police Tape"},
{1282, "Roadblock"},
{1425, "Detour"},
{1228, "Small Barrier"},
{1424, "Medium Barrier"},
{978,  "Large Barrier"},
{8674, "Gate"},
{7657,  "Large Gate"},
{981,  "Road Stop"}
};

LEANCMD:(roadblock)
{
    if (strcmp("adj", params, true, 3) == 0)
    {
        for(new i = 0; i < sizeof(RoadInfo); i++)
  		{
	  	    if(IsPlayerInRangeOfPoint(playerid, 4.0, RoadInfo[i][rX], RoadInfo[i][rY], RoadInfo[i][rZ]))
	        {
	  	        if(RoadInfo[i][rCreated] == 1)
	            {
                    SetPVarInt( playerid, "RoadBlockEdit",1 );
                    EditDynamicObject(playerid, RoadInfo[i][rObject]);
	                return 1;
	  	        }
	  	    }
		}
	}
	else
	{
		ShowDialog(playerid, Show:RoadBlockMenu, DIALOG_STYLE_LIST, ""COL_FACTION"RoadBlock Menu", "Current RoadBlocks\nCreate New Roadblock", "Select", "Cancel");
	}
	return 1;
}

new roadblockID[MAX_PLAYERS];

Dialog:RoadBlockMenu(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
	{
		switch(listitem)
		{
		    case 0:
			{
			        new string[400];
			        for(new x;x<sizeof(RoadInfo);x++)
			        {
			      	    if(RoadInfo[x][rCreated] == 1)
  	    				{
                            format(string, sizeof(string), "%s%s (%s)\n", string, RoadBlockInfo[x][RoadName], RoadInfo[x][rName]);
						}
						else
						{
						    format(string, sizeof(string), "%sN/A\n",string);
						}
					}
					ShowDialog(playerid, Show:RoadBlockEdit, DIALOG_STYLE_LIST, ""COL_FACTION"RoadBlock Menu", string, "Select", "Cancel");
					return 1;
  	    	}
			case 1:
			{
				if(roaded > MAX_ROADBLOCKS) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"There is maximum roadblocks spawned.");
				new string[256];
				for(new x;x<sizeof(RoadBlockInfo);x++)
				{
					format(string, sizeof(string), "%s%s\n", string, RoadBlockInfo[x][RoadName]);
				}
				ShowDialog(playerid, Show:RoadBlock, DIALOG_STYLE_LIST, ""COL_FACTION"RoadBlock Menu", string, "Select", "Cancel");
				return 1;

			}
		}

   	}
	else SCM(playerid, COLOR_GREY, "RoadBlock Menu canceld.");
	return 1;
}


Dialog:RoadBlockEdit(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
	{
		new string[128];
		format(string, sizeof(string),"%s",RoadBlockInfo[listitem][RoadName]);
		ShowDialog(playerid, Show:RoadBlockDelete, DIALOG_STYLE_LIST, string, "Delete Roadblock", "Select", "Cancel");

   	}
	else SCM(playerid, COLOR_GREY, "RoadBlock Menu canceld.");
	return 1;
}
Dialog:RoadBlockDelete(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
	{
	            new string[128];
                format(string,sizeof(string),"\n"COL_WHITE"Are you sure you want to disband this "COL_FACTION"%s?\n ",RoadInfo[listitem][rName]);
                ConfirmDialog(playerid, "Roadblock", string, "DeleteClosestRoad",listitem);
   	}
	else SCM(playerid, COLOR_GREY, "RoadBlock Menu canceld.");
	return 1;
}


Dialog:RoadBlock(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
	{
 				for(new i = 0; i < sizeof(RoadInfo); i++)
  				{
  	    			if(RoadInfo[i][rCreated] == 0)
  	    			{
  	    			    SetPVarInt( playerid, "RoadBlocking",1 );
   						new Float:RPOS[4];
						GetPlayerPos(playerid,RPOS[0], RPOS[1], RPOS[2]);
						GetPlayerFacingAngle(playerid,RPOS[3]);
						RoadInfo[i][rObject] = CreateDynamicObject(RoadBlockInfo[listitem][RoadID], RPOS[0], RPOS[1]+2, RPOS[2], 0, 0, RPOS[3]-180);
    					EditDynamicObject(playerid, RoadInfo[i][rObject]);
    					roadblockID[playerid] = listitem;
						return 1;
					}
				}

   	}
	else SCM(playerid, COLOR_GREY, "RoadBlock Menu canceld.");
	return 1;
}


LEANCMD:(uniform)
{
	    #if defined TRAINING_METRO
		new listitems[] =
		"Model\tRace\tSex\tAccessories\n" \
		"01:  LSPD\tCaucasian\tMale\tYes\n" \
		"02:  LSPD\tCaucasian\tMale\tNo\n" \
		"03:  SFPD\tCaucasian\tMale\tYes\n" \
		"04:  SFPD\tCaucasian\tMale\tNo\n" \
		"05:  LSPD\tCaucasian\tFemale\tYes\n" \
		"06:  LSFD\tAfrican American\tFemale\tNo\n" \
		"07:  Biker\tAfrican American\tMale\tNo\n" \
		"08:  TenPenny\tAfrican American\tMale\tYes\n" \
		"09:  Pulaski\tCaucasian\tMale\tYes\n" \
		"10:  Hernandez\tLatino\tMale\tYes\n";
		#endif
		#if defined TRAINING_SASD
		new listitems[] =
		"Model\tRace\tSex\tAccessories\n" \
		"11:  Cadet\tCaucasian\tMale\tYes\n" \
		"12:  LVPD\tCaucasian\tMale\tYes\n" \
		"13:  LVPD\tCaucasian\tMale\tNo\n" \
		"14:  LVPD\tCaucasian\tFemale\tNo\n" \
		"15:  CSHER\tCaucasian\tMale\tYes\n" \
		"16:  CSHER\tCaucasian\tMale\tNo\n" \
		"17:  DSHER\tCaucasian\tMale\tYes\n";
		#endif
		ShowDialog(playerid, Show:Uniform, DIALOG_STYLE_TABLIST_HEADERS, "Select a skin", listitems, "Select", "Cancel");
		return 1;
}

Dialog:Uniform(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    switch(listitem)
	    {
			#if defined TRAINING_METRO
			case 0: // 01
			{
			    SetPlayerSkin(playerid, 280);
			}
			case 1: // 02
			{
			    SetPlayerSkin(playerid, 300);
			}
			case 2: // 03
			{
			    SetPlayerSkin(playerid, 281);
			}
			case 3: // 04
			{
			    SetPlayerSkin(playerid, 301);
			}
			case 4: // 05
			{
			    SetPlayerSkin(playerid, 306);
			}
			case 5: // 06
			{
			    SetPlayerSkin(playerid, 307);
			}
			case 6: // 07
			{
			    SetPlayerSkin(playerid, 284);
			}
			case 7: // 08
			{
			    SetPlayerSkin(playerid, 265);
			}
			case 8: // 09
			{
			    SetPlayerSkin(playerid, 266);
			}
			case 9: // 10
			{
			    SetPlayerSkin(playerid, 267);
			}
			#endif
			#if defined TRAINING_SASD
			case 0: // 01
			{
			    SetPlayerSkin(playerid, 71);
			}
			case 1: // 02
			{
			    SetPlayerSkin(playerid, 282);
			}
			case 2: // 03
			{
			    SetPlayerSkin(playerid, 302);
			}
			case 3: // 04
			{
			    SetPlayerSkin(playerid, 309);
			}
			case 4: // 05
			{
			    SetPlayerSkin(playerid, 283);
			}
			case 5: // 06
			{
			    SetPlayerSkin(playerid, 311);
			}
			case 6: // 07
			{
			    SetPlayerSkin(playerid, 310);
			}
			#endif

		}
		SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"Uniform changed.");
	}
	return 1;
}




stock CreateRoadBlock( playerid, Float:x, Float:y, Float:z, Float:px, Float:py, Float:pz )
{
    for(new i = 0; i < sizeof(RoadInfo); i++)
  	{
  	    if(RoadInfo[i][rCreated] == 0)
  	    {
  	        DestroyDynamicObject(RoadInfo[i][rObject]);
  	        RoadInfo[i][rObject] = CreateDynamicObject(RoadBlockInfo[roadblockID[playerid]][RoadID], x, y, z, px, py, pz);
  	        roaded ++;
            RoadInfo[i][rCreated]=1;
            RoadInfo[i][rX]=x;
            RoadInfo[i][rY]=y;
            RoadInfo[i][rZ]=z;
   			strmid(RoadInfo[i][rName] , RoadBlockInfo[roadblockID[playerid]][RoadName], 0, strlen(RoadBlockInfo[roadblockID[playerid]][RoadName]), 30);
			new
				string[76];
   			format(string,sizeof(string),"[ ! ] "COL_FACTION"%s "COL_WHITE"deployed.",RoadInfo[i][rName]);
   			SCM(playerid,COLOR_LIGHTRED,string);
   			roaded ++;
	        return 1;
  	    }
  	}
  	return 0;
}



stock DeleteAllRoadBlocks()
{
    for(new i = 0; i < sizeof(RoadInfo); i++)
  	{
  	        RoadInfo[i][rCreated]=0;
            RoadInfo[i][rX]=0.0;
       	    RoadInfo[i][rY]=0.0;
            RoadInfo[i][rZ]=0.0;
            DestroyDynamicObject(RoadInfo[i][rObject]);
            roaded = 0;
	}
    return 0;
}

forward DeleteClosestRoad(playerid, response, i);
public DeleteClosestRoad(playerid, response, i)
{
	if(response)
	{
	roaded --;
	RoadInfo[i][rCreated]=0;
	RoadInfo[i][rX]=0.0;
	RoadInfo[i][rY]=0.0;
	RoadInfo[i][rZ]=0.0;
	DestroyDynamicObject(RoadInfo[i][rObject]);
 	new string[96];
	format(string,sizeof(string),"[ ! ] "COL_FACTION"%s"COL_WHITE" disbanded",RoadInfo[i][rName]);
	SCM(playerid,COLOR_LIGHTRED,string);
	}
	else return SCM(playerid,COLOR_GREY,"Aborted roadblock disband menu.");
	return 1;
}



LEANCMD:(disband)
{
	new _entity_test;
	if( (_entity_test = isNearSpike( playerid, 3.5 )) != -1 )
	{
        DestroySpike( _entity_test );
		SCM(playerid,COLOR_LIGHTRED, "[ ! ] "COL_FACTION"Spike"COL_WHITE" disbanded");
		return 1;
	}



    for(new i = 0; i < sizeof(RoadInfo); i++)
  	{
  	    if(IsPlayerInRangeOfPoint(playerid, 2.0, RoadInfo[i][rX], RoadInfo[i][rY], RoadInfo[i][rZ]))
        {
  	        if(RoadInfo[i][rCreated] == 1)
            {
                new string[128];
                //format(str, sizeof (str), "{%06x}", COLOR_DUTY >>> 8);
                format(string,sizeof(string),"\n"COL_WHITE"Are you sure you want to disband this "COL_FACTION"%s?\n ",RoadInfo[i][rName]);
                ConfirmDialog(playerid, "Roadblock", string, "DeleteClosestRoad",i);
                return 1;
  	        }
  	    }
	}
	return 1;
}



stock DeleteAllStrip()
{
   	for(new spike_id = 0; spike_id < sizeof(RoadInfo); spike_id++)
  	{
     	DestroySpike( spike_id );
	}
    return 0;
}



LEANCMD:(disbandall)
{
	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	new string[65];
	DeleteAllStrip();
	DeleteAllRoadBlocks();
	roaded = 0;
	format(string, sizeof(string), "AdmCmd: %s has disbanded all roadblocks.",GetName(playerid));
	SendClientMessageToAll(COLOR_LIGHTRED, string);
	return 1;
}


new
	anim[MAX_PLAYERS];

forward Lean_OnPlayerChangeAnim( playerid, newanimid, oldanimid );
public Lean_OnPlayerChangeAnim( playerid, newanimid, oldanimid )
{
	if( newanimid == 0 ) return 0;

	if(BWMODE[playerid] == true)
	{
		if( newanimid != 1701)
		{
		    DPDFINAL( playerid );
		}
	}
	return 1;
}


forward GiveWeapon(playerid, weaponid, ammo);
public GiveWeapon(playerid, weaponid, ammo)
{
    new slot = GetWSlotID(weaponid);
	Weapons[playerid][slot] = weaponid;
	GiveTheGun(playerid, weaponid, ammo);
	return 1;
}

forward GiveTheGun(playerid, weaponid, ammo);
public GiveTheGun(playerid, weaponid, ammo)
{
    GivePlayerWeapon(playerid, weaponid, ammo);
}

forward ResetWeapons(playerid);
public ResetWeapons(playerid)
{
    ResetPlayerWeapons(playerid);

    for(new i = 0; i < WEAPON_SLOTS; i++)
    {
        Weapons[playerid][i] = -1;
	}
	return 1;
}






forward DesyncCheck(playerid);
public DesyncCheck(playerid)
{

	if(GetPlayerDrunkLevel(playerid) > 2000) return 1;
	SetPlayerDrunkLevel(playerid, 2000);
	return 1;
}



stock GetVehicleSpeed(vehicleid)
{
    new Float:V[3];
    GetVehicleVelocity(vehicleid, V[0], V[1], V[2]);
    return floatround(floatsqroot(V[0] * V[0] + V[1] * V[1] + V[2] * V[2]) * 181.5);
}

stock GetPlayerSpeed(playerid)
{
    new Float:V[3];
    GetPlayerVelocity(playerid, V[0], V[1], V[2]);
    return floatround(floatsqroot(V[0] * V[0] + V[1] * V[1] + V[2] * V[2]) * 180.00);
}

stock GetVehicleSpeedKMH(vehicleid)
{
	new Float:vx, Float:vy, Float:vz, Float:vel;
	vel = GetVehicleVelocity(vehicleid, vx, vy, vz);
	vel = (floatsqroot(((vx*vx)+(vy*vy))+(vz*vz))* 181.5);
	return vel;
}


forward UpdateHUD(playerid);
public UpdateHUD(playerid)
{
	new vehicleid = GetPlayerVehicleID(playerid);

    // VEHICLE ID
   	new vehid[5];
	valstr(vehid, vehicleid, true);

    // Vehicle Speed
   	new vehspd[5], KMH = GetVehicleSpeed(vehicleid);
	valstr(vehspd, KMH, true);

    // Vehicle Health
   	new vehhp[10], Float:vhp;
   	GetVehicleHealth(vehicleid, vhp);
	new hp = floatround(vhp);
	valstr(vehhp, hp, true);
    // HUD 1_= VEHICLEID 0 VEHICLE SPEED 3 VEHICLE HEALTH 5
   	if(PlayerInfo[playerid][HudStyle] == 0)
	{
        PlayerTextDrawSetString(playerid, TDEditor_PTD[playerid][4], vehhp);
        PlayerTextDrawSetString(playerid, TDEditor_PTD[playerid][2], vehspd);
        PlayerTextDrawSetString(playerid, TDEditor_PTD[playerid][7], vehid);
    }
    if(PlayerInfo[playerid][HudStyle] == 1)
	{
	    // NAME 0 HP 1 ID 2 SPEED 3
 		PlayerTextDrawSetString(playerid, TDEditor_TWO[playerid][1], vehhp);
        PlayerTextDrawSetString(playerid, TDEditor_TWO[playerid][3], vehspd);
        PlayerTextDrawSetString(playerid, TDEditor_TWO[playerid][2], vehid);
    	PlayerTextDrawSetString(playerid, TDEditor_TWO[playerid][0], VehicleNamesHud[GetVehicleModel(vehicleid)-400]);
    }

    return 1;
}

forward UpdatePlayerHud(playerid);
public UpdatePlayerHud(playerid)
{
    // HUD ID = 1 HUD_SPEED 2 HUD_HEALTH 3 HUD_KMH 4 HUD_VEHICLEINFO 5 HUD_txtHEALTH 6 HUD_txtID 7 HUD_CHAN 8 HUD_RADIOINFO 9 HUD_txtSLOT 10 HUD_RADIOSLOT 11
	if(toghud[playerid] == true)
	{
		for(new i = 0; i < MAX_HUDS; i++)
	    {
	        PlayerTextDrawHide(playerid, TDEditor_PTD[playerid][i]);
	        PlayerTextDrawHide(playerid, TDEditor_TWO[playerid][i]);
		}
		return 1;
	}

	if(PlayerInfo[playerid][HudStyle] == 0)
	{
		for(new i = 0; i < MAX_HUDS; i++)
	    {
	        if(!IsPlayerInAnyVehicle(playerid))
			{
	        	if(i > 7)
	        	{
					PlayerTextDrawShow(playerid, TDEditor_PTD[playerid][i]);
				}
				if(i < 8)
				{
					PlayerTextDrawHide(playerid, TDEditor_PTD[playerid][i]);
				}
			}
			else
			{
			    PlayerTextDrawShow(playerid, TDEditor_PTD[playerid][i]);
			}
		}
		return 1;
	}
	if(PlayerInfo[playerid][HudStyle] == 1)
	{
		for(new i = 0; i < 4; i++)
	    {

	        if(!IsPlayerInAnyVehicle(playerid))
			{
				PlayerTextDrawHide(playerid, TDEditor_TWO[playerid][i]);
			}
			else
			{
			    PlayerTextDrawShow(playerid, TDEditor_TWO[playerid][i]);
			}
		}
	}
	return 1;
}


forward LoadHud(playerid);
public LoadHud(playerid)
{
	new radio[5];
	valstr(radio, PlayerInfo[playerid][Freq], true);

	/* HUD STYLE 1 */


	TDEditor_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 544.000122, 135.659225, "KM/H:");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][1], 0.243661, 0.716444);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][1], 0);
	// KM/H
	TDEditor_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 570.666015, 134.829620, "--");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][2], 0.234329, 1.006814);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][2], -1760030721);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][2], 0);

	TDEditor_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 537.000366, 153.496246, "HEALTH:");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][3], 0.243661, 0.716444);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][3], 0);
	// HEALTH
	TDEditor_PTD[playerid][4] = CreatePlayerTextDraw(playerid, 571.332641, 151.837020, "--");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][4], 0.234329, 1.006814);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][4], -1760030721);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][4], 0);

	TDEditor_PTD[playerid][5] = CreatePlayerTextDraw(playerid, 557.999816, 144.370346, "ID:");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][5], 0.243661, 0.716444);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][5], 0);

	TDEditor_PTD[playerid][6] = CreatePlayerTextDraw(playerid, 536.999145, 126.118515, "VEHICLE_INFO");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][6], 0.234329, 1.006814);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][6], -602926081);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][6], 0);
	// VEHICLE ID
	TDEditor_PTD[playerid][7] = CreatePlayerTextDraw(playerid, 571.332702, 143.540740, "--");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][7], 0.234329, 1.006814);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][7], -1760030721);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][7], 0);


	// RADIO INFO

	TDEditor_PTD[playerid][12] = CreatePlayerTextDraw(playerid, 544.000183, 174.651824, "CHAN:");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][12], 0.243661, 0.716444);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][12], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][12], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][12], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][12], 0);


	TDEditor_PTD[playerid][8] = CreatePlayerTextDraw(playerid, 546.333374, 182.948104, "SLOT:");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][8], 0.243661, 0.716444);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][8], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][8], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][8], 0);

	new radios[5];
	valstr(radios, PlayerInfo[playerid][Freq], true);
	TDEditor_PTD[playerid][9] = CreatePlayerTextDraw(playerid, 570.999267, 173.407424, radios);
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][9], 0.234329, 1.006814);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][9], -1760030721);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][9], 0);

	TDEditor_PTD[playerid][10] = CreatePlayerTextDraw(playerid, 540.666015, 165.111083, "RADIO_INFO");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][10], 0.234329, 1.006814);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][10], -602926081);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][10], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][10], 0);

	TDEditor_PTD[playerid][11] = CreatePlayerTextDraw(playerid, 571.999328, 181.703735, "1");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][11], 0.234329, 1.006814);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][11], -1760030721);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][11], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][11], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][11], 0);








	/* HUD STYLE 2 */

	TDEditor_TWO[playerid][0] = CreatePlayerTextDraw(playerid, 566.666442, 420.222900, "VEHICLE_NAME");
	PlayerTextDrawLetterSize(playerid, TDEditor_TWO[playerid][0], 0.354333, 1.346963);
	PlayerTextDrawAlignment(playerid, TDEditor_TWO[playerid][0], 2);
	PlayerTextDrawColor(playerid, TDEditor_TWO[playerid][0], 1043136511);
	PlayerTextDrawSetShadow(playerid, TDEditor_TWO[playerid][0], -23);
	PlayerTextDrawSetOutline(playerid, TDEditor_TWO[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_TWO[playerid][0], 255);
	PlayerTextDrawFont(playerid, TDEditor_TWO[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_TWO[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_TWO[playerid][0], -23);
	// HEALTH
	TDEditor_TWO[playerid][1] = CreatePlayerTextDraw(playerid, 576.999084, 432.252044, "--");
	PlayerTextDrawLetterSize(playerid, TDEditor_TWO[playerid][1], 0.354333, 1.346963);
	PlayerTextDrawAlignment(playerid, TDEditor_TWO[playerid][1], 1);
	PlayerTextDrawColor(playerid, TDEditor_TWO[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_TWO[playerid][1], -30);
	PlayerTextDrawSetOutline(playerid, TDEditor_TWO[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_TWO[playerid][1], 255);
	PlayerTextDrawFont(playerid, TDEditor_TWO[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_TWO[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_TWO[playerid][1], -30);
	// ID
	TDEditor_TWO[playerid][2] = CreatePlayerTextDraw(playerid, 557.665954, 432.252166, "--");
	PlayerTextDrawLetterSize(playerid, TDEditor_TWO[playerid][2], 0.354333, 1.346963);
	PlayerTextDrawAlignment(playerid, TDEditor_TWO[playerid][2], 2);
	PlayerTextDrawColor(playerid, TDEditor_TWO[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_TWO[playerid][2], -30);
	PlayerTextDrawSetOutline(playerid, TDEditor_TWO[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_TWO[playerid][2], 255);
	PlayerTextDrawFont(playerid, TDEditor_TWO[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_TWO[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_TWO[playerid][2], -30);
	// SPEED
	TDEditor_TWO[playerid][3] = CreatePlayerTextDraw(playerid, 530.999938, 432.252349, "--");
	PlayerTextDrawLetterSize(playerid, TDEditor_TWO[playerid][3], 0.354333, 1.346963);
	PlayerTextDrawAlignment(playerid, TDEditor_TWO[playerid][3], 1);
	PlayerTextDrawColor(playerid, TDEditor_TWO[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_TWO[playerid][3], -30);
	PlayerTextDrawSetOutline(playerid, TDEditor_TWO[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_TWO[playerid][3], 255);
	PlayerTextDrawFont(playerid, TDEditor_TWO[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_TWO[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_TWO[playerid][3], -30);



    //UpdatePlayerHud(playerid);

	return 1;
}

new TPMeters[MAX_PLAYERS];


forward PlayerUpdate(playerid);
public PlayerUpdate(playerid)
{

	if(Paused[playerid] == false)
 	{
 		new CurrentTime, PlayerState;
		CurrentTime = GetTickCount();
 		if( (CurrentTime - TimeOfLastUpdate[playerid]) >= MinTimeWithoutUpdates2 )
   		{
    		PlayerState = GetPlayerState(playerid);
     		if( (PlayerState == PLAYER_STATE_ONFOOT) || (PlayerState == PLAYER_STATE_DRIVER) || (PlayerState == PLAYER_STATE_PASSENGER) )
      		{
        		Paused[playerid] = true;
          		OnPlayerPause(playerid);
       		}
        }
 	}




	ExDoor_OnPlayerUpdate(playerid);


	// Getting the animation
    new animation = GetPlayerAnimationIndex( playerid );

    // Checking if current animation dosent match with the last animation
    if( animation != anim[playerid] )
    {
        // Calling the anim change.
        Lean_OnPlayerChangeAnim( playerid, animation, anim[playerid] );
        // Storing the new animation
        anim[playerid] = animation;
		return 1;
	}


 	if( watchingb[playerid] == true)
 	{
		checkforbreachnostream( playerid );
	}
	if( watchingb[playerid] == false && ended[playerid] == true)
	{
	    ended[playerid] = false;
	    EachPlayer(i)
	    {
			DeletePlayer3DTextLabel( playerid, breachname[i][playerid] );
			created[i][playerid] = false;
		}
	}

	
	
	
	
	
	if(IsPlayerInAnyVehicle(playerid))
	{
	    UpdateHUD(playerid);
	}



	/* Anti Weapon Hacking  */
	#if defined Lean_AntiCheat
 	/* ANTI HACK SYS */


	/* Anti Money Hack */
	new CurrMoney = GetPlayerMoney(playerid);
	if(CurrMoney > PlayerInfo[playerid][pCash])
	{
	    new string[128];
	    format(string, sizeof(string),"WARNING: Player %s [%d] has %s should have %s.",GetName(playerid),playerid,currency_format(CurrMoney),currency_format(PlayerInfo[playerid][pCash]));
	    SendHackMessage(COLOR_LIGHTRED, string);
	    ResetPlayerMoney(playerid);
	    GivePlayerMoney(playerid, PlayerInfo[playerid][pCash]);
	    PlayerInfo[playerid][CheatWarnings] ++;
	    if(PlayerInfo[playerid][pCash] < 0)
	    {
	        GiveMoney(playerid, 10000);
	    }
	}
	/* End Anti Money Hack */

/*
	new
	weaponid,
	ammo;
 	for (new c = 0; c < 12; c++)
  	{
   		GetPlayerWeaponData(playerid, c, weaponid, ammo);
     	if (weaponid != 0 && ammo != 0)
      	{
		    new string[128];
		    if(weaponid != 46)
		    {
			    if(weaponid != Weapons[playerid][c])
			    {
			        format(string, sizeof(string), "[WARNING] Player %s [%d] has a %s (%d)",GetName(playerid),playerid, GetWName(weaponid), weaponid);
			        SendHackMessage(COLOR_LIGHTRED, string);
			        RemovePlayerWeapon(playerid, weaponid);
			        PlayerInfo[playerid][CheatWarnings] ++;
				}
			}
		}
	}
*/

	new weaponid = GetPlayerWeapon(playerid);
	new c = GetWSlotID(weaponid);
 	if(weaponid != Weapons[playerid][c] && weaponid != 0)
  	{
  	    new ammo = GetPlayerAmmo(playerid);
  	    if (ammo != 0 && weaponid != WEAPON_PARACHUTE)
  	    {
  	        new string[128];
	   		format(string, sizeof(string), "[WARNING] Player %s [%d] has a %s (%d)",GetName(playerid),playerid, GetWName(weaponid), weaponid);
	     	SendHackMessage(COLOR_LIGHTRED, string);
	      	RemovePlayerWeapon(playerid, weaponid);
	       	PlayerInfo[playerid][CheatWarnings] ++;
		}
	}

    /* Anti Jetpack */
	if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK && PlayerInfo[playerid][pAdmin] < 4)
	{
	    new string[128];
		format(string, sizeof(string),"[WARNING] Player %s (%d) has a jetpack.",GetName(playerid),playerid);
    	SendHackMessage(COLOR_LIGHTRED, string);
    	ClearAnimations(playerid);
    	PlayerInfo[playerid][CheatWarnings] ++;
	}
	/* End of Anti Jetpack */


	/* Anti TP */
	if(disableTP[playerid] == false)
	{
		if(isplayerpaused[playerid] == false || IsSpecing[playerid] == false)
		{
			if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
			{
				if(!IsPlayerInRangeOfPoint(playerid, 200.0, XTP[playerid], YTP[playerid], ZTP[playerid]))
				{
					new Float:Points = GetPlayerDistanceFromPoint(playerid, XTP[playerid], YTP[playerid], ZTP[playerid]);
					new Meters = floatround(Points);
					if(TPMeters[playerid] == Meters) return 1;
					TPMeters[playerid] = Meters;
				    new string[128], interval, Seconds;
					interval = GetTickCount() - lastcheckTP[playerid];
					Seconds = (interval  / 1000);
					if(Seconds > 1000)
					{
			  				lastcheckTP[playerid] = GetTickCount();
			    			GetPlayerPos(playerid, XTP[playerid], YTP[playerid], ZTP[playerid]);
							return 1;
					}
			  		format(string, sizeof(string),"[VEHICLE-TP] Player %s (%d) has moved %d meters with a vehicle in %d seconds.",GetName(playerid),playerid, Meters, Seconds);
			    	SendHackMessage(COLOR_LIGHTRED, string);
			    	GetPlayerPos(playerid, XTP[playerid], YTP[playerid], ZTP[playerid]);
			    	PlayerInfo[playerid][CheatWarnings] ++;
				}
			}
			else
			{
				if(!IsPlayerInRangeOfPoint(playerid, 100.0, XTP[playerid], YTP[playerid], ZTP[playerid]) && GetPlayerSurfingVehicleID(playerid) == INVALID_VEHICLE_ID)
				{
						new Float:Points = GetPlayerDistanceFromPoint(playerid, XTP[playerid], YTP[playerid], ZTP[playerid]);
						new Meters = floatround(Points);
						if(TPMeters[playerid] == Meters) return 1;
						TPMeters[playerid] = Meters;
				        new string[128];
			     		new interval;
						interval = GetTickCount() - lastcheckTP[playerid];
						new Seconds = (interval  / 1000);
						if(Seconds > 1000 || Seconds < 1)
						{
			  				lastcheckTP[playerid] = GetTickCount();
			    			GetPlayerPos(playerid, XTP[playerid], YTP[playerid], ZTP[playerid]);
							return 1;
						}
					    format(string, sizeof(string), "[TP] Player %s (%d) has moved %d meters in %d seconds.",GetName(playerid),playerid, Meters, Seconds);
					    SendHackMessage(COLOR_LIGHTRED, string);
					    GetPlayerPos(playerid, XTP[playerid], YTP[playerid], ZTP[playerid]);
					    PlayerInfo[playerid][CheatWarnings] ++;
				}
			}
			lastcheckTP[playerid] = GetTickCount();
	    	GetPlayerPos(playerid, XTP[playerid], YTP[playerid], ZTP[playerid]);
		}
	}
 	/* End of Anti TP */
    #endif
    return 1;
}


public OnPlayerUpdate(playerid)
{
    if(Paused[playerid] == true)
    {
        Paused[playerid] = false;
        OnPlayerUnpause(playerid);
    }
	if(Paused[playerid] == false)
	{
	    TimeOfLastUpdate[playerid] = GetTickCount();
	}


	if(GetPlayerDrunkLevel(playerid) == 0)
	{
		if(loggedin[playerid] == true && isstarted[playerid] == true)
		{
			GameTextForPlayer(playerid, "you are desynced. please avoid moving around and reconnect asap.", 2000, 6);
			desyncsts[playerid] ++;
			if(desyncsts[playerid] > 150)
			{
				new string[94];
				format(string, sizeof(string), "WARNING: %s (%d) is desynced! /desynced %d for more info.",GetName(playerid), playerid, playerid);
				SendAdminMessage(COLOR_LIGHTRED, string);
				desyncsts[playerid] = 0;
			}
		}
	}
	return 1;
}







encode_tires(tires1, tires2, tires3, tires4)
{

	return tires1 | (tires2 << 1) | (tires3 << 2) | (tires4 << 3);

}



LEANCMD:(admins)
{
	        SendClientMessage(playerid, COLOR_GREY, "Online Admins:");
	        new
         		string[96];
			EachPlayer(i)
			{
				    if(PlayerInfo[i][pAdmin] >= 1)
				    {

						if(AdminDuty[i] == false)
						{
							format(string, sizeof(string), "(Level: %d) %s (ID: %i) AdminDuty: No",PlayerInfo[i][pAdmin], GetName(i), i);
							SendClientMessage(playerid, COLOR_GRAD1, string);
						}
						else
						{
						    format(string, sizeof(string), "(Level: %d) %s (ID: %i) AdminDuty: Yes", PlayerInfo[i][pAdmin], GetName(i), i);
							SendClientMessage(playerid, COLOR_GREEN, string);
						}
					}
			}
			return 1;
}



LEANCMD:(onduty)
{
			SCM(playerid,COLOR_GREY,"|___________________["COL_FACTION"Listing On Duty users"COL_GREY"]___________________|");
			EachPlayer(i)
			{
     					new rname;
	        			rname = PlayerInfo[i][Rank];
				        new
                            string[96];

						if( AdminDuty[i] == true )
						{
							format(string, sizeof(string), "%s (ID: %d) | %s", GetName(i),i, RANKINFO[rname][RankName]);
							SendClientMessage(playerid, COLOR_ORANGE, string);
						}

						if( Civilian[i] == true && AdminDuty[i] == true)
						{
							format(string, sizeof(string), "%s (ID: %d) | %s", GetName(i),i, RANKINFO[rname][RankName]);
							SendClientMessage(playerid, COLOR_GREY, string);
						}
						if ( Swat[i] == true || Duty[i] == true)
						{
						    format(string, 128, "%s (ID: %d) | %s", GetName(i),i, RANKINFO[rname][RankName]);
							SendClientMessage(playerid, COLOR_DUTY, string);
						}
						if( Criminal[i] == true && AdminDuty[i] == false)
						{
						    format(string, 128, "%s (ID: %d) | %s", GetName(i),i, RANKINFO[rname][RankName]);
							SendClientMessage(playerid, COLOR_RED, string);
						}
			}
			SendClientMessage(playerid, COLOR_LIGHTRED, ""COL_ORANGE"Orange = AdminDuty | "COL_FACTION"Blue = Cops | "COL_RED"Red = Criminals | "COL_GREY"Grey = Off Duty.");
			return 1;
}




LEANCMD:(respawncar)
{



   	if(PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
   	new
       vehicleid;
   	if(sscanf(params, "i", vehicleid)) return SCM(playerid, COLOR_GREY, "/respawncar [VehID]");
	if(!IsValidVehicle(vehicleid)) return SCM(playerid, COLOR_GREY, "VehicleID is not valid.");
   	SetVehicleToRespawn(vehicleid);
   	DestroyObject(SirenObject[vehicleid]);
   	Siren[vehicleid] = false;
   	DestroyObject(SirenObject2[vehicleid]);
   	Siren2[vehicleid] = false;
   	new string[60];
   	format( string, sizeof( string ),"AdmWarn(%d): %s has respawned vehicle(%d).",ALEVEL,GetName( playerid ), vehicleid );
	SendAdminMessage( COLOR_YELLOW, string );
   	return 1;
}



LEANCMD:(setpassword)
{
	if(ALEVEL < 5) return ADMIN_UNAUTHORIZED
	if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_GREY,"USAGE: /setpassword [input] (write 0 to remove the password.");
	new string[91];
	format(string,sizeof(string), "password %s", params);
	SendRconCommand(string);
	format(string,sizeof(string),"AdmWarn(%d): %s has set the password of the server to %s.",PlayerInfo[playerid][pAdmin], GetName(playerid), params);
	SendLeadMessage(COLOR_YELLOW, string);
	return 1;
}



LEANCMD:(loadfs)
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	new string[91];
	format(string,sizeof(string),"loadfs %s",params);
	SendRconCommand(string);
	format(string,sizeof(string),"AdmWarn(%d): %s loaded filterscript %s.",PlayerInfo[playerid][pAdmin], GetName(playerid), params);
	SendAdminMessage(COLOR_YELLOW, string);
	return 1;
}

LEANCMD:(unloadfs)
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	new string[96];
	format(string,sizeof(string),"unloadfs %s",params);
	SendRconCommand(string);
	format(string,sizeof(string),"AdmWarn(%d): %s unloaded filterscript %s.",PlayerInfo[playerid][pAdmin], GetName(playerid), params);
	SendAdminMessage(COLOR_YELLOW, string);
	return 1;
}

LEANCMD:(reloadfs)
{
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	new string[98];
	format(string,sizeof(string),"reloadfs %s", params);
	SendRconCommand(string);
	format(string,sizeof(string),"AdmWarn(%d): %s reloaded filterscript %s.",PlayerInfo[playerid][pAdmin], GetName(playerid), params);
	SendAdminMessage(COLOR_YELLOW, string);
	return 1;
}


LEANCMD:(apark)
{
          	new
			      vehicleid;
          	if(PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 5 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
          	new
				string[128];
			if(IsPlayerInAnyVehicle(playerid))
		  	{
		  	    new currentveh = GetPlayerVehicleID(playerid);
		  	    new car = VehicleIDX(currentveh);
		  	    if(car != INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED, "This vehicle is a non player vehicle. /respawncar");

				if(!sscanf(params, "d", vehicleid))
				{
			    	if(!IsValidVehicle(vehicleid)) return SCM(playerid, COLOR_GREY, "VehicleID is not valid.");
 					DestroyVehicle(vehicleid);
          			DestroyObject(SirenObject[vehicleid]);
          			Siren[vehicleid] = false;
          			DestroyObject(SirenObject2[vehicleid]);
          			Siren2[vehicleid] = false;
 					format( string, sizeof( string ),"AdmWarn(%d): %s has aparked vehicle %d.",ALEVEL, GetName( playerid ), vehicleid );
					SendAdminMessage( COLOR_YELLOW, string );
					return 1;
				}
  				if(sscanf(params,"d",vehicleid))
		  		{
          			DestroyVehicle(currentveh);
          			new VID = GetPlayerVehicleID(playerid);
          			DestroyObject(SirenObject[VID]);
          			Siren[VID] = false;
          			DestroyObject(SirenObject2[VID]);
          			Siren2[VID] = false;
 					format( string, sizeof( string ),"AdmWarn(%d): %s has aparked vehicle %d.",ALEVEL, GetName( playerid ), VID );
					SendAdminMessage( COLOR_YELLOW, string );
					return 1;
		  		}
		  		return 1;
			}
			if(sscanf(params,"d",vehicleid)) return SCM(playerid,COLOR_GREY,"USAGE: /apark [Vehicleid]");
			new car = VehicleIDX(vehicleid);
			if(car != INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED," This vehicle is a non player vehicle. /respawncar");
			DestroyVehicle(vehicleid);
			DestroyObject(SirenObject[vehicleid]);
			Siren[vehicleid] = false;
			DestroyObject(SirenObject2[vehicleid]);
			Siren2[vehicleid] = false;
			format( string, sizeof( string ), "AdmWarn(%d): %s has aparked vehicle %d.",ALEVEL, GetName( playerid ), vehicleid );
			SendAdminMessage( COLOR_YELLOW, string );
          	return 1;
}






LEANCMD:(eject)
{
          new
		      currentveh,
		      id,
			  string[106],
			  playerState = GetPlayerState(playerid);

          if(sscanf(params, "u",id)) return SCM(playerid, COLOR_GREY, "/eject [PartOfName/playerid]");
          if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
          if(!IsPlayerInAnyVehicle(id)) return 1;
          if(id == playerid) return SendClientMessage(playerid,COLOR_LIGHTRED,"Eject yourself?");// Just making sure.
          if(AdminDuty[playerid] == true)
		  {
		  		RemovePlayerFromVehicle(id);
          		format(string, sizeof(string), "AdmCmd: %s was ejected from his vehicle by admin %s.",GetICName(id), GetICName(playerid));
	      		SendClientMessageToAll(COLOR_LIGHTRED,string);
	      		return 1;
	      }
          if (playerState == PLAYER_STATE_PASSENGER) return SCM(playerid, COLOR_LIGHTRED, "Only drivers can use this!");
		  currentveh = GetPlayerVehicleID(id);
		  if(!IsPlayerInVehicle(playerid, currentveh)) return SCM(playerid, COLOR_GREY, "You are not in the same vehicle as this player.");
		  if(!IsPlayerInVehicle(id, currentveh)) return SCM(playerid, COLOR_GREY, "This player is not in your car!");
          else
          {
          		RemovePlayerFromVehicle(id);
          		format(string, sizeof(string), "* %s has ejected %s out of his vehicle.",GetICName(playerid), GetICName(id));
	      		ProxDetector(20.0, playerid, string,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
          }
          return 1;
}


LEANCMD:(cw)
{
          new
                currentveh,
				string[MAX_PLAYER_NAME + 138];


          if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY, "USAGE: /cw(carwhisper) [text]");
          if(muted[playerid] == true) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You are currently muted and cannot speak.");
          if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You are not in a vehicle");
          currentveh = GetPlayerVehicleID(playerid);
          EachPlayer(i)
          {
          		if(IsPlayerInVehicle(i, currentveh) || specveh[i] == currentveh && IsSpecing[i] == true && PlayerInfo[playerid][pAdmin] > 0)
          		{
 	        		format(string,sizeof(string), "%s whispers %s", GetICMame(playerid), params);
	        		SendPlayerMessage(i, COLOR_YELLOW, string);
          		}
		  }
          return 1;
}


LEANCMD:(cb)
{
          new
                currentveh,
				string[MAX_PLAYER_NAME + 138];


          if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY, "USAGE: /cb(carb) [text]");
          if(muted[playerid] == true) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You are currently muted and cannot speak.");
          if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You are not in a vehicle");
          currentveh = GetPlayerVehicleID(playerid);
          EachPlayer(i)
          {
          		if(IsPlayerInVehicle(i, currentveh) || specveh[i] == currentveh && IsSpecing[i] == true && PlayerInfo[playerid][pAdmin] > 0)
          		{
 	        		format(string,sizeof(string), "(( [%d] %s: %s ))",playerid, GetName(playerid), params);
	        		SendPlayerMessage(i, COLOR_YELLOW, string);
          		}
		  }
          return 1;
}


LEANCMD:(despawnall)
{
	new
	string[77];
	if(!(PlayerInfo[playerid][pAdmin] >= 2)) return ADMIN_UNAUTHORIZED
	format(string, sizeof(string), "AdmCmd: %s has despawned all non static cars.", GetName(playerid));
	SendClientMessageToAll(COLOR_LIGHTRED, string);

	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has despawned all non static cars.", GetName(playerid));
 	IRC_GroupSayEx(string);

	for(new i=0; i <= GetVehiclePoolSize(); i++)
	{
		new car = VehicleIDX(i);
		if(car == INVALID_VEHICLE_ID && !IsVehicleOccupied(i))
		{
			DestroyVehicle(i);
			Siren[i] = false;
		}
	}
	return 1;
}







LEANCMD:(nos)
{
  	if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_GREY, "You are not in a vehicle.");
  	new vehicleid = GetPlayerVehicleID(playerid);

  	AddVehicleComponent(vehicleid, 1010); // x10 nitro
  	SCM(playerid, COLOR_YELLOW, "SERVER: 10x nos added to your vehicle!");
  	PlayerPlaySound(playerid, 1133, 0.0,0.0,0.0);
  	return 1;
}


LEANCMD:(trunk)
{
            if(IsPlayerInAnyVehicle(playerid))
            {
                if (GetPlayerState(playerid) == PLAYER_STATE_PASSENGER) return SCM(playerid, COLOR_LIGHTRED, "Only drivers can use this!");
                ToggleBoot(playerid, GetPlayerVehicleID(playerid));
                
	        }
	        return 1;
}


ToggleBoot(playerid, vehicleid)
{
			new
			    engine,
				lights,
				alarm,
				doors,
				bonnet,
				boot,
				objective,
				string[80];

            GetVehicleParamsEx(vehicleid,engine,lights,alarm,doors,bonnet,boot,objective);

            if(boot == 1)
            {
            	SetVehicleParamsEx(vehicleid,engine,lights,alarm,doors,bonnet,false,objective);
				format(string,sizeof(string), "* %s closed the trunk of %s", GetICName(playerid), GetVehicleFriendlyName(vehicleid));
   				ProxDetector(20.0, playerid, string,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
            }
            else
            {
            	SetVehicleParamsEx(vehicleid,engine,lights,alarm,doors,bonnet,true,objective);
				format(string,sizeof(string), "* %s opened the trunk of %s",GetICName(playerid), GetVehicleFriendlyName(vehicleid));
   				ProxDetector(20.0, playerid, string,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
	        }

}



LEANCMD:(engine)
{

            if (GetPlayerState(playerid) == PLAYER_STATE_PASSENGER) return SCM(playerid, COLOR_LIGHTRED, "Only drivers can use this!");
            if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_GREY, "You are not in a vehicle.");

            new
			    engine,
				lights,
				alarm,
				doors,
				bonnet,
				boot,
				objective,
				vehicleid = GetPlayerVehicleID(playerid),
				string[80];

            GetVehicleParamsEx(vehicleid,engine,lights,alarm,doors,bonnet,boot,objective);

            new Float:health;
			GetVehicleHealth(vehicleid, health);

            if(health < 300) return SCM(playerid, COLOR_LIGHTRED,"NOTICE: "COL_WHITE"Engine has taken too much damage, it has broken down.");

            if(engine == 1)
            {
            	SetVehicleParamsEx(vehicleid,false,false,alarm,doors,bonnet,boot,objective);
	        	format(string,sizeof(string), "* %s turns off the engine of %s", GetICName(playerid), GetVehicleFriendlyName(vehicleid));
	        	ProxDetector(20.0, playerid, string,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
            }
            else
            {
            	SetVehicleParamsEx(vehicleid,true,true,alarm,doors,bonnet,boot,objective);
	        	format(string,sizeof(string), "* %s turns on the engine of %s",GetICName(playerid), GetVehicleFriendlyName(vehicleid));
	        	ProxDetector(20.0, playerid, string,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
	        }
	        return 1;
}

LEANCMD:(aengine)
{
            new
			    engine,
				lights,
				alarm,
				doors,
				bonnet,
				boot,
				objective,
				string[ 107 ],
				vehicle;

            if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
            if(sscanf(params, "i", vehicle)) return SCM(playerid, COLOR_GREY, "/aengine [VehicleID]");
            GetVehicleParamsEx(vehicle,engine,lights,alarm,doors,bonnet,boot,objective);
            if(engine == 1)
            {
            	SetVehicleParamsEx(vehicle,false,false,alarm,doors,bonnet,boot,objective);
	        	format(string,sizeof(string), "AdmWarn(%d): %s has turned off the engine of vehicle %s(%i).",PlayerInfo[playerid][pAdmin], GetName(playerid), GetVehicleFriendlyName(vehicle), vehicle);
	        	SendAdminMessage(COLOR_YELLOW, string);
            }
            else
            {
            	SetVehicleParamsEx(vehicle,true,true,alarm,doors,bonnet,boot,objective);
	        	format(string,sizeof(string), "AdmWarn(%d): %s has turned on the engine of vehicle %s(%i).",PlayerInfo[playerid][pAdmin], GetName(playerid), GetVehicleFriendlyName(vehicle), vehicle);
	        	SendAdminMessage(COLOR_YELLOW, string);
	        }
	        return 1;
}





LEANCMD:(takegun)
{
	new count2 = 0;
    for(new vid=1; vid <= GetVehiclePoolSize(); vid++)
    {
        new Float:ppx, Float:ppy, Float:ppz;
        GetVehiclePos(vid, ppx, ppy, ppz);
        if(IsPlayerInRangeOfPoint(playerid, 3.5, ppx, ppy, ppz))
        {
            count2++;
        }
    }
    if(count2 > 0)
    {
	    for(new vid=1; vid <= GetVehiclePoolSize(); vid++)
	    {
	        new Float:ppx, Float:ppy, Float:ppz;
	        new input;
	        GetVehiclePos(vid, ppx, ppy, ppz);
	        if(sscanf(params,"d",input)) return SendClientMessage(playerid, -1, "/takegun id [use /check near a car!]");
			if(IsPlayerInRangeOfPoint(playerid, 3.5, ppx, ppy, ppz))
	        {
	        	new vehicle,engine,lights,alarm,doors,bonnet,boot,objective;
	            GetVehicleParamsEx(vehicle,engine,lights,alarm,doors,bonnet,boot,objective);
	        	if(!boot && !IsPlayerInAnyVehicle(playerid)) return SCM(playerid,COLOR_LIGHTRED,"Trunk needs to be open in order to use this.");
	        	switch (input)
	        	{
	        		case 1:
	        		{
	        		    new weaptype,weapammo;
	        		    GetPlayerWeaponData(playerid, GetWSlotID(25), weaptype, weapammo);
	        		    if(weaptype == 25 && weapammo > 1)
	        		    {
	        		        new string[64];
	        		        format(string,sizeof(string),"You already have a %s with ammo, get rid of that first..",GetWName(weaptype));
	        		        SCM(playerid,COLOR_LIGHTRED,string);
	        		        return 1;
						}
						GiveWeapon(playerid, 25, 100);//shotgun
						new string[128];
						format(string,sizeof(string), " %s grabs a Shotgun from the the %s's trunk.",GetICName(playerid), GetVehicleFriendlyName(vid));
	 					SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 5000);
	 					SCM(playerid,COLOR_PURPLE,string);
	        		}
	        		case 2:
	       			{
	    		    	new weaptype,weapammo;
	        		    GetPlayerWeaponData(playerid, GetWSlotID(29), weaptype, weapammo);
	        		    if(weaptype == 29 && weapammo > 1)
	        		    {
	        		        new string[64];
	        		        format(string,sizeof(string),"You already have a %s with ammo, get rid of that first..",GetWName(weaptype));
	        		        SCM(playerid,COLOR_LIGHTRED,string);
	        		        return 1;
						}
						GiveWeapon(playerid, 29, 500);//MP5
	       				new string[128];
	        			format(string,sizeof(string), "* %s grabs a MP5 from the the %s's trunk.",GetICName(playerid), GetVehicleFriendlyName(vid));
	        			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 5000);
	        			SCM(playerid,COLOR_PURPLE,string);
	        		}
	        		case 3:
	        		{
	    		    	new weaptype,weapammo;
	        		    GetPlayerWeaponData(playerid, GetWSlotID(31), weaptype, weapammo);
	        		    if(weaptype == 31 && weapammo > 1)
	        		    {
	        		        new string[64];
	        		        format(string,sizeof(string),"You already have a %s with ammo, get rid of that first..",GetWName(weaptype));
	        		        SCM(playerid,COLOR_LIGHTRED,string);
	        		        return 1;
						}
						GiveWeapon(playerid, 31, 500);//M4
	       				new string[128];
	        			format(string,sizeof(string), "* %s grabs a M4 from the the %s's trunk.",GetICName(playerid), GetVehicleFriendlyName(vid));
	        			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 5000);
	        			SCM(playerid,COLOR_PURPLE,string);
	        		}
	        		case 4:
	        		{
	    		    	new weaptype,weapammo;
	        		    GetPlayerWeaponData(playerid, GetWSlotID(27), weaptype, weapammo);
	        		    if(weaptype == 27 && weapammo > 1)
	        		    {
	        		        new string[64];
	        		        format(string,sizeof(string),"You already have a %s with ammo, get rid of that first..",GetWName(weaptype));
	        		        SCM(playerid,COLOR_LIGHTRED,string);
	        		        return 1;
						}
						GiveWeapon(playerid, 27, 100); //combat shotgun
	       				new string[128];
	        			format(string,sizeof(string), "* %s grabs a Combat Shotgun from the the %s's trunk.",GetICName(playerid), GetVehicleFriendlyName(vid));
	        			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 5000);
	        			SCM(playerid,COLOR_PURPLE,string);
	        		}
	        		case 5:
	        		{
	    		    	new weaptype,weapammo;
	        		    GetPlayerWeaponData(playerid, GetWSlotID(34), weaptype, weapammo);
	        		    if(weaptype == 34 && weapammo > 1)
	        		    {
	        		        new string[64];
	        		        format(string,sizeof(string),"You already have a %s with ammo, get rid of that first..",GetWName(weaptype));
	        		        SCM(playerid,COLOR_LIGHTRED,string);
	        		        return 1;
						}
						GiveWeapon(playerid, 34, 50);//sniper
	       				new string[128];
	        			format(string,sizeof(string), "* %s grabs a Sniper from the the %s's trunk.",GetICName(playerid), GetVehicleFriendlyName(vid));
	        			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 5000);
	        			SCM(playerid,COLOR_PURPLE,string);
	        		}
				}
	        }
	    }
	    return 1;
    }
    else return SCM(playerid, COLOR_GREY, "You are not near a vehicle.");
}








LEANCMD:(hydraulics)
{
	if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_GREY, "You are not in a vehicle.");

	new vehicleid = GetPlayerVehicleID(playerid);
	AddVehicleComponent(vehicleid, 1087); // Hydralics
	SCM(playerid, COLOR_RADIO, "SERVER: Hydraulics added to your vehicle!");
	return 1;
}



LEANCMD:(awc)
{
	new
		 vehicleid;

	if(sscanf(params, "i", vehicleid)) return SCM(playerid, COLOR_GREY, "USAGE: /awc [VehicleID]");
	if(!IsValidVehicle(vehicleid)) return SCM(playerid, COLOR_GREY, "Invalid vehicleid!");
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
	    disableTP[playerid] = true;
		GetPlayerPos(playerid,SpecX[playerid],SpecY[playerid],SpecZ[playerid]);// This is getting and saving the player's position in a variable so they'll respawn at the same place they typed '/awp'
    	Inter[playerid] = GetPlayerInterior(playerid);// Getting and saving the interior.
    	vWorld[playerid] = GetPlayerVirtualWorld(playerid);
       	TogglePlayerSpectating(playerid, 1);
       	PlayerSpectateVehicle(playerid, vehicleid);
	   	SCM(playerid, COLOR_LIGHTRED, "You are now spectating the vehicle - "COL_WHITE" /spec(awp) off when you are done spectating!");
	   	IsSpecing[playerid] = true;
	   	specveh[playerid] = GetPlayerVehicleID(vehicleid);
	}
	else return ADMIN_UNAUTHORIZED
	return 1;
}






LEANCMD:(towcars)
{
		if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
	    new string[128];
	    format(string, sizeof(string),"AdmCmd: %s has returned all empty vehicles to their spawn location.", GetName(playerid));
	    SendClientMessageToAll(COLOR_LIGHTRED,string);

    	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has returned all empty vehicles to their spawn location.", GetName(playerid));
  		IRC_GroupSayEx(string);

  	  	for(new i=0; i <= GetVehiclePoolSize(); i++)
      	{
  	  		if(!IsVehicleOccupied(i))
        	{
				SetVehicleToRespawn(i);
  			}
   	 	}
		return 1;
}







stock SendLAMessage(colr, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s", _Line );
            }
        }
        #endif
        SendLeadMessage(colr, _Line);
        _i@Index++;
    }
}



stock SendAMessage(colr, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s", _Line );
            }
        }
        #endif
        SendAdminMessage(colr, _Line);
        _i@Index++;
    }
}


stock SendGroupessage(i,colr, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "{33CCFF}... %s", _Line );
            }
        }
        #endif
        SCM(i,colr,_Line);
        _i@Index++;
    }
}

stock SendOOCMessage(colr, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s", _Line );
            }
        }
        #endif
        SendClientMessageToAll(colr, _Line);
        _i@Index++;
    }
}


stock SendPlayerMessage(i, colr, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s", _Line );
            }
        }
        #endif
        SCM(i,colr,_Line);
        _i@Index++;
    }
}

stock SendGMessage(i, colr, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "{33CCFF}%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "{33CCFF}... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "{33CCFF}... %s", _Line );
            }
        }
        #endif
        SCM(i,colr,_Line);
        _i@Index++;
    }
}



LEANCMD:(dropguns)
{
	ResetWeapons(playerid);
	new
     	string[62];
	format(string, sizeof(string), "* %s drops all his guns on the ground.",GetICName(playerid));
	ProxDetector(20.0, playerid, string,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
	return 1;
}




stock SendPMMessage(playerid, colr, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s", _Line );
            }
        }
        #endif
        ////////////
        SendClientMessage(playerid, colr, _Line );
        ///////////
        _i@Index++;
    }
}

LEANCMD:(readpms)
{

	if(PlayerInfo[playerid][pAdmin] < 4) return 0;

	if(readPMs[playerid] == false)
	{
        readPMs[playerid] = true;
        new string[128];
        format(string, sizeof(string), "AdmWarn(%d): %s is now reading PM's.",ALEVEL, GetName(playerid));
        SendLAMessage(COLOR_YELLOW, string);
		WriteLog("PMReading", string);
		return 1;
	}
	if(readPMs[playerid] == true)
	{
        readPMs[playerid] = false;
        new string[128];
        format(string, sizeof(string), "AdmWarn(%d): %s is no longer reading PM's.",ALEVEL, GetName(playerid));
        SendLAMessage(COLOR_YELLOW, string);
		WriteLog("PMReading", string);
		return 1;
	}
	return 1;
}

public OnPlayerRequestClass(playerid,classid)
{
	if(loggedin[playerid])
	{
    	SpawnPlayer(playerid);
	}
	return 1;
}


LEANCMD:(pm)
{
    new
	    PID,
		reason[128],
		Str[ MAX_PLAYER_NAME + MAX_PLAYER_NAME +  140];

    if(sscanf(params, "us[128]", PID, reason)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /pm [ID/PartOfName] [Message]");
    if(PID == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
    if(playerid == PID)return SendClientMessage(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You can't PM yourself.");
	if(AdminDuty[playerid] == true && AdminDuty[PID] == true)
	{
    		format(Str, sizeof(Str), "(( PM From: {FF9900}%s {FFDC18}(%d): %s ))", GetName(playerid), playerid, reason);
    		SendPMMessage(PID, COLOR_YEPM, Str);
    		format(Str, sizeof(Str), "(( PM Sent To: {FF9900}%s {FCF545}(%d): %s ))", GetName(PID), PID, reason);
    		SendPMMessage(playerid, COLOR_YELLOW, Str);
   			format(Str, sizeof(Str), "PM From %s(%d) to %s(%d) : %s", GetName(playerid), playerid,GetName(PID),PID, reason);
   			WriteLog("PMs", Str);
   			if(PlayerInfo[playerid][pAdmin] < 5)
 			{
				format(Str, sizeof(Str), "11[PM]08PM From %s(%d) to %s(%d): %s ",GetName(playerid), playerid, GetName(PID), PID, reason);
 				IRC_GroupSayEx(Str);
			}
   			EachPlayer(i)
   			{
   			    if(readPMs[i] == true)
   			    {
   			        if(PlayerInfo[i][pAdmin] >= PlayerInfo[playerid][pAdmin] && PlayerInfo[i][pAdmin] >= PlayerInfo[PID][pAdmin])
   			        {
   			            if(i == playerid || i == PID) return 1;
						SCM(i, COLOR_YELLOW, Str);
					}
				}
			}
    		return 1;
  	}
  	if(AdminDuty[playerid] == true)
  	{
    		format(Str, sizeof(Str), "(( PM From: {FF9900}%s {FFDC18}(%d): %s ))", GetName(playerid), playerid, reason);
    		SendPMMessage(PID, COLOR_YEPM, Str);
    		format(Str, sizeof(Str), "(( PM Sent To: %s (%d): %s ))", GetName(PID), PID, reason);
    		SendPMMessage(playerid, COLOR_YELLOW, Str);
   			format(Str, sizeof(Str), "PM From %s(%d) to %s(%d) : %s", GetName(playerid), playerid,GetName(PID),PID, reason);
			WriteLog("PMs", Str);
			if(PlayerInfo[playerid][pAdmin] < 5)
 			{
				format(Str, sizeof(Str), "11[PM]08PM From %s(%d) to %s(%d): %s ",GetName(playerid), playerid, GetName(PID), PID, reason);
 				IRC_GroupSayEx(Str);
			}
			EachPlayer(i)
   			{
   			    if(readPMs[i] == true)
   			    {
   			        if(PlayerInfo[i][pAdmin] >= PlayerInfo[playerid][pAdmin] && PlayerInfo[i][pAdmin] >= PlayerInfo[PID][pAdmin])
   			        {
   			            if(i == playerid || i == PID) return 1;
						SCM(i, COLOR_YELLOW, Str);
					}
				}
			}
    		return 1;
  	}
  	if(AdminDuty[PID] == true)
  	{
    		format(Str, sizeof(Str), "(( PM From: %s (%d): %s ))", GetName(playerid), playerid, reason);
    		SendPMMessage(PID, COLOR_YEPM, Str);
    		format(Str, sizeof(Str), "(( PM Sent To: {FF9900}%s {FFDC18}(%d): %s ))", GetName(PID), PID, reason);
    		SendPMMessage(playerid, COLOR_YELLOW, Str);
   			format(Str, sizeof(Str), "PM From %s(%d) to %s(%d) : %s", GetName(playerid), playerid,GetName(PID),PID, reason);
			WriteLog("PMs", Str);
			if(PlayerInfo[playerid][pAdmin] < 5)
 			{
				format(Str, sizeof(Str), "11[PM]08PM From %s(%d) to %s(%d): %s ",GetName(playerid), playerid, GetName(PID), PID, reason);
 				IRC_GroupSayEx(Str);
			}
			EachPlayer(i)
   			{
   			    if(readPMs[i] == true)
   			    {
   			        if(PlayerInfo[i][pAdmin] >= PlayerInfo[PID][pAdmin])
   			        {
   			            	if(i == playerid || i == PID) return 1;
							SCM(i, COLOR_YELLOW, Str);
					}
				}
			}
			return 1;
  	}
  	else
  	{
    		format(Str, sizeof(Str), "(( PM From: %s (%d): %s ))", GetName(playerid), playerid, reason);
    		SendPMMessage(PID, COLOR_YEPM, Str);
    		format(Str, sizeof(Str), "(( PM Sent To: %s (%d): %s ))", GetName(PID), PID, reason);
    		SendPMMessage(playerid, COLOR_YELLOW, Str);
  	}
	format(Str, sizeof(Str), "PM From %s(%d) to %s(%d): %s", GetName(playerid), playerid, GetName(PID), PID, reason);
	WriteLog("PMs", Str);
	if(PlayerInfo[playerid][pAdmin] < 5)
	{
		format(Str, sizeof(Str), "11[PM]08PM From %s(%d) to %s(%d): %s ",GetName(playerid), playerid, GetName(PID), PID, reason);
		IRC_GroupSayEx(Str);
	}
	EachPlayer(i)
	{
 		if(readPMs[i] == true)
 		{
 		    if(PlayerInfo[i][pAdmin] >= PlayerInfo[playerid][pAdmin] && PlayerInfo[i][pAdmin] >= PlayerInfo[PID][pAdmin])
 		    {
 		       	if(i == playerid || i == PID) return 1;
				SCM(i, COLOR_YELLOW, Str);
			}
		}
	}
    return 1;
}



#if defined TRAINING_SASD
LEANCMD:(ruhelp)
{
	if(PlayerInfo[playerid][GroupID] != 5 && PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 4) return ADMIN_UNAUTHORIZED

	SCM(playerid, COLOR_LIGHTRED, "RU Commands");
	SCM(playerid, COLOR_WHITE, "USAGE: /g [text] INFO: Group chat, will only be seen by RU group members.");
	SCM(playerid, COLOR_WHITE, "/getrecruits | Info: Teleport all the recruits to your 20'.");
	SCM(playerid, COLOR_WHITE, "/freeze | Info: Freeze an missbehaving recruit.");
	SCM(playerid, COLOR_WHITE, "/thaw | Info: thaw an recruit.");
	SCM(playerid, COLOR_WHITE, "/kick | Info: Kick a missbehaving recruit.");
	SCM(playerid, COLOR_WHITE, "/v [vehicle name] | Info: Spawn a vehicle by its name without being teleported into it.");
	SCM(playerid, COLOR_WHITE, "/createacc [name_surname] | Info: Create an account for a recruit, default password will be changeit.");
	SCM(playerid, COLOR_WHITE, "/resetpw [name_surname] | Info: Reset a password of an account.");
	SCM(playerid, COLOR_WHITE, "/nofam | Info: Tog fam.");
	SCM(playerid, COLOR_WHITE, "/o | Info: Speak in OOC chat.");
	if(PlayerInfo[playerid][GroupID] == 4)
	{
		SCM(playerid, COLOR_LIGHTRED, "/invitetoru | Info: Invite a user to the RU group.");
	}
	return 1;
}


LEANCMD:(getrecruits)
{
    if(PlayerInfo[playerid][GroupID] != 5 && PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 4) return ADMIN_UNAUTHORIZED
	new
		 string[80],
		 Interior = GetPlayerInterior(playerid);

 	format(string, sizeof(string), "AdmCmd: %s has teleported all recruits himself.",GetName(playerid));
 	SendClientMessageToAll(COLOR_LIGHTRED, string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has teleported all recruits to himself.",GetName(playerid));
	IRC_GroupSayEx(string);
    format(string,sizeof(string),"AdmCmd: %s has teleported all recruits himself.",GetName(playerid));
    WriteLog("TPALL", string);
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
 	EachPlayer(i)
 	{
       if(PlayerInfo[i][Rank] == 1)
       {
 	      	SetPlayerInterior(i, Interior);
        	new rand;rand=random(3);
     		SetPlayerPosEx(i, x+rand, y+rand, z+1);
	      	SetPlayerVirtualWorld(i, GetPlayerVirtualWorld(playerid));
	      	WORLD[i] = WORLD[playerid];
	   }
	}
	return 1;
}





LEANCMD:(hsiuhelp)
{
	if(PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED

	SCM(playerid, COLOR_LIGHTRED, "HSIU Commands:");
	SCM(playerid, COLOR_WHITE, "USAGE: /g [text] INFO: Group chat, will only be seen by HSIU group members.");
	SCM(playerid, COLOR_WHITE, "USAGE: /gethere [playerid] INFO: Teleport a player to your position.");
    SCM(playerid, COLOR_WHITE, "USAGE: /fixcar [playerid] INFO: Fix your car or a players by typing in their playerid.");
    SCM(playerid, COLOR_WHITE, "USAGE: /goin [playerid] INFO: Teleport yourself into a playerid's vehicle.");
    SCM(playerid, COLOR_WHITE, "USAGE: /apark [vehicleid] INFO: Despawn a vehicle.");
    SCM(playerid, COLOR_WHITE, "USAGE: /slapcar [vehicleid] INFO: Slap a vehicle.");
    SCM(playerid, COLOR_WHITE, "USAGE: /gotocar [vehicleid] INFO: Teleport to a vehicle.");
    SCM(playerid, COLOR_WHITE, "USAGE: /towcars INFO: Tow all the server vehicles to their spawn point.");
    SCM(playerid, COLOR_WHITE, "USAGE: /respawncar [vehicleid] INFO: Respawn a vehicle.");
    SCM(playerid, COLOR_WHITE, "USAGE: /getcar [vehicleid] INFO: Teleport a vehicle to your location.");
    SCM(playerid, COLOR_WHITE, "USAGE: /aengine [vehicleid] INFO: Turn on/off a vehicle's engine.");
    SCM(playerid, COLOR_WHITE, "USAGE: /togfixcar INFO: Disables /fixcar for non admins and non HSIU command.");
    SCM(playerid, COLOR_LIGHTRED, "USAGE: /checkfix "COL_WHITE"INFO: Check when a player last used /fixcar");
    return 1;
}




LEANCMD:(getsed)
{
    #if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	#endif
	#if defined TRAINING_METRO
 	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	#endif
	new
		 string[80],
		 Interior = GetPlayerInterior(playerid);

 	format(string, sizeof(string), "AdmCmd: %s has teleported all tactical personel to himself.",GetName(playerid));
 	SendClientMessageToAll(COLOR_LIGHTRED, string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has teleported all tactical personel to himself.",GetName(playerid));
	IRC_GroupSayEx(string);
    format(string,sizeof(string),"AdmCmd: %s has teleported all tactical personel to himself.",GetName(playerid));
    WriteLog("TPALL", string);
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
 	EachPlayer(i)
 	{
       if(Swat[i] == true)
       {
 	      	SetPlayerInterior(i, Interior);
        	new rand;rand=random(3);
     		SetPlayerPosEx(i, x+rand, y+rand, z+1);
	      	SetPlayerVirtualWorld(i, GetPlayerVirtualWorld(playerid));
	      	WORLD[i] = WORLD[playerid];
	   }
	}
	return 1;
}
#endif





#if defined TRAINING_METRO
LEANCMD:(getswat)
{
	#if defined TRAINING_METRO
 	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	#endif
	new
		 string[80],
		 Interior = GetPlayerInterior(playerid);

 	format(string, sizeof(string), "AdmCmd: %s has teleported all tactical personel to himself.",GetName(playerid));
 	SendClientMessageToAll(COLOR_LIGHTRED, string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has teleported all tactical personel to himself.",GetName(playerid));
	IRC_GroupSayEx(string);
    format(string,sizeof(string),"AdmCmd: %s has teleported all tactical personel to himself.",GetName(playerid));
    WriteLog("TPALL", string);
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
 	EachPlayer(i)
 	{
       if(Swat[i] == true)
       {
 	      	SetPlayerInterior(i, Interior);
        	new rand;rand=random(3);
     		SetPlayerPosEx(i, x+rand, y+rand, z+1);
	      	SetPlayerVirtualWorld(i, GetPlayerVirtualWorld(playerid));
	      	WORLD[i] = WORLD[playerid];
	   }
	}
	return 1;
}
#endif



LEANCMD:(getduty)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
	#endif
	#if defined TRAINING_METRO
 	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	#endif
	new
		 string[80],
		 Interior = GetPlayerInterior(playerid);

 	format(string, sizeof(string), "AdmCmd: %s has teleported all on duty personel to himself.",GetName(playerid));
 	SendClientMessageToAll(COLOR_LIGHTRED, string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has teleported all on duty personel to himself.",GetName(playerid));
	IRC_GroupSayEx(string);
    format(string,sizeof(string),"AdmCmd: %s has teleported all on duty personel to himself.",GetName(playerid));
    WriteLog("TPALL", string);
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
 	EachPlayer(i)
 	{
       if(Duty[i] == true)
       {
 	      	SetPlayerInterior(i, Interior);
        	new rand;rand=random(3);
     		SetPlayerPosEx(i, x+rand, y+rand, z+1);
	      	SetPlayerVirtualWorld(i, GetPlayerVirtualWorld(playerid));
	      	WORLD[i] = WORLD[playerid];
	   }
	}
	return 1;
}


LEANCMD:(getcrims)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
	#endif
	#if defined TRAINING_METRO
 	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	#endif
	new
		 string[80],
		 Interior = GetPlayerInterior(playerid);

 	format(string, sizeof(string), "AdmCmd: %s has teleported all criminals to himself.",GetName(playerid));
 	SendClientMessageToAll(COLOR_LIGHTRED, string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has teleported all criminals personel to himself.",GetName(playerid));
	IRC_GroupSayEx(string);
    format(string,sizeof(string),"AdmCmd: %s has teleported all criminals to himself.",GetName(playerid));
    WriteLog("TPALL", string);
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
 	EachPlayer(i)
 	{
       if(Criminal[i] == true)
       {
 	      	SetPlayerInterior(i, Interior);
        	new rand;rand=random(3);
     		SetPlayerPosEx(i, x+rand, y+rand, z+1);
	      	SetPlayerVirtualWorld(i, GetPlayerVirtualWorld(playerid));
	      	WORLD[i] = WORLD[playerid];
	   }
	}
	return 1;
}


LEANCMD:(togfixcar)
{
    if(PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
    nofix = !nofix;
    SendClientMessageToAll(COLOR_LIGHTRED, nofix ?  (" /fixcar has been disabled for non admins & non HSIU cmd.  ") : "  /fixcar has been enabled for everyone. ");
	return 1;
}


new gFixCar[MAX_PLAYERS];
LEANCMD:(checkfix)
{
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	new id;
	if(sscanf(params, "u", id)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /checkfix [playerid/PartOfName]");
	
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	
	new
	    interval = GetTickCount() - gFixCar[id],
		Seconds = (interval  / 1000),
	 	string[64];
	format(string, sizeof(string), "%s used /fixcar %d seconds ago.",GetName(id), Seconds);
	SCM(playerid, COLOR_WHITE, string);
	return 1;
}


LEANCMD:(fixcar)
{
		if(nofix && PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 6) return SCM(playerid, COLOR_LIGHTRED, "This has been disabled.");
        new
		    targetid;
        if(sscanf(params,"s",params) && IsPlayerInAnyVehicle(playerid))
        {
            gFixCar[playerid] = GetTickCount();
            SetVehicleHealth(GetPlayerVehicleID(playerid), 1000);
	        RepairVehicle(GetPlayerVehicleID(playerid));
	        PlayerPlaySound(playerid, 1133, 0.0, 0.0, 0.0);
	        return 1;
        }
        if(sscanf(params, "u", targetid)) return SCM(playerid, COLOR_GREY, "USAGE: /fixcar [PartOfNme/PlayerID]");
        if(PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
        if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
        if(!IsPlayerInAnyVehicle(targetid)) return SCM(playerid, COLOR_GREY, "  This player is not in any vehicle");
        SetVehicleHealth(GetPlayerVehicleID(playerid), 1000);
       	RepairVehicle(GetPlayerVehicleID(targetid));
		return 1;
}




LEANCMD:(m)
{
    if (muted[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
		return 1;
	}


	new
		 string[128];

	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY,"USAGE: /m [text]");
	format(string, sizeof(string), "[ %s:o< %s ]", GetICName(playerid), params);
	ProxDetector(60.0, playerid, string, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW);
    format(string,sizeof(string), "[ %s:o< %s ]", GetName(playerid), params);
    WriteLog("Chat", string);
	return 1;
}

LEANCMD:(megaphone)
{
	return cmd_m(playerid, params);
}


stock SendShoutMessage(playerid, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s", _Line );
            }
        }
        #endif
        ProxDetector(30.0, playerid, _Line, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE3, COLOR_FADE3);
        _i@Index++;
    }
}



LEANCMD:(shout)
{
	if ((noic) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, IC_DISABLED_ATTEMPT_MESSAGE);
		return 1;
	}



    if (muted[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
		return 1;
	}
   	if(IsSpecing[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You can not talk while spectating");
		return 1;
	}

	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY, "USAGE: /s [text]");
	new string[MAX_PLAYER_NAME + 9 + 128];
	format(string, sizeof(string), "%s shouts: %s", GetICMame(playerid), params);
	SendShoutMessage(playerid, string);
	format(string, sizeof(string), "11[CHAT] 01%s shouts: %s",GetICName(playerid), params);
 	IRC_GroupSayEx(string);
    format(string,sizeof(string),"%s shouts: %s",GetICName(playerid), params);
    WriteLog("Chat", string);
	return 1;
}

LEANCMD:(s)
{
	return cmd_shout(playerid, params);
}

LEANCMD:(changename)
{
	return cmd_renameacc(playerid, params);
}



LEANCMD:(adminduty)
{
	return cmd_aduty(playerid, params);
}

LEANCMD:(dsm)
{
	return cmd_despawnmycar(playerid, params);
}


LEANCMD:(cd)
{
	return cmd_countdown(playerid, params);
}


LEANCMD:(tp)
{
	return cmd_teleport(playerid, params);
}


LEANCMD:(announcment)
{
	return cmd_ann(playerid, params);
}


LEANCMD:(admin)
{
	return cmd_a(playerid, params);
}

LEANCMD:(offduty)
{
	return cmd_civilian(playerid, params);
}

LEANCMD:(w)
{
	return cmd_whisper(playerid, params);
}

LEANCMD:(spec)
{
	return cmd_awp(playerid, params);
}

LEANCMD:(criminalskin)
{
	return cmd_crimskin(playerid, params);
}

stock SendLowMessage(playerid, message[])
{
    new len = strlen(message),
        _iL = len / MAX_CHARS_PER_LINE;

    if( ( len % MAX_CHARS_PER_LINE ) ) _iL++;
    new _Line[MAX_CHARS_PER_LINE + 5];

    new _:_i@Index;
    while( _i@Index < _iL )
    {
        if( _i@Index == 0 )
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );
        else
            strmid( _Line, message, ( _i@Index * MAX_CHARS_PER_LINE ), ( _i@Index * MAX_CHARS_PER_LINE ) + MAX_CHARS_PER_LINE );

        #if defined FINAL_DOTS
        if( _iL > 1 )
        {
            if( _i@Index == 0 )
            {
                format( _Line, sizeof _Line, "%s ...", _Line );
            }
            else if( _i@Index > 0 && ( _i@Index + 1 ) < _iL )
            {
                format( _Line, sizeof _Line, "... %s ...", _Line );
            }
            else
            {
                format( _Line, sizeof _Line, "... %s", _Line );
            }
        }
        #endif
        ////////////
        ProxDetector(5.0, playerid, _Line, COLOR_FADE1, COLOR_FADE2, COLOR_FADE3, COLOR_FADE3, COLOR_FADE3);
        ///////////
        _i@Index++;
    }
}


LEANCMD:(low)
{
	if ((noic) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, IC_DISABLED_ATTEMPT_MESSAGE);
		return 1;
	}

    if (muted[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
		return 1;
	}
    if(IsSpecing[playerid] == true)
	{
		SendClientMessage(playerid, COLOR_GREY, "You can not talk while spectating");
		return 1;
	}

	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY,"USAGE: /low [low chat]");
	new string[MAX_PLAYER_NAME + 146];
	format(string,sizeof(string), "%s says [low]: %s", GetICMame(playerid), params);
	SendLowMessage(playerid, string);
	format(string, sizeof(string), "11[CHAT] 01%s says [low]: %s",GetICName(playerid), params);
 	IRC_GroupSayEx(string);
	ApplyChatAnim(playerid, params);
    format(string,sizeof(string),"%s says [low]: %s",GetICName(playerid), params);
    WriteLog("Chat", string);
	return 1;
}


LEANCMD:(help)
{
	new string[128];
	SCM(playerid, COLOR_GREEN, "_________________________________________");
    format(string, sizeof(string),"[GENERAL] /dropguns /nos /hydraulics /barrier /eject /helithermal /vlights /togspec /reportbug");
    SendClientMessage(playerid, COLOR_OOC, string);
   	format(string, sizeof(string),"[GENERAL] /admins /goto /taser /rubberbullets /crimskin /isafk /roadblock /setplate /sebtp");
    SendClientMessage(playerid, COLOR_OOC, string);
    format(string, sizeof(string),"[GENERAL] /weapons /siren /spec /specoff /devcom /leavegun /coin /dice /lastincar /mdc /dmstatus");
    SendClientMessage(playerid, COLOR_OOC, string);
    format(string, sizeof(string),"[GENERAL] /tp /skin /handcuff /uncuff /frisk /carcolor /removecp /stats /time /connecttime");
    SendClientMessage(playerid, COLOR_OOC, string);
   	format(string, sizeof(string),"[GENERAL] /spike /disband /setfreq /setstation /teleport /despawnmycar /uptime /turn /toghud");
    SendClientMessage(playerid, COLOR_OOC, string);
    format(string, sizeof(string),"[GENERAL] /engine /trunk /check /takegun /offduty /fightingstyle /fixskill /deathlist /buy /clothing");
    SendClientMessage(playerid, COLOR_OOC, string);
    format(string, sizeof(string),"[GENERAL] /up /down /fixcar /gotols /gotolv /gotosf /skinmenu /onduty /leavegroup /shotgun");
    SendClientMessage(playerid, COLOR_OOC, string);
    format(string, sizeof(string),"[CHAT] /b /s /low /d(s)oorshout /cw /t /melow /me /do");
    SendClientMessage(playerid, COLOR_OOC, string);
    format(string, sizeof(string),"[CHAT] /w /pm /me /do /ds /g /hq /ddo");
    SendClientMessage(playerid, COLOR_OOC, string);
    SCM(playerid, COLOR_GREEN, "_________________________________________");
    return 1;

}




LEANCMD:(slap)
{
	new id, string[98];
	new Float:x, Float:y, Float:z;
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"u", id)) return SCM(playerid, COLOR_GREY, "USAGE: /slap [playerid/partofname]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

 	GetPlayerPos(id, x, y, z);
  	SetPlayerPosEx(id, x, y, z+3);

   	format(string, sizeof(string), "AdmWarn: You have been slapped by admin %s", GetName(playerid));
    SendClientMessage(id, COLOR_GRAD2, string);

    PlayerPlaySound(id, 1130, 0.0, 0.0, 0.0);

	return 1;
}


LEANCMD:(megaslap)
{
	new id, string[98];
	new Float:x, Float:y, Float:z;
	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"u", id)) return SCM(playerid, COLOR_GREY,"USAGE: /slap [playerid/partofname]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

 	GetPlayerPos(id, x, y, z);
  	SetPlayerPosEx(id, x, y, z+20);

   	format(string, sizeof(string),"AdmWarn: You have been slapped by admin %s", GetName(playerid));
    SendClientMessage(id, COLOR_GRAD2, string);

	return 1;
}





LEANCMD:(o)
{
	new string[MAX_PLAYER_NAME + 146];
	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY,"USAGE: /o [chat]");
	if ((noooc) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, "   The OOC channel has been disabled by an Admin!");
		return 1;
	}
	format(string,sizeof(string),"[OOC] %s: %s", GetName(playerid), params);
	SendOOCMessage(COLOR_OOC, string);
    WriteLog("OOC", string);
	format(string, sizeof(string), "11[OOC]01 [OOC] %s: 01%s",GetName(playerid), params);
 	IRC_GroupSayEx(string);
	return 1;
}




LEANCMD:(togduty)
{
	if(ALEVEL < 4) return ADMIN_UNAUTHORIZED

	new string[75];
    if (!noduty)
	{
		noduty = true;
		SendClientMessageToAll(COLOR_GRAD2, "Duty system has been disabled by an Admin!");
        format(string, sizeof(string), "AdmWarn(%d): %s has disabled the Duty System.",PlayerInfo[playerid][pAdmin], GetName(playerid));
        SendAdminMessage(COLOR_YELLOW, string);


	}
	else if (noduty)
	{
		noduty = false;
		SendClientMessageToAll(COLOR_GRAD2, "Duty system has been enabled by an Admin!");
        format(string, sizeof(string), "AdmWarn[%d]: %s has enabled the Duty System.",PlayerInfo[playerid][pAdmin], GetName(playerid));
        SendAdminMessage(COLOR_YELLOW, string);
	}
	return 1;
}


LEANCMD:(togdm)
{
    if (PlayerInfo[playerid][pAdmin] >= 4 && (!nodm))
	{
		nodm = true;
		SendClientMessageToAll(COLOR_GRAD2, "Deathmatch system has been disabled by an Admin!");
	}
	else if (PlayerInfo[playerid][pAdmin] >= 4 && (nodm))
	{
		nodm = false;
		SendClientMessageToAll(COLOR_GRAD2, "Deathmatch system has been enabled by an Admin!");
	}

	else
	{
		ADMIN_UNAUTHORIZED
	}
	return 1;
}


LEANCMD:(dmstatus)
{
	if(nodm == false)
	{
		SCM(playerid, COLOR_GREEN, " Damage system is currently enabled!");
		return 1;
	}
	
	else
	{
		SCM(playerid, COLOR_RED,"DAMAGE SYSTEM DISABLED!!!");
		return 1;
	}

}


LEANCMD:(togtp)
{
	new string[77];
    if (PlayerInfo[playerid][pAdmin] >= 4 && (!notp))
	{
		notp = true;
		SendClientMessageToAll(COLOR_GRAD2, "Teleport system has been disabled by an Admin!");
        format(string, sizeof(string), "AdmWarn(%d): %s has disabled the Teleport System.",PlayerInfo[playerid][pAdmin], GetName(playerid));
        SendAdminMessage(COLOR_YELLOW, string);

	}
	else if (PlayerInfo[playerid][pAdmin] >= 4 && (notp))
	{
		notp = false;
		SendClientMessageToAll(COLOR_GRAD2, "Teleport system has been enabled by an Admin!");
		format(string, sizeof(string), "AdmWarn(%d): %s has enabled the Teleport System.",PlayerInfo[playerid][pAdmin], GetName(playerid));
        SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
		ADMIN_UNAUTHORIZED
	}
	return 1;
}



LEANCMD:(togmask)
{
    if (PlayerInfo[playerid][pAdmin] >= 4 && (!nomask))
	{
		nomask = true;
		SendClientMessageToAll(COLOR_GRAD2, "Mask system has been disabled by an Admin!");
        EachPlayer(i)
        {
          	if (PlayerInfo[i][pAdmin] <= 1 && GetPVarInt(i, "Masked") == 1)
          	{
          		SetPVarInt(i, "Masked", false);
         		ShowPlayerNameTagForPlayer(i, i, 1);
         		SCM(i, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Your mask has been removed.");
			}
		}

	}
	else if (PlayerInfo[playerid][pAdmin] >= 4 && (nomask))
	{
		nomask = false;
		SendClientMessageToAll(COLOR_GRAD2, "Mask system has been enabled by an Admin!");
	}

	else
	{
		ADMIN_UNAUTHORIZED
	}
	return 1;
}




LEANCMD:(noooc)
{
    if (PlayerInfo[playerid][pAdmin] == 0) return ADMIN_UNAUTHORIZED
    noooc = !noooc;
    SendClientMessageToAll(COLOR_GREY, noooc ?  ("   OOC chat channel disabled by an Admin!") : "   OOC chat channel enabled by an Admin!");
	return 1;
}




LEANCMD:(noic)
{
    if (PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    noic = !noic;
    new string[128];
    format(string, sizeof(string),noic ? ("    %s has disabled the IC chat system.") : "    %s has enabled the IC chat system.",GetName(playerid));
    SendClientMessageToAll(noic ? COLOR_GRAD1 : COLOR_GRAD5, string);
	return 1;
}

#if defined TRAINING_SASD

LEANCMD:(togtru)
{
    if (PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    notru = !notru;
    EachPlayer( i)
    {
        if(PlayerInfo[playerid][pAdmin] > 3)
        {
    		SCM(i, COLOR_GREY, notru ?  ("   /sed has been disabled for non SED members.") : "   /sed has been enabled for every SED member.");
		}
	}
	return 1;
}
#endif


LEANCMD:(gmx)
{

	if(ALEVEL < 5 && !IsPlayerAdmin(playerid)) return ADMIN_UNAUTHORIZED

	new string[72];
	gmx();
	format(string,sizeof(string),"LeadCmd: %s is restarting the server.", GetName(playerid));
	SendClientMessageToAll(COLOR_LIGHTRED, string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s is restarting the server.",GetName(playerid));
	IRC_GroupSayEx(string);
	format(string,sizeof(string),"AdmCmd: %s used /gmx!",GetName(playerid));
	WriteLog("SRVRestart", string);
	GameTextForAll("~r~Server Restart.",5000,1);
  	return 1;
}


#define MAX_SPIKES 100
#define SPIKE_MODEL_NORMAL 2899 
#define SPIKE_MODEL_LARGE 2892

new gSpikeInforMation[MAX_SPIKES];

LEANCMD:(spike)
{
	if(IsPlayerInAnyVehicle(playerid) || GetPlayerState(playerid) == PLAYER_STATE_SPECTATING) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You need to be on foot..");
	if(Civilian[playerid] == true || Criminal[playerid] == true) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You need to be on police duty in order to use this..");

	new
		Float:x,
		Float:y,
		Float:z,
		Float:a,
		string[128],
		zone[30],
		rname = PlayerInfo[playerid][Rank];
		
	GetPlayerFacingAngle(playerid, a);
	GetPlayerPos(playerid, x, y, z);
	GetPlayer2DZone(playerid, zone, 30);
	
	
	if(!strcmp(params, "large", true, 1))
	{
        CreateLargeSpike(x, y, z, a);
       	format(string, sizeof(string), "HQ: %s %s has deployed a large Spikestrip at %s",RANKINFO[rname][RankName], GetICName(playerid), zone);
		SendClientMessageToAll(COLOR_DUTY, string);
		return 1;
	}
	
	CreateSpike(x, y, z, a);
	
	format(string, sizeof(string), "HQ: %s %s has deployed a Spikestrip at %s",RANKINFO[rname][RankName], GetICName(playerid), zone);
	SendClientMessageToAll(COLOR_DUTY, string);
	return 1;
}

stock decode_tires(tires, &tire1, &tire2, &tire3, &tire4)
{
    tire1 = tires & 1;
    tire2 = tires >> 1 & 1;
    tire3 = tires >> 2 & 1;
    tire4 = tires >> 3 & 1;
}

stock OnPlayerDriveOverSpike(playerid)
{
	// This gets called when a player drives over a spike, it already checks if the player is driving a car!!
	new
		a = randomEx(0, 2),
		b = randomEx(0, 2),
		c = randomEx(0, 2),
		d = randomEx(0, 2);
	
	
	if(AdminDuty[playerid] == true) return 1;
	
	new panels, doors, lights, tires;
 	new carid = GetPlayerVehicleID(playerid);
	GetVehicleDamageStatus(carid, panels, doors, lights, tires);
	decode_tires(tires, a, b, c, d);
	if(a == 0)
	{
		a = randomEx(0, 2);
	}
	if(b == 0)
	{
		b = randomEx(0, 2);
	}
	if(c == 0)
	{
		c = randomEx(0, 2);
	}
	if(d == 0)
	{
		d = randomEx(0, 2);
	}
	tires = encode_tires(a, b, c, d);
	UpdateVehicleDamageStatus(carid, panels, doors, lights, tires);
	return 1;
}


stock CreateLargeSpike(Float:x, Float:y, Float:z, Float:Angle)
{
	for( new spike_id; spike_id < MAX_SPIKES; spike_id++ )
	{
		if( !gSpikeInforMation[ spike_id ] )
		{
			gSpikeInforMation[ spike_id ] = CreateDynamicSphere( x, y, z, 6.0 );
			new _objectid = CreateDynamicObject( SPIKE_MODEL_LARGE, x, y, z-0.9, 0.0, 0.0, Angle-180, .streamdistance = 100.0 );
			setupAreaEntity( gSpikeInforMation[ spike_id ], _objectid, g_entity_type_spike );
			return 1;
		}
	}
    return 1;
}


stock CreateSpike(Float:x, Float:y, Float:z, Float:Angle)
{
	for( new spike_id; spike_id < MAX_SPIKES; spike_id++ )
	{
		if( !gSpikeInforMation[ spike_id ] )
		{
			gSpikeInforMation[ spike_id ] = CreateDynamicSphere( x, y, z, 3.0 );
			new _objectid = CreateDynamicObject( SPIKE_MODEL_NORMAL, x, y, z-0.9, 0.0, 0.0, Angle-180, .streamdistance = 100.0 );
			setupAreaEntity( gSpikeInforMation[ spike_id ], _objectid, g_entity_type_spike );
			return 1;
		}
	}
    return 1;
}

stock isNearSpike( playerid, Float:radius=MAX_BOOMBOX_RANGE )
{
	new Float:x, Float:y, Float:z; GetPlayerPos( playerid, x, y, z );
	for( new spike_id, Float:_dist, _entity, _entity_type; spike_id < MAX_SPIKES; spike_id++ )
	{
		if( gSpikeInforMation[ spike_id ] )
		{
			if( radius > 4.0 )
			{
				if( IsPlayerInDynamicArea( playerid, gSpikeInforMation[ spike_id ] ) ) return spike_id;
			}
			GetAreaEntityInfo( gSpikeInforMation[ spike_id ], _entity, _entity_type );
			Streamer_GetDistanceToItem( x, y, z, STREAMER_TYPE_OBJECT, _entity, _dist );
			if( _dist <= radius ) return spike_id;
		}
	}
	return -1;
}



forward DestroySpike( spike_id );
public DestroySpike( spike_id )
{
	if( !gSpikeInforMation[ spike_id ] )
		return 0;
    new _entity, _entity_type; GetAreaEntityInfo( gSpikeInforMation[ spike_id ], _entity, _entity_type );
	DestroyDynamicArea( gSpikeInforMation[ spike_id ] ), DestroyDynamicObject( _entity ), gSpikeInforMation[ spike_id ] = 0;
	return 1;
}


//----------DUTY COMMANDS-----------

LEANCMD:(nofam)
{
    if (PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][Rank] < 8 && PlayerInfo[playerid][GroupID] != 4 && PlayerInfo[playerid][GroupID] != 5) return ADMIN_UNAUTHORIZED
    nofam = !nofam;
	new string[128];
	new string2[128];
	format(string, sizeof(string),">> Faction Chat has been disabled by %s.",GetName(playerid));
	format(string2, sizeof(string2),">> Faction Chat has been enabled by %s.",GetName(playerid));
    SendClientMessageToAll(COLOR_LIGHTRED,nofam ?  (string) : string2);
	return 1;
}


LEANCMD:(f)
{

	if(PlayerInfo[playerid][pAdmin] < 4)
	{
		new interval;
		interval = GetTickCount() - spamming[playerid];
		new Seconds = (interval  / 1000);
		if(Seconds < 3)
		{
		    SCM(playerid,COLOR_WHITE,"(( You can only use this command once every 3 seconds. ))");
		    return 1;
		}
	}


	if(nofam && PlayerInfo[playerid][pAdmin] < 2) return SCM(playerid,COLOR_LIGHTRED," Faction Chat has been disabled.");
	new string[256], rname = PlayerInfo[playerid][Rank];
	if (muted[playerid] == true) return SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
	if(isnull(params)) return SCM(playerid, COLOR_GREY, "USAGE: /f(action) [text]");
	if(PlayerInfo[playerid][pAdmin] < 0)
	{
		spamming[playerid] = GetTickCount();
	}
	
	format(string, sizeof(string), "**(( %s %s: %s ))**",RANKINFO[rname][RankName],GetICName(playerid), params);
	WriteLog("FChat", string);
	#if defined TRAINING_SASD
    SendMessageToAll(COLOR_SASD, string);
    #endif
	#if defined TRAINING_METRO
	SendMessageToAll(COLOR_DUTY, string);
	#endif
	
	format(string, sizeof(string), "11[FACTION CHAT] 03**(( %s %s: %s ))**",RANKINFO[rname][RankName],GetICName(playerid), params);
 	IRC_GroupSayEx(string);
	return 1;
}



LEANCMD:(hq)
{
	new interval;
	interval = GetTickCount() - spamming[playerid];
	new Seconds = (interval  / 1000);
	if(Seconds < 3)
	{
	    SCM(playerid,COLOR_WHITE,"(( You can only use this command once every 3 seconds. ))");
	    return 0;
	}



	if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_GREY,"USAGE: /hq [text]");
	if(nofam && PlayerInfo[playerid][pAdmin] == 0) return SCM(playerid,COLOR_LIGHTRED," Faction Chat has been disabled.");
	if(PlayerInfo[playerid][pAdmin] == 0)
	{
		spamming[playerid] = GetTickCount();
	}
	new string[128], rname = PlayerInfo[playerid][Rank];
	format(string,sizeof(string),"HQ: %s %s: %s",RANKINFO[rname][RankName],GetICName(playerid),params);
	SendClientMessageToAll(COLOR_LIGHTBLUE,string);
	format(string, sizeof(string), "11[CHAT] 01HQ: %s %s: %s",RANKINFO[rname][RankName],GetICName(playerid),params);
 	IRC_GroupSayEx(string);
	EachPlayer(i)
	{
		PlayerPlaySound(i, 5201, 0.0, 0.0, 0.0);
	}
	return 1;
}



LEANCMD:(faction)
{
	return cmd_f(playerid, params);
}


LEANCMD:(department)
{
	new string[128], rname = PlayerInfo[playerid][Rank];
	if (muted[playerid] == true) return SendClientMessage(playerid, COLOR_GREY, "You are currently muted and cannot speak.");
	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY, "USAGE: /dep(artment) (Text)");
    spamming[playerid] = GetTickCount();
	format(string, sizeof(string), "** [LAW] %s %s: %s **",RANKINFO[rname][RankName],GetICName(playerid), params);
	SendClientMessageToAll(COLOR_DEPARTMENT, string);
	format(string, sizeof(string), "11[CHAT] 01** [LAW] %s %s: %s **",RANKINFO[rname][RankName],GetICName(playerid), params);
 	IRC_GroupSayEx(string);
	format(string,sizeof(string),"** [LAW] %s %s: %s **",RANKINFO[rname][RankName],GetICName(playerid), params);
	WriteLog("DepChat", string);
	return 1;
}

LEANCMD:(dep)
{
	return cmd_department(playerid, params);
}

#define DUTY_CIVILIAN 1
#define DUTY_COP 2
#define DUTY_TACTICAL 3
#define DUTY_CRIMINAL 4
#define DUTY_CRIMINAL2 5


stock SetPlayerDuty(playerid, type=0)
{
	switch(type)
	{
	    // CIVILIAN
	    case DUTY_CIVILIAN:
	    {
 	  		new
			   string[53];


		  	format(string, sizeof(string), "** HQ: %s is now off Duty! **",GetICName(playerid));
		  	LEGRESET(playerid);
		  	SendClientMessageToAll(COLOR_DUTY, string);
		  	ResetWeapons(playerid);
		  	Taser[playerid] = false;
		  	Rubber[playerid] = false;
		  	Criminal[playerid] = false;
	 	 	Swat[playerid] = false;
		  	Duty[playerid] = false;
		  	SetPlayerArmour(playerid, 0.0);
		  	Civilian[playerid] = true;
		  	SetPlayerSkin(playerid, PlayerInfo[playerid][pSkin]);
            SetPlayerColor(playerid, COLOR_WHITE);
            Law_Duty[playerid] = false;

		}
		// COP_DUTY
		case DUTY_COP:
		{
			if ((noduty) && PlayerInfo[playerid][pAdmin] < 1) return SendClientMessage(playerid, COLOR_GRAD2, "The Duty System has been disabled by an admin.");
			for(new i = 0; i < MAX_MODELS; i++)
			{
				if(ClothesInfo[playerid][i][enabled] == 1)
				{
					ReplaceClothing(playerid, i);
				}
				else
				{
					RemoveClothing(playerid, i);
				}
			}
			LEGRESET(playerid);
			ResetWeapons(playerid);
			SetPlayerColor(playerid, COLOR_DUTY);
			SetPlayerHealthEx(playerid, COP_DUTYHEALTH);
			SetPlayerArmour(playerid, 100);
			GiveWeapon(playerid, 24, 150);//Desert Eagle
			GiveWeapon(playerid, 3, 1);//nightstick
			GiveWeapon(playerid, 41, 99999);//spraycan
			GiveWeapon(playerid, 25, 100);//shotgun
			GiveWeapon(playerid, 29, 500);//mp5
			GiveWeapon(playerid, 31, 500);//M4
			new string[128], rname = PlayerInfo[playerid][Rank];
			format(string,sizeof(string),"** HQ: %s %s is now on Duty! **",RANKINFO[rname][RankName], GetICName(playerid));
			SendClientMessageToAll(COLOR_DUTY, string);
			Criminal[playerid] = false;
			Swat[playerid] = false;
			Duty[playerid] = true;
			Civilian[playerid] = false;
			Law_Duty[playerid] = true;
			WriteLog("Duty", string);


		}
		case DUTY_TACTICAL:
		{
		        Law_Duty[playerid] = true;
				#if defined TRAINING_SASD
				if(PlayerInfo[playerid][Rank] == 1) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE" This command is not available for recruits.");
				if ((noduty) && PlayerInfo[playerid][pAdmin] < 1)
				{
					SendClientMessage(playerid, COLOR_GRAD2, "The Duty System has been disabled by an admin.");
					return 1;
				}
				if(notru && PlayerInfo[playerid][GroupID] != 2 && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid, COLOR_GREY, "SERVER: /sed has been disabled for non SED members.");
				if(entering[playerid] == true && GetPlayerSkin(playerid) != 287 || IsPlayerInAnyVehicle(playerid) && GetPlayerSkin(playerid) != 287) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"You can only use "COL_LIGHTRED"/tru "COL_WHITE"when you are standing still and on foot.");
				LEGRESET(playerid);
				ResetWeapons(playerid);
				SetPlayerColor(playerid, COLOR_DUTY);
				SetPlayerHealthEx(playerid, SPAWNHEALTH);
				SetPlayerArmour(playerid, 200);
				GiveWeapon(playerid, 3, 1);//nightstick
				GiveWeapon(playerid, 24, 300);//Desert Eagle
				GiveWeapon(playerid, 17, 10); //frag grenade
				GiveWeapon(playerid, 31, 500);//M4
				if(GetPlayerSkin(playerid) != 287)
				{
					SetPlayerSkin(playerid, 287);
				}
				new string[128];
				format(string,sizeof(string),"** HQ: Tactical Deputy %s is now ready for orders! **",GetICName(playerid));
				SendClientMessageToAll(COLOR_DUTY, string);
				Duty[playerid] = false;
				Criminal[playerid] = false;
				Swat[playerid] = true;
				Civilian[playerid] = false;
				format(string,sizeof(string),"** HQ: SED Member %s is now on Swat Duty and ready for orders! **",GetName(playerid));
				WriteLog("TacticalDuty", string);
				#endif

				#if defined TRAINING_METRO
				if ((noduty) && PlayerInfo[playerid][pAdmin] < 1)
				{
					SendClientMessage(playerid, COLOR_GRAD2, "The Duty System has been disabled by an admin.");
					return 1;
				}

				if(entering[playerid] == true && GetPlayerSkin(playerid) != SWAT_SKIN || IsPlayerInAnyVehicle(playerid) && GetPlayerSkin(playerid) != SWAT_SKIN) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"You can only use "COL_LIGHTRED"/swat "COL_WHITE"when you are standing still and on foot.");
				LEGRESET(playerid);
				ResetWeapons(playerid);
				SetPlayerColor(playerid, COLOR_DUTY);
				SetPlayerHealthEx(playerid, COP_DUTYHEALTH);
				SetPlayerArmour(playerid, 200);
				GiveWeapon(playerid, 3, 1);//nightstick
				GiveWeapon(playerid, 24, 300);//Desert Eagle
				GiveWeapon(playerid, 31, 500);//M4
				ApplyAnimation(playerid, "CARRY", "crry_prtial", 1.0, 0, 0, 0, 0, 0);
				SetPlayerSkin(playerid, SWAT_SKIN);
				TogglePlayerControllable(playerid, 1);
				new string[128];
				format(string,sizeof(string),"** HQ: SWAT member %s is now ready for orders! **",GetICName(playerid));
				SendClientMessageToAll(COLOR_DUTY, string);
				Duty[playerid] = false;
				Criminal[playerid] = false;
				Swat[playerid] = true;
				Civilian[playerid] = false;
				format(string,sizeof(string),"[%d-%d-%d] ** HQ: %s is now on Swat Duty and ready for orders! **",GetDay(),GetMonth(),GetYear(),GetName(playerid));
				WriteLog("TacticalDuty", string);
				#endif
		}
		case DUTY_CRIMINAL:
		{
                Law_Duty[playerid] = false;
		        if(PlayerInfo[playerid][Rank] == 1) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE" This command is not available for recruits.");
		        if(PlayerInfo[playerid][pCrim] == 0)
				{
					SCM(playerid,COLOR_LIGHTRED,"[ ! ] Your criminal skin has not been set yet, you have been assigned a default crim skin.");
					PlayerInfo[playerid][pCrim] = 110;
					SetPlayerSkin(playerid, PlayerInfo[playerid][pCrim]);
					SCM(playerid, COLOR_YELLOW, "SERVER: /crimskin to change your criminal skin.");
				}

				if ((noduty) && PlayerInfo[playerid][pAdmin] < 1)
				{
					SendClientMessage(playerid, COLOR_GRAD2, "The Duty System has been disabled by an admin.");
					return 1;
				}

				if(entering[playerid] == true && GetPlayerSkin(playerid) != PlayerInfo[playerid][pCrim] || IsPlayerInAnyVehicle(playerid) && GetPlayerSkin(playerid) != PlayerInfo[playerid][pCrim]) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"You can only use "COL_LIGHTRED"/criminal "COL_WHITE"when you are standing still and on foot.");
				LEGRESET(playerid);
				ResetWeapons(playerid);
				SetPlayerColor(playerid, COLOR_WHITE);
				SetPlayerHealthEx(playerid, SPAWNHEALTH);
				SetPlayerArmour(playerid, 0.0);
				GiveWeapon(playerid, 4, 1); //Knife
				GiveWeapon(playerid, 25, 1000);//shotgun
				GiveWeapon(playerid, 24, 1000);//DEAGLE
				GiveWeapon(playerid, 29, 1000);//MP5
				GiveWeapon(playerid, 30, 1000); //AK
				if(GetPlayerSkin(playerid) != PlayerInfo[playerid][pCrim])
				{
					SetPlayerSkin(playerid, PlayerInfo[playerid][pCrim]);
				}
				new string[128];
				format(string,sizeof(string),"AdmWarn: %s is now on criminal duty.", GetICName(playerid));
				SendAdminMessage(COLOR_YELLOW,string);
				SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"You're now on criminal duty.");
				Swat[playerid] = false;
				Duty[playerid] = false;
				Criminal[playerid] = true;
				Taser[playerid] = false;
				Rubber[playerid] = false;
				Civilian[playerid] = false;
				format(string,sizeof(string),"** HQ: %s is now on criminal duty! **",GetName(playerid));
				WriteLog("CriminalDuty", string);

		}
		case DUTY_CRIMINAL2:
		{
                Law_Duty[playerid] = false;
		        if(PlayerInfo[playerid][Rank] == 1) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE" This command is not available for recruits.");
		        if(PlayerInfo[playerid][pCrim] == 0) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] Your criminal skin has not been set yet, please use "COL_LIGHTRED"/crimskin.");

				if ((noduty) && PlayerInfo[playerid][pAdmin] < 1)
				{
					SendClientMessage(playerid, COLOR_GRAD2, "The Duty System has been disabled by an admin.");
					return 1;
				}

				if(entering[playerid] == true && GetPlayerSkin(playerid) != 287 || IsPlayerInAnyVehicle(playerid) && GetPlayerSkin(playerid) != 287) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"You can only use "COL_LIGHTRED"/criminal2 "COL_WHITE"when you are standing still and on foot.");
				LEGRESET(playerid);
				ResetWeapons(playerid);
				SetPlayerColor(playerid, COLOR_WHITE);
				SetPlayerHealthEx(playerid, SPAWNHEALTH);
				SetPlayerArmour(playerid, 0.0);
				GiveWeapon(playerid, 5, 1); //Bat
				GiveWeapon(playerid, 25, 1000);//shotgun
				GiveWeapon(playerid, 23, 1000);//Silenced Pistol
				GiveWeapon(playerid, 32, 1000);//TEC 9
				GiveWeapon(playerid, 33, 1000); //rifle
				GiveWeapon(playerid, 31, 1000); //M4
				if(GetPlayerSkin(playerid) != PlayerInfo[playerid][pCrim])
				{
					SetPlayerSkin(playerid, PlayerInfo[playerid][pCrim]);
				}
				new string[128];
				format(string,sizeof(string),"AdmWarn: %s is now on criminal(2) duty.", GetICName(playerid));
				SendAdminMessage(COLOR_YELLOW,string);
				SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"You're now on criminal(2) duty.");
				Swat[playerid] = false;
				Duty[playerid] = false;
				Criminal[playerid] = true;
				Taser[playerid] = false;
				Rubber[playerid] = false;
				Civilian[playerid] = false;
				format(string,sizeof(string),"** HQ: %s is now on criminal(2) duty! **",GetName(playerid));
				WriteLog("CriminalDuty", string);

		}
	}
	if(AdminDuty[playerid] == true)
	{
		GetPlayerHealth(playerid, AHEALTH[playerid]);
		GetPlayerArmour(playerid, AARMOR[playerid]);
		SetPlayerColor(playerid,  COLOR_ADMINDUTY);
	}
	return 1;


}



LEANCMD:(duty)
{
    SetPlayerDuty(playerid, DUTY_COP);
	return 1;
}

public OnPlayerFinishedDownloading(playerid, virtualworld)
{
    return 1;
}

LEANCMD:(sed)
{
	Law_Duty[playerid] = true;
	if(PlayerInfo[playerid][Rank] == 1) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE" This command is not available for recruits.");
	if ((noduty) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, "The Duty System has been disabled by an admin.");
		return 1;
	}
	
	if(entering[playerid] == true && GetPlayerSkin(playerid) != 287 || IsPlayerInAnyVehicle(playerid) && GetPlayerSkin(playerid) != 287) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"You can only use "COL_LIGHTRED"/tru "COL_WHITE"when you are standing still and on foot.");
	
	LEGRESET(playerid);
	ResetWeapons(playerid);
	SetPlayerColor(playerid, COLOR_DUTY);
	SetPlayerHealthEx(playerid, SPAWNHEALTH);
	SetPlayerArmour(playerid, 200);
	GiveWeapon(playerid, 3, 1);//nightstick
	GiveWeapon(playerid, 24, 300);//Desert Eagle
	GiveWeapon(playerid, 17, 10); //frag grenade
	GiveWeapon(playerid, 31, 500);//M4
	
	if(GetPlayerSkin(playerid) != 287)
	{
		SetPlayerSkin(playerid, 287);
	}
	new string[128];
	format(string,sizeof(string),"** HQ: Tactical Deputy %s is now ready for orders! **",GetICName(playerid));
	SendClientMessageToAll(COLOR_DUTY, string);
	Duty[playerid] = false;
	Criminal[playerid] = false;
	Swat[playerid] = true;
	Civilian[playerid] = false;
	format(string,sizeof(string),"** HQ: SED Member %s is now on Swat Duty and ready for orders! **",GetName(playerid));
	WriteLog("TacticalDuty", string);
	return 1;
}



#if defined TRAINING_METRO
LEANCMD:(swat)
{
    SetPlayerDuty(playerid, DUTY_TACTICAL);
	return 1;
}






LEANCMD:(swat2)
{

      if ((noduty) && PlayerInfo[playerid][pAdmin] < 1)
      {
      		SendClientMessage(playerid, COLOR_GRAD2, "The Duty System has been disabled by an admin.");
      		return 1;
      }



      else
	  {
			if(entering[playerid] == true && GetPlayerSkin(playerid) != 287 || IsPlayerInAnyVehicle(playerid) && GetPlayerSkin(playerid) != 287) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"You can only use "COL_LIGHTRED"/swat2 "COL_WHITE"when you are standing still and on foot.");
            LEGRESET(playerid);
      		ResetWeapons(playerid);
      		SetPlayerColor(playerid, COLOR_DUTY);
      		SetPlayerHealthEx(playerid, COP_DUTYHEALTH);
      		SetPlayerArmour(playerid, 200);
      		GiveWeapon(playerid, 3, 1);//nightstick
      		GiveWeapon(playerid, 41, 1500);//spraycan
      		GiveWeapon(playerid, 24, 300);//Desert Eagle
      		GiveWeapon(playerid, 16, 30); //SMOKE GRENADE
      		GiveWeapon(playerid, 27, 100); //combat shotgun
      		GiveWeapon(playerid, 34, 50);//sniper
      		GiveWeapon(playerid, 29, 500);//mp5
      		GiveWeapon(playerid, 31, 500);//M4
      		SetPlayerSkin(playerid, SWAT_SKIN);
      		TogglePlayerControllable(playerid, 1);
      		new string[89];
      		format(string,sizeof(string),"** HQ: SWAT team member %s is now ready for orders! **",GetICName(playerid));
      		SendClientMessageToAll(COLOR_DUTY, string);
   		 	Duty[playerid] = false;
      		Criminal[playerid] = false;
      		Swat[playerid] = true;
      		Civilian[playerid] = false;
      		format(string,sizeof(string),"[SWAT2] ** HQ: %s is now on Swat Duty and ready for orders! **",GetName(playerid));
      		WriteLog("TacticalDuty", string);

	  }
      if(AdminDuty[playerid] == true)
      {
      		SetPlayerColor(playerid, COLOR_ADMINDUTY);
      		SetPlayerHealthEx(playerid, 999);
      }
      return 1;
}

#endif




LEANCMD:(criminal)
{
		SetPlayerDuty(playerid, DUTY_CRIMINAL);
		return 1;
}


LEANCMD:(criminal2)
{
		SetPlayerDuty(playerid, DUTY_CRIMINAL2);
		return 1;
}



//----------DUTY COMMANDS------------



LEANCMD:(weather)
{
    if (isnull(params)) return SendClientMessage( playerid, -1, "USAGE: /weather <weatherid>");
    if(!(PlayerInfo[playerid][pAdmin] >= 2)) return ADMIN_UNAUTHORIZED
    SetWeatherEx( strval ( params ) );
    new string[70];
    format(string,sizeof(string), "AdmWarn(%d): %s has set the weather to %d.",PlayerInfo[playerid][pAdmin],GetName(playerid), strval (params));
    SendAdminMessage(COLOR_YELLOW, string);
    return true;
}



public OnVehicleDeath(vehicleid, killerid)
{
		new car = VehicleIDX(vehicleid);
		if(car == INVALID_VEHICLE_ID)
        {
        	DestroyVehicle(vehicleid);
        }
        else
        {
			SetVehicleToRespawn(vehicleid);
		}
        VEHLISTEN[vehicleid] = false;
        DestroyObject(SirenObject[vehicleid]);
        Siren[vehicleid] = false;
        DestroyObject(SirenObject2[vehicleid]);
        Siren2[vehicleid] = false;
        return 1;
}



public OnVehicleSpawn(vehicleid)
{
		new interval = GetTickCount() - serveruptime;

    	new Seconds = (interval  / 1000);
    	if(Seconds < 10) return 1;
	    DestroyObject(SirenObject[vehicleid]);
	    Siren[vehicleid] = false;
	    DestroyDynamic3DTextLabel(vehicle3Dtext[vehicleid]);
	   	if(GetVehicleModel(vehicleid) == 528 || GetVehicleModel(vehicleid) == 427)
		{
	    	SetVehicleHealth(vehicleid, 10000);
	    }
  		if(GetVehicleModel(vehicleid) == 598)
		{
			SetVehicleHealth(vehicleid, 1110);
		}
		if(GetVehicleModel(vehicleid) == 596)
		{
			SetVehicleHealth(vehicleid, 1110);
		}
    	return 1;
}



LEANCMD:(siren)
{
	if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You have to be in a vehicle to use this.");
	new veh = GetPlayerVehicleID(playerid);

	if(Siren[veh] == true)
	{
		DestroyObject(SirenObject[veh]);
		Siren[veh] = false;
	}
	else
	{
		AddSirenToCar(playerid, veh);
	}
	return 1;

}

LEANCMD:(siren2)
{
	 if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You have to be in a vehicle to use this.");
	 new veh = GetPlayerVehicleID(playerid);
	 if(Siren2[veh] == true)
	 {
          DestroyObject(SirenObject2[veh]);
          Siren2[veh] = false;
          return 1;
	 }
	 if(GetVehicleModel(veh) == 560)
	 {
          SirenObject2[veh] = CreateObject( 19620,0,0,0,0,0,0,80 ); // <iVO>
          AttachObjectToVehicle( SirenObject2[veh], GetPlayerVehicleID(playerid), 0.000000, -1.300000, 0.400000, 0.000000, 0.000000, 0.000000 );
          Siren2[veh] = true;
     }
	 else if(GetVehicleModel(veh) == 426)
	 {
          SirenObject2[veh] = CreateObject( 19620,0,0,0,0,0,0,80 ); // <iVO>
          AttachObjectToVehicle( SirenObject2[veh], GetPlayerVehicleID(playerid), 0.000000, -1.600000, 0.300000, 0.000000, 0.000000, 0.000000 ); // <iVO> VEH TYPE 426
	      Siren2[veh] = true;
     }

	 else
	 {
     	 SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This Vehicle is not supported with a siren!");
	 }
     return 1;

}





LEANCMD:(ame)
{
	if ((noic) && PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, IC_DISABLED_ATTEMPT_MESSAGE);
		return 1;
	}

    new
		  string[128];

    if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_GREY,"USAGE: /ame [action]");
	format(string,sizeof(string), "%s %s",GetICMame(playerid), params);
	SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 20.0, 7000);
	format(string, sizeof(string), "> %s",params);
	SendClientMessage(playerid, COLOR_PURPLE, string);
	format(string, sizeof(string), "04[A-EMOTE]06 %s %s",GetICName(playerid), params);
 	IRC_GroupSayEx(string);
	return 1;
}


LEANCMD:(id)
{
	new
		id,
		s,
		tmpString[MAX_PLAYER_NAME+15],
		string[256];

    if(!(sscanf(params, "u", id)))
    {
        if(id != INVALID_PLAYER_ID)
        {
			format(string,sizeof(string), "(ID %d) %s | Level: %d", id, GetName(id), PlayerInfo[id][Level]);
			SendClientMessage(playerid, COLOR_GREY, string);
			return 1;
		}
		else return INVALID_PLAYERMSG
	}
	new inp = strlen(params);
	if(inp < 3) return SCM(playerid, COLOR_LIGHTRED, "ERROR: Input too short.");

	for(new x = 0; x < MAX_PLAYERS; x++)
	{
 		if(strfind(GetName(x), params, true) != -1)
		{
		    s++;
		    id = x;
  			format(tmpString, sizeof(tmpString), "%s (ID: %d), ", GetName(x), x);
     		strcat(string, tmpString);
		}
	}
	if(s == 0) return SCM(playerid, COLOR_LIGHTRED, "No players found.");
	if(s == 1)
	{
		new dstring[60];
		format(dstring,sizeof(dstring), "(ID %d) %s | Level: %d", id, GetName(id), PlayerInfo[id][Level]);
		SendClientMessage(playerid, COLOR_GREY, dstring);
		return 1;
	}
	SCM(playerid, COLOR_GREY, string);
	return 1;
	
}



LEANCMD:(masked)
{
	new string[96], maskid[12];
	if(PlayerInfo[playerid][pAdmin] == 0) return ADMIN_UNAUTHORIZED
	SCM(playerid, COLOR_LIGHTRED, "Listing Masked players.");
	EachPlayer(i)
	{
		if(GetPVarInt(i, "Masked") == 1)
		{
    		GetPVarString(i, "MaskID", maskid, sizeof(maskid));
    		format(string,sizeof(string), "Name:{FF9900} %s {ffffff}Mask:{FF9900} %s",GetName(i), maskid);
    		SendClientMessage(playerid, COLOR_WHITE, string);
		}
	}
	return 1;
}




stock GetMonthFix(Month)
{
	new monthname[10];

    switch(Month)
    {
        case 1:  monthname = "January";
        case 2:  monthname = "February";
        case 3:  monthname = "March";
        case 4:  monthname = "April";
        case 5:  monthname = "May";
        case 6:  monthname = "June";
        case 7:  monthname = "July";
        case 8:  monthname = "August";
        case 9:  monthname = "September";
        case 10: monthname = "October";
        case 11: monthname = "November";
        case 12: monthname = "December";
    }
    return monthname;
}

LEANCMD:(servertime)
{
	new string[128];
	new Year, Month, Day;
	getdate(Year, Month, Day);
	new tmphour;
	new tmpminute;
	new tmpsecond;
	gettime(tmphour, tmpminute, tmpsecond);
	FixHour(tmphour);
	format(string, sizeof(string), "%s, the server time is: %02dth %s %d, %02d:%02d:%02d", GetICName(playerid), Day, GetMonthFix(Month), Year, tmphour, tmpminute, tmpsecond);
	SendClientMessage(playerid, COLOR_GREY, string);
	return 1;

}


LEANCMD:(stats)
{
        new string[146], id;
        if(sscanf(params, "s[128]", params))
        {
        	new Float:health,Float:armor;
        	new Year, Month, Day;
			getdate(Year, Month, Day);
			new tmphour;
			new tmpminute;
			new tmpsecond;
			gettime(tmphour, tmpminute, tmpsecond);
			FixHour(tmphour);
    		GetPlayerHealth(playerid,health);
    		GetPlayerArmour(playerid,armor);
    		new rname = PlayerInfo[playerid][Rank];
			new Float:kdr =  float(PlayerInfo[playerid][pKills])/float(PlayerInfo[playerid][pDeaths]);
	    	format(string,sizeof(string),"|_________________________%s [%02dth %s %d, %02d:%02d:%02d] _________________________|",GetICName(playerid),Day, GetMonthFix(Month), Year,tmphour, tmpminute, tmpsecond);
	    	SendClientMessage(playerid, COLOR_GREEN, string);

	    	format(string,sizeof(string), "| Account | UserID:[%d] AdminLevel:[%i] Hours On:[%d] Rank:[%d][%s]", PlayerInfo[playerid][userid], PlayerInfo[playerid][pAdmin],PlayerInfo[playerid][hOn],rname,RANKINFO[rname][RankName]);
	    	SendClientMessage(playerid, COLOR_OOC, string);

	    	format(string,sizeof(string), "| Account | Times Logged in:[%i] Group:[%d][%s] Last Ban:[%s] Criminal Skin:[%i] Skin:[%d] Level:[%d]", PlayerInfo[playerid][pLogs],PlayerInfo[playerid][GroupID], GroupInfo[PlayerInfo[playerid][GroupID]][GroupName],PlayerInfo[playerid][pBannedr], PlayerInfo[playerid][pCrim],PlayerInfo[playerid][pSkin], PlayerInfo[playerid][Level]);
	    	SendClientMessage(playerid, COLOR_OOC, string);

	    	format(string,sizeof(string), "| Other | Kills:[%i] Deaths:[%i] KD Ratio:[%.1f] Health:[%.1f] Armor:[%.1f]",PlayerInfo[playerid][pKills], PlayerInfo[playerid][pDeaths],kdr, health,armor );
	    	SendClientMessage(playerid, COLOR_OOC, string);

	    	format(string,sizeof(string),"|_________________________%s [%02dth %s %d, %02d:%02d:%02d] _________________________|",GetICName(playerid),Day, GetMonthFix(Month), Year,tmphour, tmpminute, tmpsecond);
	    	SendClientMessage(playerid, COLOR_GREEN, string);

	    }
	    else
	    {
	    	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	    	if(sscanf(params,"u", id)) return SCM(playerid, COLOR_GREY, "Usage: /stats [PartOfName/playerid]");
	    	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
     		new Float:health,Float:armor;
    		GetPlayerHealth(id,health);
    		GetPlayerArmour(id,armor);
    		new rname = PlayerInfo[id][Rank];
			new Float:kdr =  float(PlayerInfo[id][pKills])/float(PlayerInfo[id][pDeaths]);
	    	format(string,sizeof(string),"|_________________________%s_________________________|",GetICName(id));
	    	SendClientMessage(playerid, COLOR_GREEN, string);
	    	format(string,sizeof(string), "| Account | UserID:[%d] AdminLevel:[%i] Hours On:[%d] Rank:[%d][%s]", PlayerInfo[id][userid], PlayerInfo[id][pAdmin],PlayerInfo[id][hOn],rname,RANKINFO[rname][RankName]);
	    	SendClientMessage(playerid, COLOR_OOC, string);
	    	format(string,sizeof(string), "| Account | Times Logged in:[%i] Group:[%d][%s] Last Ban:[%s] Criminal Skin:[%i] Skin:[%d] Level:[%d]", PlayerInfo[id][pLogs],PlayerInfo[id][GroupID], GroupInfo[PlayerInfo[id][GroupID]][GroupName],PlayerInfo[id][pBannedr], PlayerInfo[id][pCrim],PlayerInfo[id][pSkin],PlayerInfo[id][Level]);
	    	SendClientMessage(playerid, COLOR_OOC, string);
	    	format(string,sizeof(string), "| Other | Kills:[%i] Deaths:[%i] KD Ratio:[%.1f] Health:[%.1f] Armor:[%.1f]",PlayerInfo[id][pKills], PlayerInfo[id][pDeaths],kdr, health, armor);
	    	SendClientMessage(playerid, COLOR_OOC, string);
	    	format(string,sizeof(string),"|_________________________%s_________________________|",GetICName(id));
	    	SendClientMessage(playerid, COLOR_GREEN, string);

		}
	    return 1;
}





LEANCMD:(frisk)
{
            new Float:x, Float:y, Float:z;
			new targetid;
			if(sscanf(params,"u", targetid)) return SCM(playerid, COLOR_GREY,"USAGE: /frisk [playerid/partofname]");
			if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
            GetPlayerPos(playerid, x, y, z);
            if(IsPlayerInRangeOfPoint(targetid, 5.0, x, y, z))
            {
	                new
	                    weaponid,ammo,weapon[24];
	                new
	                string[87];
	                format(string, sizeof(string), "* %s searches %s for any illegal items.", GetICName(playerid), GetICName(targetid));
	                ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
	                format(string, sizeof(string), "____Illegal items____");
	                SendClientMessage(playerid, COLOR_DUTY, string);
	                format(string, sizeof(string), "Name: %s", GetICName(targetid));
	                SendClientMessage(playerid, COLOR_WHITE, string);
	                format(string, sizeof(string), "Money: Got more than 500");
	                SendClientMessage(playerid, COLOR_WHITE, string);
	                format(string, sizeof(string), "Weapons:");
	                SendClientMessage(playerid, COLOR_WHITE, string);

	                for (new c = 0; c < 13; c++)
	                {
	                    GetPlayerWeaponData(targetid, c, weaponid, ammo);
	                    if (weaponid != 0 && ammo != 0)
	                    {
	                        GetWeaponName(weaponid, weapon, 24);
	                        format(string, sizeof(string), "[%s]", weapon);
	                        SendClientMessage(playerid, COLOR_WHITE, string);
	                    }

	                }
	                return 1;
     		}
       		else return SendClientMessage(playerid, COLOR_GREY, "This player is not close enough.");
}





LEANCMD:(checkweapons)
{
    if((PlayerInfo[playerid][pAdmin] >= 1))
    {
        new id;
		if(!sscanf(params,"u",id))
		{

            if(id != INVALID_PLAYER_ID)
            {
                new
                    weaponid,ammo,weapon[24];
                new
                string[128];
                format(string, sizeof(string), "Name: %s(%i)",GetICName(id), id);
                SendClientMessage(playerid, COLOR_WHITE, string);

                for (new c = 0; c < 13; c++)
                {
                    GetPlayerWeaponData(id, c, weaponid, ammo);
                    if (weaponid != 0 && ammo != 0)
                    {
                        GetWeaponName(weaponid, weapon, 24);
                        format(string, sizeof(string), "[ID: %d] Weapon: [%s] - Ammo: [%d]", weaponid, weapon, ammo);
                        SendClientMessage(playerid, COLOR_WHITE, string);
                    }

                }
                return 1;
            }
            else return SendClientMessage(playerid, COLOR_LIGHTRED, "Playerid is not an active playerid");
        }
        else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /checkweapons [Player ID]");
    }
    else return ADMIN_UNAUTHORIZED
}





LEANCMD:(weapons)
{

                new
                    weaponid,
					ammo,
					weapon[24],
                    string[58];

                for (new c = 0; c < 13; c++)
                {
                    GetPlayerWeaponData(playerid, c, weaponid, ammo);
                    if (weaponid != 0 && ammo != 0)
                    {
                        GetWeaponName(weaponid, weapon, 24);
                        format(string, sizeof(string), "[ID: %d] Weapon: [%s] - Ammo: [%d]", weaponid, weapon, ammo);
                        SendClientMessage(playerid, COLOR_FADE3, string);
                    }

                }
                return 1;

}




LEANCMD:(explode)
{
	new
    Float:x,
    Float:y,
	Float:z,
	id,
	string[85];



	if(!(PlayerInfo[playerid][pAdmin] >=4)) return ADMIN_UNAUTHORIZED
	if(sscanf(params, "u", id)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /explode [playerid/partofname]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

	GetPlayerPos(id, x,y,z);
	CreateExplosion(x,y,z,7,10.0);
	format(string, sizeof(string), "AdmCmd: %s has exploded %s", GetName(playerid), GetName(id));
	SendClientMessageToAll(COLOR_LIGHTRED, string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has exploded %s", GetName(playerid), GetName(id));
 	IRC_GroupSayEx(string);
	return 1;
}




LEANCMD:(tod)
{
	if(!(PlayerInfo[playerid][pAdmin] >= 2)) return ADMIN_UNAUTHORIZED
	new time, string[61];
	if(sscanf(params, "i", time)) return SendClientMessage(playerid, -1, "USAGE: /tod [timeofday]");
	if (time < 0 || time > 23) return SendClientMessage(playerid, COLOR_GREY, "   Only 0 to 23");
	SetWorldTime(time);
	format(string, sizeof(string), "AdmCmd: %s has changed the time to %i.", GetName(playerid), time);
	SendClientMessageToAll(COLOR_LIGHTRED, string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has changed the time to %i.", GetName(playerid), time);
 	IRC_GroupSayEx(string);
	return 1;
}



LEANCMD:(renameacc)
{
	#if defined TRAINING_SASD
    if( PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 5) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    #endif

    new
	    oldName[MAX_PLAYER_NAME],
		newName[MAX_PLAYER_NAME],
		ottquery[50+MAX_PLAYER_NAME];

    if(sscanf(params, "s[24]s[24]", oldName,newName )) return SendClientMessage(playerid, COLOR_LIGHTRED , "USAGE: /renameaccount [OldName][New name]");
    if(strlen(oldName) < 3 || strlen(oldName) > MAX_PLAYER_NAME) return SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Invalid name!");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", oldName);
	mysql_tquery(mysql, ottquery, "OnAccountNameChange", "d", playerid);
	accNname = newName;
	accOname = oldName;

    return 1;
}

forward OnAccountNameChange(playerid);
public OnAccountNameChange(playerid)
{
    new ottquery[120], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		new adminlvl;
        adminlvl = cache_get_row_int(0, 4, mysql);
        if(PlayerInfo[playerid][pAdmin] < adminlvl) return SCM(playerid, COLOR_LIGHTRED,"You dont have access to this account.");
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Username` = '%s' WHERE `Username` = '%s'", accNname, accOname);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(%d): %s has renamed accound %s to %s" ,PlayerInfo[playerid][pAdmin], GetName(playerid), accOname, accNname);
    	SendAdminMessage(COLOR_YELLOW, string);

		new id = GetPlayerID(accOname);
	    if(id != INVALID_PLAYER_ID)
	    {
	        SetPlayerName(id, accNname);
			format(string,sizeof(string), "Your name has been changed to %s by admin %s.",accNname,GetName(playerid));
			SCM(id, COLOR_WHITE,string);
			PlayerInfo[id][Username] = accNname;
		}
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}



LEANCMD:(deleteacc)
{
	return cmd_disableacc(playerid, params);
}


stock IsARolePlayName(name[])
{
    new
                szLastCell,
        bool:   bUnderScore;

    for(new i; i < strlen(name); i++)
    {
        if(name[i] == '_')
        {
            if(bUnderScore == true)
            {
                return 0;
            }

            bUnderScore = true;
        }

        else if(!szLastCell || szLastCell == '_') // Check if capitalized where it should be
        {
            if(name[i] < 'A' || name[i] > 'Z')
            {
                return 0;
            }
        }

        else
        {
            if(name[i] < 'a' || name[i] > 'z')
                return 0;
        }

        szLastCell = name[i];
    }

    if(bUnderScore == false)
        return 0;

	return 1;
}

forward MakeaAcc(playerid, name[]);
public MakeaAcc(playerid, name[])
{
	new leanquery[100];

	mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", name);
	mysql_tquery(mysql, leanquery, "AccountExistNew", "d", playerid);

}

forward AccountExistNew(playerid);
public AccountExistNew(playerid)
{
    new rows = cache_num_rows();
	if(playerid == INVALID_PLAYER_ID)
	{
    	if(rows > 0)
		{
		    IRC_GroupSayEx("ERROR: account already exists");
		    return 1;
		}
	}
	else
	{
		if(rows > 0)
		{
		    SCM(playerid, COLOR_LIGHTRED, "ERROR: Account already exists.");
		    return 1;
		}
	}
   	new
		leanquery[280+MAX_PLAYER_NAME],
		hashpass[129],
		string[128];


	WP_Hash(hashpass,sizeof(hashpass),"changeit");

	mysql_format(mysql, leanquery, sizeof(leanquery), "INSERT INTO `seb-users` (`Username`, `Password`, `Skin`) VALUES ('%s', '%s', '%d')", newAcc, hashpass, DEFAULT_SKIN);
 	mysql_tquery(mysql, leanquery, "", "");

	if(playerid == INVALID_PLAYER_ID)
	{
	    IRC_GroupSayEx("Account has been made.");
 		format(string, sizeof(string), "AdmWarn(IRC): an account with the name %s has been created through IRC.",ALEVEL, GetName(playerid), newAcc);
 		SendAdminMessage(COLOR_YELLOW, string);
 		return 1;
	}
	else
	{
	    format(string, sizeof(string), "AdmWarn(%d): %s has created an account with the name %s.",ALEVEL, GetName(playerid), newAcc);
	    SendAdminMessage(COLOR_YELLOW, string);
	}
	
	
	
   	new year, month, day, hour, minute, second;
	getdate(year, month, day), gettime(hour, minute, second);
	format(string, sizeof(string), "[%d/%s/%02d - %02d:%02d:%02d] ", year, GetMonthFix(month), day, hour, minute, second);
	mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-users` SET `AccountCreation` = '%s' WHERE `Username` = '%e' LIMIT 1", string, newAcc);
	mysql_tquery(mysql, leanquery, "", "");

    return 1;

}




LEANCMD:(createacc)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 4 && PlayerInfo[playerid][GroupID] != 5) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    #endif



	new dName[MAX_PLAYER_NAME];

	if(sscanf(params, "s[24]", dName)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /createacc [player name]");

	if(IsARolePlayName(dName) == 0) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"Not a valid name.");

    MakeaAcc(playerid, dName);

    newAcc = dName;

	return 1;
}

new groupsid[MAX_PLAYERS];

LEANCMD:(setaccgroup)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    #endif


    new
	    sP[MAX_PLAYER_NAME],
	    groupid,
		ottquery[80];

    if(sscanf(params, "s[24]d", sP,groupid)) return SendClientMessage(playerid, -1, "USAGE: /setaccgroup [acc name] [Groupid]");
    if(strlen(sP) < 3 || strlen(sP) > MAX_PLAYER_NAME) return SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Invalid name!");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountGroupSet", "d", playerid);
	ACCDISABLE = sP;
	groupsid[playerid] = groupid;
    return 1;
}

forward OnAccountGroupSet(playerid);
public OnAccountGroupSet(playerid)
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		new adminlvl;
        adminlvl = cache_get_row_int(0, 4, mysql);
        if(PlayerInfo[playerid][pAdmin] < adminlvl) return SCM(playerid, COLOR_LIGHTRED, "You dont have access to this account.");
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `GroupID` = '%d' WHERE `Username` = '%s'",groupsid[playerid], ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(%d): %s has set the group of account %s to %d(%s)." ,PlayerInfo[playerid][pAdmin], GetName(playerid), ACCDISABLE, groupsid[playerid],GroupInfo[groupsid[playerid]][GroupName]);
    	SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}



LEANCMD:(setaccrank)
{

	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    #endif
    new
	    sP[MAX_PLAYER_NAME],
	    groupid,
		ottquery[80];
    
    if(sscanf(params, "s[24]d", sP,groupid)) return SendClientMessage(playerid, -1, "USAGE: /setaccrank [acc name] [rankid]");
    if(strlen(sP) < 3 || strlen(sP) > MAX_PLAYER_NAME) return SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Invalid name!");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountRankSet", "d", playerid);
	ACCDISABLE = sP;
	groupsid[playerid] = groupid;
    return 1;
}


forward OnAccountRankSet(playerid);
public OnAccountRankSet(playerid)
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		new adminlvl;
        adminlvl = cache_get_row_int(0, 4, mysql);
        if(PlayerInfo[playerid][pAdmin] < adminlvl) return SCM(playerid, COLOR_LIGHTRED,"You dont have access to this account.");
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Rank` = '%d' WHERE `Username` = '%s'",groupsid[playerid], ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(%d): %s has set the account %s rank to %d(%s)." ,PlayerInfo[playerid][pAdmin], GetName(playerid), ACCDISABLE, groupsid[playerid],RANKINFO[groupsid[playerid]][RankName]);
    	SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}


LEANCMD:(setaccadmin)
{
    new
	    sP[MAX_PLAYER_NAME],
	    groupid,
		ottquery[80];

    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    if(sscanf(params, "s[24]d", sP,groupid)) return SendClientMessage(playerid, -1, "USAGE: /setaccadmin [acc name] [adminlvl]");
    if(strlen(sP) < 3 || strlen(sP) > MAX_PLAYER_NAME) return SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Invalid name!");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountAdminSet", "d", playerid);
	ACCDISABLE = sP;
	groupsid[playerid] = groupid;
    return 1;
}


LEANCMD:(laston)
{
	new
	    sP[MAX_PLAYER_NAME],
		ottquery[80];

    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
    if(sscanf(params, "s[24]", sP)) return SendClientMessage(playerid, -1, "USAGE: /laston [account name]");
    if(strlen(sP) < 3 || strlen(sP) > MAX_PLAYER_NAME) return SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Invalid name!");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "LastOnCheck", "d", playerid);
	ACCDISABLE = sP;
	return 1;
}


forward LastOnCheck(playerid);
public LastOnCheck(playerid)
{
    new string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		new ontime[64];
        cache_get_row(0, 42, ontime, mysql);
  		format(string, sizeof(string), "[Last On] %s %s",ACCDISABLE, ontime);
    	SCM(playerid, COLOR_GREY, string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}




forward OnAccountAdminSet(playerid);
public OnAccountAdminSet(playerid)
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		new adminlvl;
        adminlvl = cache_get_row_int(0, 4, mysql);
        if(PlayerInfo[playerid][pAdmin] < adminlvl) return SCM(playerid, COLOR_LIGHTRED,"You dont have access to this account.");
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Admin` = '%d' WHERE `Username` = '%s'",groupsid[playerid], ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(%d): %s has set the account admin level %s to %d." ,PlayerInfo[playerid][pAdmin], GetName(playerid), ACCDISABLE, groupsid[playerid]);
    	SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}


LEANCMD:(disableacc)
{
    new
	    sP[MAX_PLAYER_NAME],
		ottquery[80];

    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    if(sscanf(params, "s[24]", sP)) return SendClientMessage(playerid, -1, "USAGE: /deleteacc [ACCOUNT NAME]");
    if(strlen(sP) < 3 || strlen(sP) > MAX_PLAYER_NAME) return SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Invalid name!");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountDisable", "d", playerid);
	ACCDISABLE = sP;
    return 1;
}

forward OnAccountDisable(playerid);
public OnAccountDisable(playerid)
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		new adminlvl;
        adminlvl = cache_get_row_int(0, 4, mysql);
        if(PlayerInfo[playerid][pAdmin] < adminlvl) return SCM(playerid, COLOR_LIGHTRED,"You dont have access to this account.");
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Banned` = '1', `BannedR` = 'Your account has been deactivated by an Administrator.' WHERE `Username` = '%s'", ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(%d): %s has disabled the account %s." ,PlayerInfo[playerid][pAdmin], GetName(playerid), ACCDISABLE);
    	SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}

LEANCMD:(enableacc)
{
    new
	    sP[MAX_PLAYER_NAME],
		ottquery[80];

    if(!(PlayerInfo[playerid][pAdmin] >= 2)) return ADMIN_UNAUTHORIZED
    if(sscanf(params, "s[24]", sP)) return SendClientMessage(playerid, -1, "USAGE: /enableacc [ACCOUNT NAME]");
    if(strlen(sP) < 3 || strlen(sP) > MAX_PLAYER_NAME) return SendClientMessage(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Invalid name!");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountEnable", "d", playerid);
	ACCENABLE = sP;
    return 1;
}

forward OnAccountEnable(playerid);
public OnAccountEnable(playerid)
{
    new ottquery[100], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Banned` = '0', `BannedR` = 'NULL' WHERE `Username` = '%s'", ACCENABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(%d): %s has enabled the account %s." ,PlayerInfo[playerid][pAdmin], GetName(playerid), ACCENABLE);
    	SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}

LEANCMD:(deletetp)
{
	return cmd_deletetele(playerid, params);
}


new PWUSER[MAX_PLAYER_NAME];




LEANCMD:(resetpw)
{

	#if defined TRAINING_SASD
    if( PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 5 && PlayerInfo[playerid][GroupID] != 4) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    #endif

    new
	     sP[MAX_PLAYER_NAME],
		 sV[34 + 1],
		 ottquery[80];

    if(sscanf(params, "s[21]", sP)) return SendClientMessage(playerid, -1, "USAGE: /resetpw [ACCOUNT NAME]");
    if(strlen(sP) < 3 || strlen(sV) > MAX_PLAYER_NAME) return SendClientMessage(playerid, -1, "ERROR: Invalid name lenghth");
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnPasswordChange", "d", playerid);
	PWUSER = sP;
    return 1;
}

forward OnPasswordChange(playerid);
public OnPasswordChange(playerid)
{
	new ottquery[500+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		new adminlvl;
        adminlvl = cache_get_row_int(0, 4, mysql);
        if(PlayerInfo[playerid][pAdmin] < adminlvl) return SCM(playerid, COLOR_LIGHTRED,"You dont have access to this account.");
        
       	new hashpass[129];
		WP_Hash(hashpass,sizeof(hashpass),"changeit");
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Password` = '%s', `Pw` = '0' WHERE `Username` = '%s'", hashpass, PWUSER);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(%d): %s has reset the password of the account %s." ,PlayerInfo[playerid][pAdmin],GetName(playerid), PWUSER);
    	SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}



LEANCMD:(grouphelp)
{
	if( PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
	SCM(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /disarmg [Disarms players near you] [5 radius]");
	SCM(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /givegung [WeaponID] [Ammo] [Gives the weapon ID and ammo to players near you] [5 radius]");
	SCM(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /sethpg [Health Amount] [5 radius]");
	SCM(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /setarmorg [Armor Amount] [5 radius]");
	SCM(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /setsking [Skin ID] [5 radius]");
	SCM(playerid, COLOR_AO, "Explanation, 5 radius is same distance as /low is.");
	return 1;
}


LEANCMD:(disarmg)
{
   new
		 string[126],
		 ame[126],
		 Float:X,
		 Float:Y,
		 Float:Z;


   if(!(PlayerInfo[playerid][pAdmin] >= 3)) return ADMIN_UNAUTHORIZED
   GetPlayerPos(playerid, X, Y, Z);
   EachPlayer(i)
   {
   		if(IsPlayerInRangeOfPoint(i, 5, X,Y,Z))
   		{
	  		ResetWeapons(i);
      		format(ame,sizeof(ame), "(( HAS BEEN DISARMED ))");
      		SetPlayerChatBubble(i, ame, COLOR_LIGHTRED, 10.0, 5000);
      		SCM(i, COLOR_YELLOW, "You have been disarmed");
	    }
   }
   format(string,sizeof(string), "AdmWarn(%i): %s has disarmed players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid));
   SendAdminMessage(COLOR_YELLOW, string);
   format(string,sizeof(string), "AdmCmd(%d): %s has disarmed players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid));
   ProxDetector(5.0, playerid, string, COLOR_GRAD1,COLOR_GRAD2,COLOR_GRAD3,COLOR_GRAD4,COLOR_GRAD5);
   return 1;
}

LEANCMD:(reviveg)
{
   new
		 string[126],
		 Float:X,
		 Float:Y,
		 Float:Z;


   if( PlayerInfo[playerid][pAdmin] < 3 ) return ADMIN_UNAUTHORIZED
   GetPlayerPos(playerid, X, Y, Z);
   EachPlayer(id)
   {
   		if(IsPlayerInRangeOfPoint(id, 15, X,Y,Z))
   		{
                SetPlayerHealthEx(id, SPAWNHEALTH);
				TogglePlayerControllable(id, 1);
				DM[id] = false;
				DM1[id] = false;
				DEAD[id] = false;
				BWMODE[id] = false;
				dmSent[playerid] = false;
				KillTimer(drt[id]);
				KillTimer(respawntimer[id]);
				SetPlayerChatBubble(id, "* Revived.", COLOR_LIGHTRED, 15.0, 3200);
	    }
   }
   format(string,sizeof(string), "AdmWarn(%i): %s has revived players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid));
   SendAdminMessage(COLOR_YELLOW, string);
   return 1;
}


LEANCMD:(givegung)
{
   new
		 string[126],
		 ame[126],
		 Float:X,
		 Float:Y,
		 Float:Z,
		 gun,
		 weapon[24],
		 ammo;


   if(!(PlayerInfo[playerid][pAdmin] >= 3)) return ADMIN_UNAUTHORIZED
   if(sscanf(params, "ii", gun, ammo)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /givegung [WeaponID] [Ammo]");
   GetPlayerPos(playerid, X, Y, Z);
   GetWeaponName(gun, weapon, 24);
   EachPlayer(i)
   {
   		if(IsPlayerInRangeOfPoint(i, 5, X,Y,Z))
   		{
      		GiveWeapon(i, gun, ammo);
      		format(ame, sizeof(ame), "(( HAS BEEN GIVEN GUN %s(%i) WITH %i AMMO BY %s ))",weapon,gun, ammo, GetName(playerid));
      		SetPlayerChatBubble(i, ame, COLOR_LIGHTRED, 10.0, 5000);
      		SCM(i, COLOR_YELLOW, "You have been given a gun.");
		}
   }
   format(string,sizeof(string), "AdmWarn(%i): %s has given weapon %s(%i) with %i ammo to players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid),weapon, gun, ammo);
   SendAdminMessage(COLOR_YELLOW, string);
   format(string,sizeof(string), "AdmCmd[%i]: %s has given weapon %s(%i) with %i ammo to players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid),weapon, gun, ammo);
   ProxDetector(5.0, playerid, string, COLOR_GRAD1,COLOR_GRAD2,COLOR_GRAD3,COLOR_GRAD4,COLOR_GRAD5);
   return 1;
}

LEANCMD:(sethpg)
{
   new
		 string[126],
		 ame[126],
		 Float:X,
		 Float:Y,
		 Float:Z,
		 ammount;


   if(!(PlayerInfo[playerid][pAdmin] >= 3)) ADMIN_UNAUTHORIZED
   if(sscanf(params, "i", ammount)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /sethpg [Amount]");
   GetPlayerPos(playerid, X, Y, Z);
   EachPlayer(i)
   {
   		if(IsPlayerInRangeOfPoint(i, 5, X,Y,Z))
   		{
      		SetPlayerHealthEx(i, ammount);
      		format(ame,sizeof(ame), "(( HEALTH HAS BEEN SET TO %i BY %s ))",ammount, GetName(playerid));
      		SetPlayerChatBubble(i, ame, COLOR_LIGHTRED, 10.0, 5000);
      		SCM(i, COLOR_YELLOW, "Your health have been set.");
		}
   }
   format(string,sizeof(string), "AdmWarn(%i): %s has given %i health to players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid), ammount);
   SendAdminMessage(COLOR_YELLOW, string);
   format(string,sizeof(string), "AdmCmd: [%i] %s has given %i health to players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid), ammount);
   ProxDetector(5.0, playerid, string, COLOR_GRAD1,COLOR_GRAD2,COLOR_GRAD3,COLOR_GRAD4,COLOR_GRAD5);
   return 1;
}


LEANCMD:(setarmorg)
{
   new
		 string[126],
		 ame[65],
		 Float:X,
		 Float:Y,
		 Float:Z,
		 ammount;


   if(!(PlayerInfo[playerid][pAdmin] >= 3)) return ADMIN_UNAUTHORIZED
   if(sscanf(params, "i", ammount)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /setarmorg [Amount]");
   GetPlayerPos(playerid, X, Y, Z);
   EachPlayer(i)
   {
   		if(IsPlayerInRangeOfPoint(i, 5, X,Y,Z))
   		{
      		SetPlayerArmour(i, ammount);
      		format(ame,sizeof(ame), "(( ARMOUR HAS BEEN SET TO %i BY %s ))",ammount, GetName(playerid));
      		SetPlayerChatBubble(i, ame, COLOR_LIGHTRED, 10.0, 5000);
      		SCM(i, COLOR_YELLOW, "Your armour have been set.");
      		SetPlayerArmour(i, ammount);
		}
   }
   format(string,sizeof(string), "AdmWarn(%i): %s has given %i armour to players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid), ammount);
   SendAdminMessage(COLOR_YELLOW, string);
   format(string,sizeof(string), "AdmCmd: [%i] %s has given %i armour to players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid), ammount);
   ProxDetector(5.0, playerid, string, COLOR_GRAD1,COLOR_GRAD2,COLOR_GRAD3,COLOR_GRAD4,COLOR_GRAD5);
   return 1;
}


LEANCMD:(setsking)
{
   new
		 string[126],
		 ame[85],
		 Float:X,
		 Float:Y,
		 Float:Z,
		 ammount;


   if(!(PlayerInfo[playerid][pAdmin] >= 3)) return ADMIN_UNAUTHORIZED
   if(sscanf(params, "i", ammount)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /setsking [Skin ID]");
   GetPlayerPos(playerid, X, Y, Z);
   EachPlayer(i)
   {
   		if(IsPlayerInRangeOfPoint(i, 5, X,Y,Z))
   		{
      		format(ame,sizeof(ame), "(( SKIN HAS BEEN SET TO %i BY %s ))",ammount, GetName(playerid));
      		SetPlayerChatBubble(i, ame, COLOR_LIGHTRED, 10.0, 5000);
      		SCM(i, COLOR_YELLOW, "Your skin have been set.");
      		SetPlayerSkin(i, ammount);
		}
   }
   format(string,sizeof(string), "AdmWarn(%i): %s has set the skinID %i on players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid), ammount);
   SendAdminMessage(COLOR_YELLOW, string);
   format(string,sizeof(string), "AdmCmd: [%i] %s has set the skinID %i on players' near himself.",PlayerInfo[playerid][pAdmin], GetName(playerid), ammount);
   ProxDetector(5.0, playerid, string, COLOR_GRAD1,COLOR_GRAD2,COLOR_GRAD3,COLOR_GRAD4,COLOR_GRAD5);
   return 1;
}


LEANCMD:(acchelp)
{
  if(!(PlayerInfo[playerid][pAdmin] >= 3)) return ADMIN_UNAUTHORIZED
  SendClientMessage(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /createacc [Name_Surname]");
  SendClientMessage(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /resetpw [Name_Surname]");
  SendClientMessage(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /renameacc [Old_Name][New_Name]");
  SendClientMessage(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /disableacc [Name_Surname]");
  SendClientMessage(playerid, COLOR_GREY, "{FF9900}USAGE:{C3C3C3} /enableacc [Name_Surname]");
  return 1;
}

#define MAX_OBJ 50

enum dGunEnum
{
	Float:ObjPos[3],
	ObjID,
	ObjData[2]
};
new dGunData[MAX_OBJ][dGunEnum];
// -----------------------------------------------------------------------------
new GunNames[48][] = {
	"Fists", "Brass Knuckles", "Golf Club", "Nitestick", "Knife", "Baseball Bat",
	"Showel", "Pool Cue", "Katana", "Chainsaw", "Purple Dildo", "Small White Dildo",
	"Long White Dildo", "Vibrator", "Flowers", "Cane", "Grenade", "Tear Gas", "Molotov",
	"Vehicle Missile", "Hydra Flare", "Jetpack", "Glock", "Silenced Colt", "Desert Eagle",
	"Shotgun", "Sawn Off", "Combat Shotgun", "Micro UZI", "MP5", "AK47", "M4", "Tec9",
	"Rifle", "Sniper Rifle", "Rocket Launcher", "HS Rocket Launcher", "Flamethrower", "Minigun",
	"Satchel Charge", "Detonator", "Spraycan", "Fire Extinguisher", "Camera", "Nightvision",
	"Infrared Vision", "Parachute", "Fake Pistol"
};

new aWeaponNames[][32] = {
	{"Unarmed (Fist)"}, // 0
	{"Brass Knuckles"}, // 1
	{"Golf Club"}, // 2
	{"Night Stick"}, // 3
	{"Knife"}, // 4
	{"Baseball Bat"}, // 5
	{"Shovel"}, // 6
	{"Pool Cue"}, // 7
	{"Katana"}, // 8
	{"Chainsaw"}, // 9
	{"Purple Dildo"}, // 10
	{"Big White Vibrator"}, // 11
	{"Medium White Vibrator"}, // 12
	{"Small White Vibrator"}, // 13
	{"Flowers"}, // 14
	{"Cane"}, // 15
	{"Grenade"}, // 16
	{"Teargas"}, // 17
	{"Molotov"}, // 18
	{" "}, // 19
	{" "}, // 20
	{" "}, // 21
	{"Colt 45"}, // 22
	{"Colt 45 (Silenced)"}, // 23
	{"Desert Eagle"}, // 24
	{"Normal Shotgun"}, // 25
	{"Sawnoff Shotgun"}, // 26
	{"Combat Shotgun"}, // 27
	{"Micro Uzi (Mac 10)"}, // 28
	{"MP5"}, // 29
	{"AK47"}, // 30
	{"M4"}, // 31
	{"Tec9"}, // 32
	{"Country Rifle"}, // 33
	{"Sniper Rifle"}, // 34
	{"Rocket Launcher"}, // 35
	{"Heat-Seeking Rocket Launcher"}, // 36
	{"Flamethrower"}, // 37
	{"Minigun"}, // 38
	{"Satchel Charge"}, // 39
	{"Detonator"}, // 40
	{"Spray Can"}, // 41
	{"Fire Extinguisher"}, // 42
	{"Camera"}, // 43
	{"Night Vision Goggles"}, // 44
	{"Infrared Vision Goggles"}, // 45
	{"Parachute"}, // 46
	{"Fake Pistol"} // 47
};

stock CorrectGun(weaponid)
{
	switch (weaponid)
	{
	    case 9,16,17,18,26,27,35,36,37,38,39,40,44,45:
	    {
			return 1;
		}
	}
	return 0;
}

LEANCMD:(givegun)
{
	new
	    id,
		gun,
		ammo,
		string[128],
		tmp[32];

	if(!(PlayerInfo[playerid][pAdmin] >= 1)) return ADMIN_UNAUTHORIZED

	if(!sscanf(params, "udi", id, gun, ammo))
	{
		if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
		if(gun > 47 || gun < 1) return SCM(playerid, COLOR_GREY, "GUN ID'S: 1-47");
		#if defined TRAINING_SASD
		new gunid = CorrectGun(gun);
		if(gunid && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This weapon is restricted.");
		#endif
	    GiveWeapon(id, gun, ammo);
 	  	format(string, sizeof(string),"AdmWarn(%i): %s has given %s weapon %s with %i ammo.", PlayerInfo[playerid][pAdmin], GetName(playerid), GetName(id),GetWName(gun), ammo);
	   	SendAdminMessage(COLOR_YELLOW, string);
	    return 1;
	}


	if(!sscanf(params,"us[32]i",id, tmp, ammo))
	{
		new weaponi = GetWeaponModelIDFromName(tmp);
		if(id == INVALID_PLAYER_ID) return SCM(playerid, COLOR_LIGHTRED, "Playerid is not connected");
		if(weaponi > 47 || weaponi < 1) return SCM(playerid, COLOR_GREY,"GUN ID'S: 1-47");
		#if defined TRAINING_SASD
		new gunid = CorrectGun(weaponi);
		if(gunid && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This weapon is restricted.");
		#endif
	 	GiveWeapon(id, weaponi, ammo);
	  	format(string, sizeof(string),"AdmWarn(%i): %s has given %s weapon %s with %i ammo.",PlayerInfo[playerid][pAdmin], GetName(playerid), GetName(id),weaponi, ammo);
	   	SendAdminMessage(COLOR_YELLOW, string);
	    return 1;
	}
	SCM(playerid,COLOR_LIGHTRED,"USAGE: /givegun [playerid] [weapon name / weapon ID] [ammo]");
	return 1;
}



GetWeaponModelIDFromName(wname[])
{
    for(new i = 0; i < 48; i++) {
        if (i == 19 || i == 20 || i == 21) continue;
		if (strfind(aWeaponNames[i], wname, true) != -1) {
			return i;
		}
	}
	return -1;
}

// -----------------------------------------------------------------------------
new GunObjects[47] = {
	0,331,333,334,335,336,337,338,339,341,321,322,323,324,325,326,342,343,344,
	0,0,0,346,347,348,349,350,351,352,353,355,356,372,357,358,359,360,361,362,
	363,364,365,366,367,368,368,371
};
// -----------------------------------------------------------------------------




LEANCMD:(leavegun)
{
        if(GetPlayerSpecialAction(playerid) != SPECIAL_ACTION_DUCK) return SCM(playerid,COLOR_LIGHTRED,"    You need to be crouching.");
        new weaponid;
        if(sscanf(params,"d",weaponid)) return SCM(playerid, COLOR_WHITE, "USAGE: /leavegun [weaponid]");
        new GunID = weaponid;
        new GunAmmo = GetPlayerAmmo(playerid);
        if(GunID > 0 && GunAmmo != 0)
        {
            new f = MAX_OBJ+1;
            for(new a = 0; a < MAX_OBJ; a++)
            {
                if(dGunData[a][ObjPos][0] == 0.0)
                {
                    f = a;
                    break;
                }
            }
           	new weaptype,weapammo;
 			GetPlayerWeaponData(playerid, GetWSlotID(weaponid), weaptype, weapammo);
 			if(weapammo == 0) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You cannot leave a gun on the ground which you dont have on you...");
            if(f > MAX_OBJ) return SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"Max weapons reached on the server.");
			RemovePlayerWeapon(playerid, GunID);
			dGunData[f][ObjData][0] = GunID;
			dGunData[f][ObjData][1] = weapammo;
            GetPlayerPos(playerid, dGunData[f][ObjPos][0], dGunData[f][ObjPos][1], dGunData[f][ObjPos][2]);
            dGunData[f][ObjID] = CreateDynamicObject(GunObjects[GunID], dGunData[f][ObjPos][0], dGunData[f][ObjPos][1], dGunData[f][ObjPos][2]-1, 93.7, 120.0, 120.0);
			new string[94];
			format(string,sizeof(string), "%s left their %s on the ground.",GetICMame(playerid),GunNames[dGunData[f][ObjData][0]]);
			SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 40.0, 5000);
			SendClientMessage(playerid, COLOR_PURPLE, string);
			return 1;
        }
        SCM(playerid,COLOR_LIGHTRED,"   You dont have this gun on you.");
        return 1;
    }
#define MAX_WEAPON_NAME 24
LEANCMD:(grabgun)
    {
        if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return 1;
        new f = MAX_OBJ+1;
		for(new a = 0; a < MAX_OBJ; a++)
		{
		    if(IsPlayerInRangeOfPoint(playerid, 1.0, dGunData[a][ObjPos][0], dGunData[a][ObjPos][1], dGunData[a][ObjPos][2]))
		    {
		        f = a;
		        break;
		    }
		}
		if(f > MAX_OBJ) return SendClientMessage(playerid, 0x33AA3300, "You are not near the weapon which you can pick up!");
		DestroyDynamicObject(dGunData[f][ObjID]);
		GiveWeapon(playerid, dGunData[f][ObjData][0], dGunData[f][ObjData][1]);
		dGunData[f][ObjPos][0] = 0.0;
		dGunData[f][ObjPos][1] = 0.0;
		dGunData[f][ObjPos][2] = 0.0;
		dGunData[f][ObjID] = -1;
		//dGunData[f][ObjData][0] = 0;
		dGunData[f][ObjData][1] = 0;
		new string[MAX_PLAYER_NAME+MAX_WEAPON_NAME+26];
		format(string,sizeof(string), "%s grabs %s from the ground.",GetICMame(playerid),GunNames[dGunData[f][ObjData][0]]);
		SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 20.0, 5000);
		SendClientMessage(playerid, COLOR_PURPLE, string);
  		return 1;
    }


LEANCMD:(gg)
{
	return cmd_grabgun(playerid, params);
}
// -----------------------------------------------------------------------------
stock RemovePlayerWeapon(playerid, weaponid)
{
	new plyWeapons[12] = 0;
	new plyAmmo[12] = 0;
 	new slot = GetWSlotID(weaponid);
	Weapons[playerid][slot] = -1;
	for(new sslot = 0; sslot != 12; sslot++)
	{
		new wep, ammo;
		GetPlayerWeaponData(playerid, sslot, wep, ammo);
		if(wep != weaponid && ammo != 0) GetPlayerWeaponData(playerid, sslot, plyWeapons[sslot], plyAmmo[sslot]);
	}
	ResetWeapons(playerid);
	for(new sslot = 0; sslot != 12; sslot++) if(plyAmmo[sslot] != 0) GiveWeapon(playerid, plyWeapons[sslot], plyAmmo[sslot]);
	return 1;
}
LEANCMD:(anims)
	{
	    SendClientMessage(playerid,COLOR_GREEN," ____________Character Animations____________");
	    SendClientMessage(playerid,COLOR_GRAD1,"[Sit/Lay] /sit /lay[1-2] /sleep /lean2 /slapass /deal /chat[1-2] /hoodfrisked /lightcig /tapcig /box /caranim");
        SendClientMessage(playerid,COLOR_GRAD1,"[Signs] /gsign[1-7] /hide /vomit /eat /taichi /frontfall /leftslap /rollfall /carlock /rcarjack[1-2] /lcarjack[1-2]");
        SendClientMessage(playerid,COLOR_GRAD1,"[Communication] /greet1 /greet2 /crossarms /push /akick /koface /kostomach /lifejump /exhaust");
        SendClientMessage(playerid,COLOR_GRAD1,"[Communication] /fuckyou /argue /kiss /robman /lowbodypush /spray /headbutt /medic");
        SendClientMessage(playerid,COLOR_GRAD1,"[Physical Actions] /bat /bat2 /punch /slapass /carjacked[1-2] /chant /fucku /dealerstance");
        SendClientMessage(playerid,COLOR_GRAD1,"[Physical Actions] /taxiL /flip /crack /handsup /cellin /cellout /shouting /fstance /camera1");
        SendClientMessage(playerid,COLOR_GRAD1,"[Emotions] /injured /drunk /bombplant /getarrested /laugh /lookout /cop /elbow /kneekick /gtalk-7");
        SendClientMessage(playerid,COLOR_GREEN,"_____________________________________________");
        SCM(playerid, COLOR_LIGHTRED, "NOTICE: /stopanim if you get stuck after animation!");
		return true;
	}

//================================ANIMATIONS====================================




CMD:taxiL(playerid, params[])
{
	ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","IDLE_taxi",4.0,0,1,1,1,0);
	return 1;
}
CMD:punch(playerid, params[])
{
	ClearAnimations(playerid);
	LoopingAnim(playerid,"MD_CHASE","MD_BIKE_Punch",4.0,0,1,1,1,0);
	return 1;
}
CMD:greet1(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"WUZI","Wuzi_Greet_Plyr",4.0,0,1,1,1,0);
	return 1;
}
CMD:greet2(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"WUZI","Wuzi_Greet_Wuzi",4.0,0,1,1,1,0);
	return 1;
}
CMD:argue(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PAULNMAC","PnM_Argue1_A",4.0,0,1,1,1,0);
	return 1;
}
CMD:sleep(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"INT_HOUSE","BED_In_L",4.0,0,1,1,1,0);
	return 1;
}
CMD:lean2(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"RYDER","Van_Lean_L",4.0,0,1,1,1,0);
	return 1;
}

CMD:gsign1(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"GHANDS","gsign1",4.0,0,1,1,1,0);
	return 1;
}
CMD:gsign2(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"GHANDS","gsign1LH",4.0,0,1,1,1,0);
	return 1;
}
CMD:gsign3(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"GHANDS","gsign2",4.0,0,1,1,1,0);
	return 1;
}
CMD:gsign4(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"GHANDS","gsign2LH",4.0,0,1,1,1,0);
	return 1;
}
CMD:gsign5(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"GHANDS","gsign3",4.0,0,1,1,1,0);
    return 1;
}
CMD:gsign6(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"GHANDS","gsign3LH",4.0,0,1,1,1,0);
	return 1;
}
CMD:gsign7(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"GHANDS","gsign4",4.0,0,1,1,1,0);
	return 1;
}



CMD:carjacked1(playerid, params[])
{
    ClearAnimations(playerid);
	ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","CAR_jackedLHS",4.0,0,1,1,1,0);
    return 1;
}



CMD:carjacked2(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","CAR_jackedRHS",4.0,0,1,1,1,0);
 	return 1;
}



CMD:handsup(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid, "ROB_BANK","SHP_HandsUp_Scr", 4.0, 0, 1, 1, 1, 0);
	return 1;
}



CMD:cellin(playerid, params[])
{
    ClearAnimations(playerid);
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USECELLPHONE);
	return 1;
}



CMD:cellout(playerid, params[])
{
    ClearAnimations(playerid);
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_STOPUSECELLPHONE);
 	return 1;
}



CMD:drunk(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid, "PED", "WALK_DRUNK", 4.1, 1, 1, 1, 1, 1);
	return 1;
}



CMD:bombplant(playerid, params[])
{
	ClearAnimations(playerid);
	LoopingAnim(playerid, "BOMBER", "BOM_Plant_Loop", 4.0, 1, 0, 0, 1, 0); // Place Bomb
	return 1;
}


CMD:getarrested(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"ped", "ARRESTgun", 4.0, 0, 1, 1, 1, -1); // Gun Arrest
	return 1;
}


CMD:laugh(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid, "RAPPING", "Laugh_01", 4.0, 0, 0, 0, 0, 0); // Laugh
 	return 1;
}


CMD:lookout(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid, "SHOP", "ROB_Shifty", 4.0, 0, 0, 0, 0, 0); // Rob Lookout
	return 1;
}


CMD:robman(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid, "SHOP", "ROB_Loop_Threat", 4.0, 1, 0, 0, 0, 0); // Rob
	return 1;
}


CMD:crossarms(playerid, params[])
{
	ClearAnimations(playerid);
	LoopingAnim(playerid, "COP_AMBIENT", "Coplook_loop", 4.0, 0, 1, 1, 1, -1); // Arms crossed
	return 1;
}


CMD:lay(playerid, params[])
{
	ClearAnimations(playerid);
	LoopingAnim(playerid,"BEACH", "bather", 4.0, 1, 0, 0, 0, 0); // Lay down
	return 1;
}


CMD:hide(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid, "ped", "cower", 3.0, 1, 0, 0, 0, 0); // Taking Cover
	return 1;
}


CMD:vomit(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0); // Vomit BAH!
	return 1;
}


CMD:eat(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid, "FOOD", "EAT_Burger", 3.0, 0, 0, 0, 0, 0); // Eat Burger
	return 1;
}




CMD:slapass(playerid, params[])
{
	ClearAnimations(playerid);
	OnePlayAnim(playerid, "SWEET", "sweet_ass_slap", 4.0, 0, 0, 0, 0, 0); // Ass Slapping
	return 1;
}


CMD:deal(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid, "DEALER", "DEALER_DEAL", 4.0, 0, 0, 0, 0, 0); // Deal Drugs
	return 1;
}



CMD:crack(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid, "CRACK", "crckdeth2", 4.0, 1, 0, 0, 0, 0); // Dieing of Crack
	return 1;
}

		// Sit
CMD:sit(playerid, params[])
{
	ClearAnimations(playerid);
	LoopingAnim(playerid,"BEACH", "ParkSit_M_loop", 4.0, 1, 0, 0, 0, 0); // Sit
	return 1;
}
	    // Idle Chat
CMD:chat(playerid, params[])
{
    ClearAnimations(playerid);
	ApplyAnimation(playerid,"PED","IDLE_CHAT",4.1,1,1,1,1,1,1);
    return 1;
}
	    // Idle Chat2
CMD:chat2(playerid, params[])
{
	ClearAnimations(playerid);
	LoopingAnim(playerid, "MISC", "Idle_Chat_02",4.0,1,0,0,1,1);
	return 1;
}
	    // Fucku
CMD:fuckyou(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid, "PED", "fucku",4.0,0,0,0,0,0);
	return 1;
}
	    // TaiChi
CMD:taichi(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PARK","Tai_Chi_Loop",4.1,1,1,1,1,1);
	return 1;
}

	    // ChairSit

	    // Fall on the ground
CMD:flip(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","KO_skid_front",4.1,0,1,1,1,0);
	return 1;
}


CMD:camera1(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"CAMERA","camstnd_to_camcrch",4.1,0,1,1,1,0);
	return 1;
}

CMD:seat(playerid, params[])
{
	ApplyAnimation(playerid, "INT_OFFICE", "OFF_Sit_Idle_Loop", 4.1, 0, 0, 0, 1, 0, 0);
	return 1;
}

LEANCMD:(sits1)
{

    ApplyAnimation(playerid, "TATTOOS", "TAT_Sit_In_O", 4.1, 0, 0, 0, 1, 0, 0);
	return 1;
}

CMD:caranim(playerid, params[])
{
	if(!IsPlayerInAnyVehicle(playerid)) return 1;
	LoopingAnim(playerid,"LOWRIDER","Sit_relaxed",4.1,0,1,1,1,0);
	return 1;
}


CMD:oldwalk(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","WALK_fatold",4.1,1,1,1,1,1);
	return 1;
}

	    // Fall
CMD:frontfall(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid, "PED","FLOOR_hit_f", 4.1,0,1,1,1,0);
	return 1;
}

	    // kiss
CMD:kiss(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid, "KISSING", "Playa_Kiss_02", 3.0, 1, 1, 1, 1, 0);
	return 1;
}

	    // Injujred
CMD:injured(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid, "SWEET", "Sweet_injuredloop", 4.0, 1, 0, 0, 0, 0);
	return 1;
}


	    // Violence animations
CMD:push(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"GANGS","shake_cara",4.0,0,0,0,0,0);
	return 1;
}

CMD:akick(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"POLICE","Door_Kick",4.0,0,0,0,0,0);
	return 1;
}

CMD:lowbodypush(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"GANGS","shake_carSH",4.0,0,0,0,0,0);
	return 1;
}

	    // Spray
CMD:spray(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"SPRAYCAN","spraycan_full",4.0,0,0,0,0,0);
	return 1;
}

	    // Headbutt
CMD:headbutt(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"WAYFARER","WF_Fwd",4.0,0,0,0,0,0);
	return 1;
}

	    // Medic
CMD:medic(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"MEDIC","CPR",4.0,0,0,0,0,0);
	return 1;
}

	    // KO Face
CMD:koface(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","KO_shot_face",4.0,0,1,1,1,0);
	return 1;
}

	    // KO Stomach
CMD:kostomach(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","KO_shot_stom",4.0,0,1,1,1,0);
	return 1;
}

	    // Jump for your life!
CMD:lifejump(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","EV_dive",4.0,0,1,1,1,0);
    return 1;
}

	    // Exhausted
CMD:exhaust(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","IDLE_tired",3.0,1,0,0,0,0);
    return 1;
}

	    // Left big slap
CMD:leftslap(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"PED","BIKE_elbowL",4.0,0,0,0,0,0);
	return 1;
}

	    // Big fall
CMD:rollfall(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"PED","BIKE_fallR",4.0,0,1,1,1,0);
	return 1;
}

	    // Locked
CMD:carlock(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"PED","CAR_doorlocked_LHS",4.0,0,0,0,0,0);
	return 1;
}

	    // carjack
CMD:rcarjack1(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"PED","CAR_pulloutL_LHS",4.0,0,0,0,0,0);
	return 1;
}

	    // carjack
CMD:lcarjack1(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"PED","CAR_pulloutL_RHS",4.0,0,0,0,0,0);
	return 1;
}

	    // carjack
CMD:rcarjack2(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"PED","CAR_pullout_LHS",4.0,0,0,0,0,0);
	return 1;
}

	    // carjack
CMD:lcarjack2(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"PED","CAR_pullout_RHS",4.0,0,0,0,0,0);
	return 1;
}

	    // Hood frisked
CMD:hoodfrisked(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"POLICE","crm_drgbst_01",4.0,0,1,1,1,0);
	return 1;
}

	    // Lighting cigarette
CMD:lightcig(playerid, params[])
{
	ClearAnimations(playerid);
	OnePlayAnim(playerid,"SMOKING","M_smk_in",3.0,0,0,0,0,0);
	return 1;
}

	    // Tap cigarette
CMD:tapcig(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"SMOKING","M_smk_tap",3.0,0,0,0,0,0);
	return 1;
}

	    // Bat stance
CMD:bat(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"BASEBALL","Bat_IDLE",4.0,1,1,1,1,0);
	return 1;
}

	    // Boxing
CMD:box(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"GYMNASIUM","GYMshadowbox",4.0,1,1,1,1,0);
	return 1;
}

	    // Lay 2
CMD:lay2(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"SUNBATHE","Lay_Bac_in",3.0,0,1,1,1,0);
	return 1;
}



CMD:chant(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"RIOT","RIOT_CHANT",4.0,1,1,1,1,0);
	return 1;
}



CMD:fucku(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"RIOT","RIOT_FUKU",2.0,0,0,0,0,0);
	return 1;
}



CMD:shouting(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"RIOT","RIOT_shout",4.0,1,0,0,0,0);
	return 1;
}



CMD:cop(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"SWORD","sword_block",50.0,0,1,1,1,1);
	return 1;
}



CMD:elbow(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"FIGHT_D","FightD_3",4.0,0,1,1,0,0);
	return 1;
}


CMD:kneekick(playerid, params[])
{
    ClearAnimations(playerid);
	OnePlayAnim(playerid,"FIGHT_D","FightD_2",4.0,0,1,1,0,0);
	return 1;
}



CMD:fstance(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"FIGHT_D","FightD_IDLE",4.0,1,1,1,1,0);
	return 1;
}

CMD:dealerstance(playerid, params[])
{
    ClearAnimations(playerid);
	LoopingAnim(playerid,"ped","Idle_Gang1",4.1,1,0,1,1,0);
	return 1;
}









LEANCMD:(getv)
{
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	new id;
	if(sscanf(params, "i", id)) return SCM(playerid, COLOR_YELLOW, "USAGE: /getv [vehicleid]");
	GetPlayerPosData(playerid);
	SetVehiclePos(id, GFFP[playerid][0], GFFP[playerid][1], GFFP[playerid][2]);
	SetVehicleZAngle(id, GFFP[playerid][3]);
	LinkVehicleToInterior(id, GIFP[playerid][0]);
	SetVehicleVirtualWorld(id, GIFP[playerid][1]);
	return 1;
}

LEANCMD:(doorhelp)
{
    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	SCM(playerid,COLOR_YELLOW,"3DTextLabels : /3dlabel [ edit dynamic 3dtext label ] | /3dnext [ find next 3d ID Available ] | /3dclose [ nearest labels ]");
	SCM(playerid,COLOR_YELLOW,"Doors : /door [ edit a door ] | /dnext [ next door ID available ] | /dname [ edit doors name ] | /dgoto [ goto specefic door ]");
	return 1;
}


stock GetPName(playerid)
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName(playerid,name,sizeof(name));
	return name;
}
stock GetPlayerPosData(playerid)
{
	GetPlayerPos(playerid,GFFP[playerid][0],GFFP[playerid][1],GFFP[playerid][2]);
	GetPlayerFacingAngle(playerid,GFFP[playerid][3]);
	GIFP[playerid][0] = GetPlayerInterior(playerid);
	GIFP[playerid][1] = GetPlayerVirtualWorld(playerid);
	return 1;
}

LEANCMD:(setpos)
{
	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	new
		Float:p1,
		Float:p2,
		Float:p3,
		interiors;
	if(sscanf(params,"fffi",p1,p2,p3,interiors)) return SCM(playerid,COLOR_GREY,"USAGE: /setpos [X] [Y] [Z] [INTID]");
	SetPlayerInterior(playerid,interiors);
	SetPlayerPosEx(playerid,p1,p2,p3);
	SCM(playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"You have been teleported to designated location.");
	return 1;
}

new aVehicleNames[212][] =
{
	{"Landstalker"},
	{"Bravura"},
	{"Buffalo"},
	{"Linerunner"},
	{"Perrenial"},
	{"Sentinel"},
	{"Dumper"},
	{"Firetruck"},
	{"Trashmaster"},
	{"Stretch"},
	{"Manana"},
	{"Infernus"},
	{"Voodoo"},
	{"Pony"},
	{"Mule"},
	{"Cheetah"},
	{"Ambulance"},
	{"Leviathan"},
	{"Moonbeam"},
	{"Esperanto"},
	{"Taxi"},
	{"Washington"},
	{"Bobcat"},
	{"Mr Whoopee"},
	{"BF Injection"},
	{"Hunter"},
	{"Premier"},
	{"Enforcer"},
	{"Securicar"},
	{"Banshee"},
	{"Predator"},
	{"Bus"},
	{"Rhino"},
	{"Barracks"},
	{"Hotknife"},
	{"Trailer 1"},
	{"Previon"},
	{"Coach"},
	{"Cabbie"},
	{"Stallion"},
	{"Rumpo"},
	{"RC Bandit"},
	{"Romero"},
	{"Packer"},
	{"Monster"},
	{"Admiral"},
	{"Squalo"},
	{"Seasparrow"},
	{"Pizzaboy"},
	{"Tram"},
	{"Trailer 2"},
	{"Turismo"},
	{"Speeder"},
	{"Reefer"},
	{"Tropic"},
	{"Flatbed"},
	{"Yankee"},
	{"Caddy"},
	{"Solair"},
	{"Berkley's RC Van"},
	{"Skimmer"},
	{"PCJ-600"},
	{"Faggio"},
	{"Freeway"},
	{"RC Baron"},
	{"RC Raider"},
	{"Glendale"},
	{"Oceanic"},
	{"Sanchez"},
	{"Sparrow"},
	{"Patriot"},
	{"Quad"},
	{"Coastguard"},
	{"Dinghy"},
	{"Hermes"},
	{"Sabre"},
	{"Rustler"},
	{"ZR-350"},
	{"Walton"},
	{"Regina"},
	{"Comet"},
	{"BMX"},
	{"Burrito"},
	{"Camper"},
	{"Marquis"},
	{"Baggage"},
	{"Dozer"},
	{"Maverick"},
	{"News Chopper"},
	{"Rancher"},
	{"FBI Rancher"},
	{"Virgo"},
	{"Greenwood"},
	{"Jetmax"},
	{"Hotring"},
	{"Sandking"},
	{"Blista Compact"},
	{"Police Maverick"},
	{"Boxville"},
	{"Benson"},
	{"Mesa"},
	{"RC Goblin"},
	{"Hotring Racer A"},
	{"Hotring Racer B"},
	{"Bloodring Banger"},
	{"Rancher"},
	{"Super GT"},
	{"Elegant"},
	{"Journey"},
	{"Bike"},
	{"Mountain Bike"},
	{"Beagle"},
	{"Cropdust"},
	{"Stunt"},
	{"Tanker"},
	{"Roadtrain"},
	{"Nebula"},
	{"Majestic"},
	{"Buccaneer"},
	{"Shamal"},
	{"Hydra"},
	{"FCR-900"},
	{"NRG-500"},
	{"HPV1000"},
	{"Cement Truck"},
	{"Tow Truck"},
	{"Fortune"},
	{"Cadrona"},
	{"FBI Truck"},
	{"Willard"},
	{"Forklift"},
	{"Tractor"},
	{"Combine"},
	{"Feltzer"},
	{"Remington"},
	{"Slamvan"},
	{"Blade"},
	{"Freight"},
	{"Streak"},
	{"Vortex"},
	{"Vincent"},
	{"Bullet"},
	{"Clover"},
	{"Sadler"},
	{"Firetruck LA"},
	{"Hustler"},
	{"Intruder"},
	{"Primo"},
	{"Cargobob"},
	{"Tampa"},
	{"Sunrise"},
	{"Merit"},
	{"Utility"},
	{"Nevada"},
	{"Yosemite"},
	{"Windsor"},
	{"Monster A"},
	{"Monster B"},
	{"Uranus"},
	{"Jester"},
	{"Sultan"},
	{"Stratum"},
	{"Elegy"},
	{"Raindance"},
	{"RC Tiger"},
	{"Flash"},
	{"Tahoma"},
	{"Savanna"},
	{"Bandito"},
	{"Freight Flat"},
	{"Streak Carriage"},
	{"Kart"},
	{"Mower"},
	{"Duneride"},
	{"Sweeper"},
	{"Broadway"},
	{"Tornado"},
	{"AT-400"},
	{"DFT-30"},
	{"Huntley"},
	{"Stafford"},
	{"BF-400"},
	{"Newsvan"},
	{"Tug"},
	{"Trailer 3"},
	{"Emperor"},
	{"Wayfarer"},
	{"Euros"},
	{"Hotdog"},
	{"Club"},
	{"Freight Carriage"},
	{"Trailer 3"},
	{"Andromada"},
	{"Dodo"},
	{"RC Cam"},
	{"Launch"},
	{"Police Car (LSPD)"},
	{"Police Car (SFPD)"},
	{"Police Car (LVPD)"},
	{"Police Ranger"},
	{"Picador"},
	{"S.W.A.T. Van"},
	{"Alpha"},
	{"Phoenix"},
	{"Glendale"},
	{"Sadler"},
	{"Luggage Trailer A"},
	{"Luggage Trailer B"},
	{"Stair Trailer"},
	{"Boxville"},
	{"Farm Plow"},
	{"Utility Trailer"}
};

GetVehicleModelIDFromName(vname[])
{
	for(new i = 0; i < 211; i++)
	{
		if(strfind(aVehicleNames[i], vname, true) != -1)
		return i + 400;
	}
	return -1;
}

GetXYInFrontOfPlayer(playerid, &Float:x, &Float:y, Float:distance)
{
	new Float:a;
	GetPlayerPos(playerid, x, y, a);
	GetPlayerFacingAngle(playerid, a);
	if (GetPlayerVehicleID(playerid))
	{
	    GetVehicleZAngle(GetPlayerVehicleID(playerid), a);
	}
	x += (distance * floatsin(-a, degrees));
	y += (distance * floatcos(-a, degrees));
}


stock Surname(playerid)
{
	new FullName[MAX_PLAYER_NAME], FirstName[MAX_PLAYER_NAME], LastName[MAX_PLAYER_NAME];
    GetPlayerName(playerid, FullName, sizeof(FullName));
    strmid(FirstName, FullName, 0, strfind(FullName, "_"));
    strmid(LastName, FullName, strfind(FullName, "_")+1, strlen(FullName));
    return LastName;
}




LEANCMD:(despawnmycar)
{
	if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You have to be in a vehicle to use this command.");
	new veh = GetPlayerVehicleID(playerid);
	if(isvehspawner[veh] == PlayerInfo[playerid][userid])
	{
		DestroyVehicle(veh);
		SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Your vehicle has been destroyed.");
		isvehspawner[veh] = INVALID_PLAYER_ID;
	}
	else return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You have to be in your own vehicle.");
	return 1;
}

stock CorrectVehicle(model)
{
	switch (model)
	{
	    case 425,432,520,592,577,447,564,522,464:
	    {
			return 1;
		}
	}
	return 0;
}



LEANCMD:(vx)
	{

		new String[ 128 ];
		new tmp[128];
		new Float:Angle;
		new Float:x, Float:y, Float:z;
		if(sscanf(params,"s[128]",tmp)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vx [Vehicle Name]");

		new vehicle = GetVehicleModelIDFromName(tmp);

		if(vehicle < 400 || vehicle > 611) return SendClientMessage(playerid, Grey, "That vehicle name was not found");

		new Float:a;
		GetPlayerFacingAngle(playerid, a);
		GetPlayerPos(playerid, x, y, z);


		if(IsPlayerInAnyVehicle(playerid))
		{
			SendClientMessage(playerid, COLOR_LIGHTRED, "WARNING: "COL_WHITE"You cant use this while being inside a car. /cc");
			return 1;
		}
		else
		{
			#if defined TRAINING_SASD
			new vehs = CorrectVehicle(vehicle);
			if(vehs && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid,COLOR_LIGHTRED, "ERROR: "COL_WHITE"This vehicle is restricted.");
			#endif
		    GetPlayerFacingAngle(playerid,Angle);
			new lastname[16];
			format(lastname,sizeof(lastname),"%s",Surname(playerid));
			GetXYInFrontOfPlayer(playerid, x, y, 5);
        	PutPlayerInVehicle(playerid, CreateVehicle(vehicle, x, y, z, Angle, 0, 1, -1), VEH_RESPAWN_TIME);
        	new veh = GetPlayerVehicleID(playerid);
        	SetVehicleNumberPlate(veh, lastname);
        	SetVehicleToRespawn(veh);
      		DestroyObject(SirenObject[veh]);
        	Siren[veh] = false;
        	PutPlayerInVehicle(playerid,veh,0);
	    	format(String, sizeof(String), "CMD: %s has spawned a %s (VehID: %d).",GetName(playerid), aVehicleNames[vehicle - 400],veh);
	    	if(PlayerInfo[playerid][pAdmin] > 0)
	    	{
				SendAdminMessage(COLOR_DUTY, String);
			}
			else
			{
			    SendClientMessageToAll(COLOR_DUTY, String);
			}
			SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Use "COL_LIGHTRED"/despawnmycar(dsm) "COL_WHITE"when you're done with the vehicle.");
  			isvehspawner[veh] = PlayerInfo[playerid][userid];
			LinkVehicleToInterior(veh, GetPlayerInterior(playerid));
			SetVehicleVirtualWorld(veh, GetPlayerVirtualWorld(playerid));
			return 1;
		}
	}


LEANCMD:(cc)
{
		new String[ 128 ];
		new tmp[ 128 ];
		new Float:x, Float:y, Float:z;
		new currentveh;

		if(sscanf(params,"s[128]",tmp)) return SendClientMessage(playerid, Grey, "USAGE: /cc [CARNAME]");

		new vehicle = GetVehicleModelIDFromName(tmp);

		if(vehicle < 400 || vehicle > 611) return SendClientMessage(playerid, Grey, "That vehicle name was not found");

		new Float:a;
		GetPlayerPos(playerid, x, y, z);

		if(IsPlayerInAnyVehicle(playerid) == 1)
		{
		    if(GetPlayerState(playerid) == PLAYER_STATE_PASSENGER && PlayerInfo[playerid][pAdmin] == 0) return SCM(playerid,COLOR_LIGHTRED,"	Drivers only.");
		    currentveh = GetPlayerVehicleID(playerid);
			GetVehicleZAngle(currentveh, a);
			new car = VehicleIDX(currentveh);
			if(car != INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED,"[ ! ] "COL_WHITE"This is a server side vehicle.");
		}
		else
		{
		    GetPlayerFacingAngle(playerid, a);
		}
		new car = VehicleIDX(vehicle);
		if(car != INVALID_VEHICLE_ID) return SCM(playerid, COLOR_LIGHTRED,"[ ! ] "COL_WHITE"This is a server side vehicle.");
		#if defined TRAINING_SASD
		new vehs = CorrectVehicle(vehicle);
		if(vehs && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid,COLOR_LIGHTRED, "ERROR: "COL_WHITE"This vehicle is restricted.");
		#endif
		new lastname[16];
		DestroyVehicle(GetPlayerVehicleID(playerid));
		format(lastname,sizeof(lastname),"%s",Surname(playerid));
		SetVehicleNumberPlate(vehicle, lastname);
   		PutPlayerInVehicle(playerid, CreateVehicle(vehicle, x, y, z, a, 0, 1, -1), VEH_RESPAWN_TIME);
   		new veh = GetPlayerVehicleID(playerid);
   		SetVehicleNumberPlate(veh, lastname);
    	SetVehicleToRespawn(veh);
		DestroyObject(SirenObject[veh]);
 		Siren[veh] = false;
    	PutPlayerInVehicle(playerid,veh,0);
		format(String, sizeof(String), "CMD: %s has spawned a %s (VehID: %d).",GetName(playerid), aVehicleNames[vehicle - 400],veh);
 		if(PlayerInfo[playerid][pAdmin] > 0)
  		{
				SendAdminMessage(COLOR_DUTY, String);
		}
		else
		{
			    SendClientMessageToAll(COLOR_DUTY, String);
		}
		SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE"Use "COL_LIGHTRED"/despawnmycar(dsm) "COL_WHITE"when you're done with the vehicle.");
		isvehspawner[veh] = PlayerInfo[playerid][userid];
		LinkVehicleToInterior(veh, GetPlayerInterior(playerid));
		SetVehicleVirtualWorld(veh, GetPlayerVirtualWorld(playerid));
		return 1;
}

LEANCMD:(vlights)
{
		if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You need to be in a vehicle.");
		new
  		engine,
		lights,
		alarm,
		doors,
		bonnet,
		boot,
		objective,
		vehicleid = GetPlayerVehicleID(playerid);
 		GetVehicleParamsEx(vehicleid,engine,lights,alarm,doors,bonnet,boot,objective);
 		
		if (strcmp("on", params, true, 2) == 0)
		{
            SetVehicleParamsEx(vehicleid,engine,true,alarm,doors,bonnet,boot,objective);
            SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"Vehicle lights turned on.");
            return 1;
		}
		if (strcmp("off", params, true, 3) == 0)
		{
		    SetVehicleParamsEx(vehicleid,engine,false,alarm,doors,bonnet,boot,objective);
		    SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"Vehicle lights turned off.");
			return 1;
		}
		else
		{
			SCM(playerid,COLOR_LIGHTRED,"USAGE: /lights [ON/OFF]");
		}
		return 1;
}

LEANCMD:(v)
{
		new String[ 67 ];
		new tmp[128];
		new Float:x, Float:y, Float:z;
		if(PlayerInfo[playerid][pAdmin] == 0 && PlayerInfo[playerid][GroupID] != 5 && PlayerInfo[playerid][GroupID] != 4) return ADMIN_UNAUTHORIZED
		if(sscanf(params,"s[128]",tmp)) return SendClientMessage(playerid, Grey, "USAGE: /v [CARNAME]");

		new vehicle = GetVehicleModelIDFromName(tmp);

		if(vehicle < 400 || vehicle > 611) return SendClientMessage(playerid, Grey, "That vehicle name was not found");

		#if defined TRAINING_SASD
		new vehs = CorrectVehicle(vehicle);
		if(vehs && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid,COLOR_LIGHTRED, "ERROR: "COL_WHITE"This vehicle is restricted.");
		#endif
		new Float:a;
		GetPlayerFacingAngle(playerid, a);
		GetPlayerPos(playerid, x, y, z);
		new lastname[16];
		format(lastname,sizeof(lastname),"%s",Surname(playerid));
        SetVehicleNumberPlate(CreateVehicle(vehicle, x, y+1, z, a, 0, 1, VEH_RESPAWN_TIME), lastname);
		format(String, sizeof(String), "AdmCmd: %s has spawned a %s (Model ID: %d)",GetName(playerid), aVehicleNames[vehicle - 400],vehicle);
		SendAdminMessage(COLOR_DUTY, String);
		return 1;
}

LEANCMD:(vid)
{
	new
		model,
		color1,
		color2;
	if(sscanf(params,"ddd",model, color1,color2)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /vid [Model-id] [Color1] [Color2]");
	
	if(model < 400 || model > 611) return SendClientMessage(playerid, Grey, "That vehicle name was not found");
	
	new
		Float:X,
		Float:Y,
		Float:Z,
		Float:a,
		lastname[16],
		string[67];
		
	GetPlayerFacingAngle(playerid, a);
	GetPlayerPos(playerid, X, Y, Z);
	
	format(lastname, sizeof(lastname),"%s",Surname(playerid));
	
	SetVehicleNumberPlate(CreateVehicle(model, X, Y+1, Z, a, color1, color2, VEH_RESPAWN_TIME), lastname);
	
	format(string, sizeof(string), "AdmCmd: %s has spawned a %s (Model ID: %d)",GetName(playerid), aVehicleNames[model - 400], model);
	SendAdminMessage(COLOR_DUTY, string);
	
	return 1;
}
	
	
	
	
	
	
	
	


/* CELL PHONE SYS */


LEANCMD:(call)
{
	new id;
	if(sscanf(params, "d", id)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /call [playerid]");

	if(playerid == id) return SCM(playerid, COLOR_GREY, " You cannot call yourself.");
	if(id == INVALID_PLAYER_ID) return SCM(playerid, COLOR_LIGHTRED, "Playerid is not an active playerid");
	if(E_OnPhone[playerid] == PLAYER_TALKING) return SCM(playerid, COLOR_LIGHTRED, "You are already calling someone..");
 	if(E_Talking[playerid] == PLAYER_ON_PHONE) return SCM(playerid, COLOR_LIGHTRED, "You are already talking to someone..");
 	if(E_PhoneOn[playerid] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_GREY, " Your phone is off..");

	if(id == 911)
	{
	    E_OnPhone[playerid] = PLAYER_TALKING;
		ison911c[playerid] = true;
		clocation[playerid] = true;
		SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USECELLPHONE);
		E_BeingCalled[playerid] = PLAYER_BEING_CALLED;
		SCM(playerid, COLOR_LIGHTBLUE, "DISPATCH: Hello, what is your current location?");
		return 1;
	}

	if(E_PhoneOn[id] == PLAYER_PHONE_OFF || E_PhoneOn[playerid] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_LIGHTRED, "Cellphone is turned off.");

	if(E_OnPhone[id] == PLAYER_TALKING || E_Talking[id] == PLAYER_ON_PHONE) return SCM(playerid, COLOR_GREY, " ..You get a busy tone...");

	if(AdminDuty[id] == true) return SCM(playerid, COLOR_LIGHTRED, "You cant call players on admin duty.");
	


	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USECELLPHONE);
	E_OnPhone[playerid] = PLAYER_TALKING;
	E_BeingCalled[id] = PLAYER_BEING_CALLED;
	E_TalkingTo[playerid] = id;
	E_TalkingTo[id] = playerid;

	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	PlayerPlaySound(playerid, 3600, X, Y, Z);

	new string[128];
	format(string, sizeof(string),"Your Mobile is ringing Type (/pickup), caller: %d (%s)",playerid, GetName(playerid));
	SCM(id, COLOR_YELLOW, string);

	format(string, sizeof(string),"* %s takes out a cellpohone.",GetICName(playerid));
	ProxDetector(15.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);

	format(string, sizeof(string),"* %s's phone begins to ring.",GetICName(id));
	ProxDetector(15.0, id, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);


    E_PhoneTimer[id] = SetTimerEx( "RingPlayer", 3000, true, "i", id );

	return 1;
}

LEANCMD:(sms)
{
    if(E_PhoneOn[playerid] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_LIGHTRED, "Your phone is off.");

	new id;
	if(sscanf(params, "us[128]", id, params)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /sms [playerid] [Text]");

    if(playerid == id) return SCM(playerid, COLOR_GREY, " You cannot sms yourself.");

	if(id == INVALID_PLAYER_ID) return SCM(playerid, COLOR_LIGHTRED, "Playerid is not an active playerid");

    if(AdminDuty[id] == true) return SCM(playerid, COLOR_LIGHTRED, "You cant sms players on admin duty.");

	if(E_PhoneOn[id] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_LIGHTRED, "SMS failed to deliver. (Phone off)");

	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(id, X, Y, Z);
	PlayerPlaySound(id, 1052, X, Y, Z);

	new string[128];
	SCM(playerid, COLOR_WHITE, "Text Message Delivered");

	format(string, sizeof(string),"SMS: %s, Sender: %s (%d)", params, GetICName(playerid), playerid);
	SCM(id, COLOR_YELLOW, string);

	format(string, sizeof(string),"* %s takes out a cellphone.",GetICName(id));
	ProxDetector(15.0, id, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);

	return 1;
}


LEANCMD:(pickup)
{
	if(E_BeingCalled[playerid] == PLAYER_NOT_BEING_CALLED || E_Talking[playerid] == PLAYER_ON_PHONE) return SCM(playerid, COLOR_LIGHTRED, "You are not being called..");
	
	KillTimer(E_PhoneTimer[playerid]);

	SCM(E_TalkingTo[playerid], COLOR_WHITE, "[ ! ] They picked up the call, use the chatbox to talk!");
	SCM(playerid, COLOR_WHITE, "[ ! ] Use the chatbox to talk!");

	E_Talking[E_TalkingTo[playerid]] = PLAYER_ON_PHONE;
	E_Talking[playerid] = PLAYER_ON_PHONE;
	E_OnPhone[E_TalkingTo[playerid]] = PLAYER_TALKING;

	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USECELLPHONE);

	return 1;
}

LEANCMD:(hangup)
{
	if(E_BeingCalled[playerid] == PLAYER_NOT_BEING_CALLED && E_OnPhone[playerid] == PLAYER_NOT_TALKING) return SCM(playerid, COLOR_LIGHTRED, "Nothing to hangup on...");

	if(E_TalkingTo[playerid] != INVALID_PLAYER_ID)
	{
    	ClearPhonePvars(E_TalkingTo[playerid]);
    	SCM(E_TalkingTo[playerid], COLOR_GREY, "They hung up.");
	}
	SCM(playerid, COLOR_GREY, "You hung up.");

    ClearPhonePvars(playerid);

	return 1;
}

LEANCMD:(turn_off)
{
	if(E_PhoneOn[playerid] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_LIGHTRED, "Your phone is already off, /turn_on to turn the phone on..");

	new string[96];
	format(string, sizeof(string),"* %s turns their phone off.",GetICName(playerid));
	ProxDetector(15, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
	E_PhoneOn[playerid] = PLAYER_PHONE_OFF;
	return 1;
}

LEANCMD:(turn_on)
{
	if(E_PhoneOn[playerid] == PLAYER_PHONE_ON) return SCM(playerid, COLOR_LIGHTRED, "Your phone is already on, /turn_off to turn the phone off..");

	new string[96];
	format(string, sizeof(string),"* %s turns their cellphone on.",GetICName(playerid));
	ProxDetector(15.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
	E_PhoneOn[playerid] = PLAYER_PHONE_ON;
	return 1;
}

LEANCMD:(loudspeaker)
{
    if(E_PhoneLoudSpeaker[playerid] == PLAYER_LOUDSPEAKER_ON)
    {
	   	new string[96];
		format(string, sizeof(string),"* %s turns their cellphones loudspeaker off.",GetICName(playerid));
		ProxDetector(15.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
		E_PhoneLoudSpeaker[playerid] = PLAYER_LOUDSPEAKER_OFF;
		return 1;
    }
    if(E_PhoneLoudSpeaker[playerid] == PLAYER_LOUDSPEAKER_OFF)
    {
	   	new string[96];
		format(string, sizeof(string),"* %s turns their cellphones loudspeaker on.",GetICName(playerid));
		ProxDetector(15.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
		E_PhoneLoudSpeaker[playerid] = PLAYER_LOUDSPEAKER_ON;
		return 1;
    }
    return 1;
}

LEANCMD:(c)
{
	return cmd_call(playerid, params);
}


LEANCMD:(p)
{
	return cmd_pickup(playerid, params);
}

LEANCMD:(h)
{
	return cmd_hangup(playerid, params);
}


/* Forwards */

forward OnPhoneDisconnect(playerid);
forward RingPlayer(playerid);




/* Callbacks */

public RingPlayer(playerid)
{
	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(playerid, X, Y, Z);

    PlayerPlaySound(playerid, RING_TONE, X, Y, Z);
    SCM(playerid, COLOR_GRAD5, "Your phone is ringing, /pickup to answer");
}

/* Stocks */

stock ClearPhonePvars(playerid)
{


	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_STOPUSECELLPHONE);

	E_OnPhone[playerid] = PLAYER_NOT_TALKING;
	E_BeingCalled[playerid] = PLAYER_NOT_BEING_CALLED;
	E_Talking[playerid] = PLAYER_OFF_PHONE;
	E_TalkingTo[playerid] = INVALID_PLAYER_ID;
	E_PhoneOn[playerid] = PLAYER_PHONE_ON;

	ison911c[playerid] = false;
	clocation[playerid] = false;
	csituation[playerid] = false;
	
	KillTimer(E_PhoneTimer[playerid]);
	
	return 1;
}


public OnPhoneDisconnect(playerid)
{
    ClearPhonePvars(playerid);
    ClearPhonePvars(E_TalkingTo[playerid]);
    if(E_OnPhone[playerid] == PLAYER_TALKING || E_Talking[playerid] == PLAYER_ON_PHONE)
    {
        if(E_TalkingTo[playerid] != INVALID_PLAYER_ID)
        {
			SCM(E_TalkingTo[playerid], COLOR_GREY, "The other line died...");
		}
    }

}






#define TOTAL_ITEMS         130
#define SELECTION_ITEMS 	21
#define ITEMS_PER_LINE  	7

#define HEADER_TEXT "Skins"
#define NEXT_TEXT   "Next"
#define PREV_TEXT   "Prev"

#define DIALOG_BASE_X   	75.0
#define DIALOG_BASE_Y   	130.0
#define DIALOG_WIDTH    	550.0
#define DIALOG_HEIGHT   	180.0
#define SPRITE_DIM_X    	60.0
#define SPRITE_DIM_Y    	70.0

new gTotalItems = TOTAL_ITEMS;
new PlayerText:gCurrentPageTextDrawId[MAX_PLAYERS];
new PlayerText:gHeaderTextDrawId[MAX_PLAYERS];
new PlayerText:gBackgroundTextDrawId[MAX_PLAYERS];
new PlayerText:gNextButtonTextDrawId[MAX_PLAYERS];
new PlayerText:gPrevButtonTextDrawId[MAX_PLAYERS];
new PlayerText:gSelectionItems[MAX_PLAYERS][SELECTION_ITEMS];
new gSelectionItemsTag[MAX_PLAYERS][SELECTION_ITEMS];
new gItemAt[MAX_PLAYERS];

new gItemList[TOTAL_ITEMS] = {
1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,
50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,
97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131
};


//------------------------------------------------

GetNumberOfPages()
{
	if((gTotalItems >= SELECTION_ITEMS) && (gTotalItems % SELECTION_ITEMS) == 0)
	{
		return (gTotalItems / SELECTION_ITEMS);
	}
	else return (gTotalItems / SELECTION_ITEMS) + 1;
}

//------------------------------------------------

PlayerText:CreateCurrentPageTextDraw(playerid, Float:Xpos, Float:Ypos)
{
	new PlayerText:txtInit;
   	txtInit = CreatePlayerTextDraw(playerid, Xpos, Ypos, "0/0");
   	PlayerTextDrawUseBox(playerid, txtInit, 0);
	PlayerTextDrawLetterSize(playerid, txtInit, 0.4, 1.1);
	PlayerTextDrawFont(playerid, txtInit, 1);
	PlayerTextDrawSetShadow(playerid, txtInit, 0);
    PlayerTextDrawSetOutline(playerid, txtInit, 1);
    PlayerTextDrawColor(playerid, txtInit, 0xACCBF1FF);
    PlayerTextDrawShow(playerid, txtInit);
    return txtInit;
}

//------------------------------------------------
// Creates a button textdraw and returns the textdraw ID.

PlayerText:CreatePlayerDialogButton(playerid, Float:Xpos, Float:Ypos, Float:Width, Float:Height, button_text[])
{
 	new PlayerText:txtInit;
   	txtInit = CreatePlayerTextDraw(playerid, Xpos, Ypos, button_text);
   	PlayerTextDrawUseBox(playerid, txtInit, 1);
   	PlayerTextDrawBoxColor(playerid, txtInit, 0x000000FF);
   	PlayerTextDrawBackgroundColor(playerid, txtInit, 0x000000FF);
	PlayerTextDrawLetterSize(playerid, txtInit, 0.4, 1.1);
	PlayerTextDrawFont(playerid, txtInit, 1);
	PlayerTextDrawSetShadow(playerid, txtInit, 0); // no shadow
    PlayerTextDrawSetOutline(playerid, txtInit, 0);
    PlayerTextDrawColor(playerid, txtInit, 0x4A5A6BFF);
    PlayerTextDrawSetSelectable(playerid, txtInit, 1);
    PlayerTextDrawAlignment(playerid, txtInit, 2);
    PlayerTextDrawTextSize(playerid, txtInit, Height, Width); // The width and height are reversed for centering.. something the game does <g>
    PlayerTextDrawShow(playerid, txtInit);
    return txtInit;
}

//------------------------------------------------

PlayerText:CreatePlayerHeaderTextDraw(playerid, Float:Xpos, Float:Ypos, header_text[])
{
	new PlayerText:txtInit;
   	txtInit = CreatePlayerTextDraw(playerid, Xpos, Ypos, header_text);
   	PlayerTextDrawUseBox(playerid, txtInit, 0);
	PlayerTextDrawLetterSize(playerid, txtInit, 1.25, 3.0);
	PlayerTextDrawFont(playerid, txtInit, 0);
	PlayerTextDrawSetShadow(playerid, txtInit, 0);
    PlayerTextDrawSetOutline(playerid, txtInit, 1);
    PlayerTextDrawColor(playerid, txtInit, 0xACCBF1FF);
    PlayerTextDrawShow(playerid, txtInit);
    return txtInit;
}

//------------------------------------------------

PlayerText:CreatePlayerBackgroundTextDraw(playerid, Float:Xpos, Float:Ypos, Float:Width, Float:Height)
{
	new PlayerText:txtBackground = CreatePlayerTextDraw(playerid, Xpos, Ypos,
	"                                            ~n~"); // enough space for everyone
    PlayerTextDrawUseBox(playerid, txtBackground, 1);
    PlayerTextDrawBoxColor(playerid, txtBackground, 0x4A5A6BBB);
	PlayerTextDrawLetterSize(playerid, txtBackground, 5.0, 5.0);
	PlayerTextDrawFont(playerid, txtBackground, 0);
	PlayerTextDrawSetShadow(playerid, txtBackground, 0);
    PlayerTextDrawSetOutline(playerid, txtBackground, 0);
    PlayerTextDrawColor(playerid, txtBackground,0x000000FF);
    PlayerTextDrawTextSize(playerid, txtBackground, Width, Height);
   	PlayerTextDrawBackgroundColor(playerid, txtBackground, 0x4A5A6BBB);
    PlayerTextDrawShow(playerid, txtBackground);
    return txtBackground;
}

//------------------------------------------------
// Creates a model preview sprite

PlayerText:CreateModelPreviewTextDraw(playerid, modelindex, Float:Xpos, Float:Ypos, Float:width, Float:height)
{
    new PlayerText:txtPlayerSprite = CreatePlayerTextDraw(playerid, Xpos, Ypos, ""); // it has to be set with SetText later
    PlayerTextDrawFont(playerid, txtPlayerSprite, TEXT_DRAW_FONT_MODEL_PREVIEW);
    PlayerTextDrawColor(playerid, txtPlayerSprite, 0xFFFFFFFF);
    PlayerTextDrawBackgroundColor(playerid, txtPlayerSprite, 0x88888899);
    PlayerTextDrawTextSize(playerid, txtPlayerSprite, width, height); // Text size is the Width:Height
    PlayerTextDrawSetPreviewModel(playerid, txtPlayerSprite, modelindex);
    PlayerTextDrawSetSelectable(playerid, txtPlayerSprite, 1);
    PlayerTextDrawShow(playerid,txtPlayerSprite);
    return txtPlayerSprite;
}

//------------------------------------------------

DestroyPlayerModelPreviews(playerid)
{
	new x=0;
	while(x != SELECTION_ITEMS) {
	    if(gSelectionItems[playerid][x] != PlayerText:INVALID_TEXT_DRAW) {
			PlayerTextDrawDestroy(playerid, gSelectionItems[playerid][x]);
			gSelectionItems[playerid][x] = PlayerText:INVALID_TEXT_DRAW;
		}
		x++;
	}
}

//------------------------------------------------

ShowPlayerModelPreviews(playerid)
{
    new x=0;
	new Float:BaseX = DIALOG_BASE_X;
	new Float:BaseY = DIALOG_BASE_Y - (SPRITE_DIM_Y * 0.33); // down a bit
	new linetracker = 0;

	new itemat = GetPVarInt(playerid, "skinc_page") * SELECTION_ITEMS;

	// Destroy any previous ones created
	DestroyPlayerModelPreviews(playerid);

	while(x != SELECTION_ITEMS && itemat < gTotalItems) {
	    if(linetracker == 0) {
	        BaseX = DIALOG_BASE_X + 25.0; // in a bit from the box
	        BaseY += SPRITE_DIM_Y + 1.0; // move on the Y for the next line
		}
  		gSelectionItems[playerid][x] = CreateModelPreviewTextDraw(playerid, gItemList[itemat], BaseX, BaseY, SPRITE_DIM_X, SPRITE_DIM_Y);
  		gSelectionItemsTag[playerid][x] = gItemList[itemat];
		BaseX += SPRITE_DIM_X + 1.0; // move on the X for the next sprite
		linetracker++;
		if(linetracker == ITEMS_PER_LINE) linetracker = 0;
		itemat++;
		x++;
	}
}

//------------------------------------------------

UpdatePageTextDraw(playerid)
{
	new PageText[64+1];
	format(PageText, 64, "%d/%d", GetPVarInt(playerid,"skinc_page") + 1, GetNumberOfPages());
	PlayerTextDrawSetString(playerid, gCurrentPageTextDrawId[playerid], PageText);
}

//------------------------------------------------

CreateSelectionMenu(playerid)
{
    gBackgroundTextDrawId[playerid] = CreatePlayerBackgroundTextDraw(playerid, DIALOG_BASE_X, DIALOG_BASE_Y + 20.0, DIALOG_WIDTH, DIALOG_HEIGHT);
    gHeaderTextDrawId[playerid] = CreatePlayerHeaderTextDraw(playerid, DIALOG_BASE_X, DIALOG_BASE_Y, HEADER_TEXT);
    gCurrentPageTextDrawId[playerid] = CreateCurrentPageTextDraw(playerid, DIALOG_WIDTH - 30.0, DIALOG_BASE_Y + 15.0);
    gNextButtonTextDrawId[playerid] = CreatePlayerDialogButton(playerid, DIALOG_WIDTH - 30.0, DIALOG_BASE_Y+DIALOG_HEIGHT+100.0, 50.0, 16.0, NEXT_TEXT);
    gPrevButtonTextDrawId[playerid] = CreatePlayerDialogButton(playerid, DIALOG_WIDTH - 90.0, DIALOG_BASE_Y+DIALOG_HEIGHT+100.0, 50.0, 16.0, PREV_TEXT);

    ShowPlayerModelPreviews(playerid);
    UpdatePageTextDraw(playerid);
}

//------------------------------------------------

DestroySelectionMenu(playerid)
{
	DestroyPlayerModelPreviews(playerid);

	PlayerTextDrawDestroy(playerid, gHeaderTextDrawId[playerid]);
	PlayerTextDrawDestroy(playerid, gBackgroundTextDrawId[playerid]);
	PlayerTextDrawDestroy(playerid, gCurrentPageTextDrawId[playerid]);
	PlayerTextDrawDestroy(playerid, gNextButtonTextDrawId[playerid]);
	PlayerTextDrawDestroy(playerid, gPrevButtonTextDrawId[playerid]);

	gHeaderTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
    gBackgroundTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
    gCurrentPageTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
    gNextButtonTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
    gPrevButtonTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
}

//------------------------------------------------

HandlePlayerItemSelection(playerid, selecteditem)
{
	// In this case we change the player's skin
  	if(gSelectionItemsTag[playerid][selecteditem] >= 0 && gSelectionItemsTag[playerid][selecteditem] < 300) {
  	    if(CrimSkinning[playerid] == false)
  	    {
	        SetPlayerSkin(playerid, gSelectionItemsTag[playerid][selecteditem]);
	        new string[126];
	 		format(string, sizeof(string), "Your skin has been set to: {39AACC}%d.",gSelectionItemsTag[playerid][selecteditem]);
	 		PlayerInfo[playerid][pSkin] = gSelectionItemsTag[playerid][selecteditem];
			SendClientMessage(playerid, 0xFFFFFFAA, string);
		}
		else
		{
		        new string[128];
				format(string, sizeof(string), "SERVER: This is now your criminal skin. ID: %i.", gSelectionItemsTag[playerid][selecteditem]);
				SCM(playerid, COLOR_YELLOW, string);
				SetPlayerSkin(playerid, gSelectionItemsTag[playerid][selecteditem]);
				PlayerInfo[playerid][pCrim] = gSelectionItemsTag[playerid][selecteditem];
				CrimSkinning[playerid] = false;
		}
		return;
	}
}

//------------------------------------------------

LoadDraws(playerid)
{
	// Init all of the textdraw related globals
    gHeaderTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
    gBackgroundTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
    gCurrentPageTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
    gNextButtonTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;
    gPrevButtonTextDrawId[playerid] = PlayerText:INVALID_TEXT_DRAW;

    for(new x=0; x < SELECTION_ITEMS; x++) {
        gSelectionItems[playerid][x] = PlayerText:INVALID_TEXT_DRAW;
	}

	gItemAt[playerid] = 0;

	return 1; // Allow other scripts to keep processing OnPlayerConnect
}

//-------------------------------------------
// Even though only Player* textdraws are used in this script,
// OnPlayerClickTextDraw is still required to handle ESC

public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
   	if(GetPVarInt(playerid, "skinc_active") == 0) return 0;

	// Handle: They cancelled (with ESC)
	if(clickedid == Text:INVALID_TEXT_DRAW) {
        DestroySelectionMenu(playerid);
        SetPVarInt(playerid, "skinc_active", 0);
        PlayerPlaySound(playerid, 1085, 0.0, 0.0, 0.0);
        return 1;
	}

	return 0;
}

//------------------------------------------------

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	if(GetPVarInt(playerid, "skinc_active") == 0) return 0;

	new curpage = GetPVarInt(playerid, "skinc_page");

	// Handle: next button
	if(playertextid == gNextButtonTextDrawId[playerid]) {
	    if(curpage < (GetNumberOfPages() - 1)) {
	        SetPVarInt(playerid, "skinc_page", curpage + 1);
	        ShowPlayerModelPreviews(playerid);
         	UpdatePageTextDraw(playerid);
         	PlayerPlaySound(playerid, 1083, 0.0, 0.0, 0.0);
		} else {
		    PlayerPlaySound(playerid, 1085, 0.0, 0.0, 0.0);
		}
		return 1;
	}

	// Handle: previous button
	if(playertextid == gPrevButtonTextDrawId[playerid]) {
	    if(curpage > 0) {
	    	SetPVarInt(playerid, "skinc_page", curpage - 1);
	    	ShowPlayerModelPreviews(playerid);
	    	UpdatePageTextDraw(playerid);
	    	PlayerPlaySound(playerid, 1084, 0.0, 0.0, 0.0);
		} else {
		    PlayerPlaySound(playerid, 1085, 0.0, 0.0, 0.0);
		}
		return 1;
	}

	// Search in the array of textdraws used for the items
	new x=0;
	while(x != SELECTION_ITEMS) {
	    if(playertextid == gSelectionItems[playerid][x]) {
	        HandlePlayerItemSelection(playerid, x);
	        PlayerPlaySound(playerid, 1083, 0.0, 0.0, 0.0);
	        DestroySelectionMenu(playerid);
	        CancelSelectTextDraw(playerid);
        	SetPVarInt(playerid, "skinc_active", 0);
        	return 1;
		}
		x++;
	}

	return 0;
}

//------------------------------------------------
LEANCMD:(skinmenu)
{
    if(PlayerInfo[playerid][Rank] == 1) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE" This command is not available for recruits.");
    if(Duty[playerid] == true) return SCM(playerid,COLOR_LIGHTRED,"[ ! ] "COL_WHITE"This is only available when off duty and for criminals! - Use "COL_LIGHTRED"/uniform");

	// If there was a previously created selection menu, destroy it
	DestroySelectionMenu(playerid);

	SetPVarInt(playerid, "skinc_active", 1);
	//SetPVarInt(playerid, "skinc_page", 0); // will reset the page back to the first

	CreateSelectionMenu(playerid);
	SelectTextDraw(playerid, 0xACCBF1FF);
	
	CrimSkinning[playerid] = false;
	return 1;
}



