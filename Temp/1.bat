@ECHO OFF
cd /d "%~dp0"
==================
ECHO TASKKILL ScadaAdmin
taskkill /im ScadaAdmin.exe /F
==================
ECHO BUILDING...
===================
ECHO COMPILE...
dotnet publish ".\DrvTextParserInDatabaseJP.Logic\DrvTextParserInDatabaseJP.Logic.csproj" -c Release -r win-x64 --framework net8.0 --self-contained false --output ./output
dotnet publish ".\DrvTextParserInDatabaseJP.Logic\DrvTextParserInDatabaseJP.Logic.csproj" -c Release -r win-x64 --framework net8.0 --self-contained false --output ".\Release\win-x64\"



PAUSE