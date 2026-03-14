@echo off
REM 
REM création des packs du module CSB INS/MV Compendium
REM
REM le paquet fvtt doit être  installé https://github.com/foundryvtt/foundryvtt-cli
REM
REM /!\ nécessite que l'instance de foundry soit fermée avant de lancer la commande
REM
@echo off
cls
echo * ********************************* *
echo * start create compendiums          *
echo * ********************************* *
echo.
echo /// configure environment
call fvtt package workon csb-insmv-compendium --type=Module
echo.
echo /// pack compendium "pouvoirs"
call fvtt package pack pouvoirs
echo.
echo /// pack compendium "tables aléatoires"
call fvtt package pack rolltables
echo.
echo * ********************************* *
echo * all compendiums have been created *
echo * ********************************* *
echo.
@echo on
