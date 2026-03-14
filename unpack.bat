@echo off
REM 
REM dépaquetage des packs du module CSB INS/MV Compendium
REM le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
REM
REM /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
REM
@echo off
cls
echo * ********************************** *
echo * start unpack compendiums           *
echo * ********************************** *
echo.
echo /// configure environment
call fvtt package workon csb-insmv-compendium --type=Module
echo.
echo /// unpack compendium "pouvoirs"
call fvtt package unpack -c pouvoirs
echo.
echo /// unpack compendium "tables aléatoires"
call fvtt package unpack -c rolltables
echo.
echo * ********************************** *
echo * all compendiums have been unpacked *
echo * ********************************** *
echo.
@echo on
