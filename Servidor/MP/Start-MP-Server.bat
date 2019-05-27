@echo off
title getREKT T5M Multiplayer - Dedicated Server
color 07


:: Server IP
:: Internal IPv4 that the server will use
:: Default: localhost 
set GameIP=localhost


:: Server Port
:: Make sure you Port Forward both UDP and TCP
set GamePort=28960


:: Specify the Server Configuration file (which is in the "main" folder)
set ServerFilename=MP-Server.cfg


:: Directory where you can find the mod
:: Example: mods/ModOps
:: Leave it blank to not load mods
set ModFolderName=


:: Choose your Playlist Gamemode
:: Check the "MP-Server.cfg" for more info
set PlaylistGameMode=1


cls
echo.
echo ///////////////////////////////////////////
echo ////              WARNING              ////
echo ///////////////////////////////////////////
echo.
echo If you want to close your Dedicated Server, you must close this window first and then the server window.
echo.
echo.
:SV
echo (%date%)  -  (%time%) Starting the Dedicated Server...
start /wait t5m.exe +set dedicated 2 +set net_ip "%GameIP%" +set net_port "%GamePort%" +exec %ServerFilename% +set fs_game "%ModFolderName%" +set playlist "%PlaylistGameMode%" +map mp_nuked
echo (%date%)  -  (%time%) WARNING: The server has stopped. Restarting...
goto SV
