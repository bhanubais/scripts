@ECHO OFF

rem Global Variables
rem ----------------------------------
set "corel_path1=%ProgramFiles%\corel\coreldraw graphics suite x8"
set "corel_path2=%homepath%\AppData\Roaming\Corel"

rem Delete all Rules if already exists
rem ----------------------------------
netsh advfirewall firewall show rule name="NUT - Corel License" >nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="NUT - Corel License")
netsh advfirewall firewall show rule name="NUT - CorelDRAW" >nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="NUT - CorelDRAW")
netsh advfirewall firewall show rule name="NUT - CorelConverter" >nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="NUT - CorelConverter")
netsh advfirewall firewall show rule name="NUT - DIM" >nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="NUT - DIM")
netsh advfirewall firewall show rule name="NUT Corel UI Server" >nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="NUT Corel UI Server")
netsh advfirewall firewall show rule name="NUT Corel CUH" >nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="NUT Corel CUH")
netsh advfirewall firewall show rule name="NUT Corel DimChain" >nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="NUT Corel DimChain")
netsh advfirewall firewall show rule name="NUT Corel DIM" >nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="NUT Corel DIM")

rem Prevent Corel Utilities to Connect with server
rem ----------------------------------
netsh advfirewall firewall add rule name="NUT - Corel License" dir=out action=block program="%ProgramFiles% (x86)\Common Files\Protexis\License Service\PsiService_2.exe" profile=any description="%ProgramFiles% (x86)\Common Files\Protexis\License Service\PsiService_2.exe"
netsh advfirewall firewall add rule name="NUT - CorelDRAW" dir=out action=block program="%ProgramFiles%\Corel\CorelDRAW Graphics Suite X8\Programs64\CorelDRW.exe" profile=any description="%ProgramFiles%\Corel\CorelDRAW Graphics Suite X8\Programs64\CorelDRW.exe"
netsh advfirewall firewall add rule name="NUT - CorelConverter" dir=out action=block program="%ProgramFiles%\Corel\CorelDRAW Graphics Suite X8\Programs64\CdrConv.exe" profile=any description="%ProgramFiles%\Corel\CorelDRAW Graphics Suite X8\Programs64\CdrConv.exe"
netsh advfirewall firewall add rule name="NUT - DIM" dir=out action=block program="%ProgramFiles%\Corel\CorelDRAW Graphics Suite X8\Programs64\DIM.exe" profile=any description="%ProgramFiles%\Corel\CorelDRAW Graphics Suite X8\Programs64\DIM.exe"
netsh advfirewall firewall add rule name="NUT Corel UI Server" dir=out action=block program="%ProgramFiles%\Corel\CorelDRAW Graphics Suite X8\Programs64\CrlUISvr.exe" profile=any description="%ProgramFiles%\Corel\CorelDRAW Graphics Suite X8\Programs64\CrlUISvr.exe"
netsh advfirewall firewall add rule name="NUT Corel CUH" dir=out action=block program="%ProgramFiles(x86)%\Corel\CUH\v2\CUH.exe" profile=any description="%ProgramFiles(x86)%\Corel\CUH\v2\CUH.exe"
netsh advfirewall firewall add rule name="NUT Corel DimChain" dir=out action=block program="%ProgramFiles(x86)%\Corel\CUH\v2\dimchain.exe" profile=any description="%ProgramFiles(x86)%\Corel\CUH\v2\dimchain.exe"
netsh advfirewall firewall add rule name="NUT Corel DIM" dir=out action=block program="%ProgramFiles(x86)%\Corel\CUH\v2\DIM.exe" profile=any description="%ProgramFiles(x86)%\Corel\CUH\v2\DIM.exe"


rem Delete Corel Files
rem ----------------------------------
IF EXIST "%corel_path2%" (rd /s /q "%corel_path2%")
IF EXIST "%corel_path1%\photo-paint\hmpcunlr.dll" (del "%corel_path1%\photo-paint\hmpcunlr.dll")
IF EXIST "%corel_path1%\connect64\rmpcunlr.dll" (del "%corel_path1%\connect64\rmpcunlr.dll")
IF EXIST "%corel_path1%\draw\rmpcunlr.dll" (del "%corel_path1%\draw\rmpcunlr.dll")
IF EXIST "%corel_path1%\fontmanager\rmpcunlr.dll" (del "%corel_path1%\fontmanager\rmpcunlr.dll")
IF EXIST "%corel_path1%\capture\rmpcunlr.dll" (del "%corel_path1%\capture\rmpcunlr.dll")

exit
