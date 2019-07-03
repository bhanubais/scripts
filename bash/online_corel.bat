echo "Corel Kiss v-2.0"

rem Global Variables
rem ---------------------------------------------
set "corel_path-1=%ProgramFiles%\Corel\CorelDRAW Graphics Suite X8"
set "corel_path-2=%homepath%\AppData\Roaming\Corel"
set "corel_path-3=%ProgramFiles%\Common Files\Corel\Shared\Shell Extension"


rem Delete Following Rules if already exists
rem ---------------------------------------------
netsh advfirewall firewall show rule name="XXX - Corel License" >nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - Corel License")
netsh advfirewall firewall show rule name="XXX - WTsptlEN" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - WTsptlEN")
netsh advfirewall firewall show rule name="XXX - Connect" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - Connect")
netsh advfirewall firewall show rule name="XXX - DIM - 1" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - DIM - 1")
netsh advfirewall firewall show rule name="XXX - DIM - 2" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - DIM - 2")
netsh advfirewall firewall show rule name="XXX - CorelPS2PDF" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - CorelPS2PDF")
netsh advfirewall firewall show rule name="XXX - ooxmlConvert" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - ooxmlConvert")
netsh advfirewall firewall show rule name="XXX - ooxmlConvertInstaller" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - ooxmlConvertInstaller")
netsh advfirewall firewall show rule name="XXX - DIM - 3" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - DIM - 3")
netsh advfirewall firewall show rule name="XXX - BarCode" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - BarCode")
netsh advfirewall firewall show rule name="XXX - Cap" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - Cap")
netsh advfirewall firewall show rule name="XXX - Capture" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - Capture")
netsh advfirewall firewall show rule name="XXX - CdrConv" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - CdrConv")
netsh advfirewall firewall show rule name="XXX - CorelDRW" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - CorelDRW")
netsh advfirewall firewall show rule name="XXX - CorelPP" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - CorelPP")
netsh advfirewall firewall show rule name="XXX - CrlUISvr" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - CrlUISvr")
netsh advfirewall firewall show rule name="XXX - DIM - 4" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - DIM - 4")
netsh advfirewall firewall show rule name="XXX - FontManager" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - FontManager")
netsh advfirewall firewall show rule name="XXX - FontService" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - FontService")
netsh advfirewall firewall show rule name="XXX - PrintWiz" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - PrintWiz")
netsh advfirewall firewall show rule name="XXX - RegisterCGS" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - RegisterCGS")
netsh advfirewall firewall show rule name="XXX - Setup" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - Setup")
netsh advfirewall firewall show rule name="XXX - SetupARP" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - SetupARP")
netsh advfirewall firewall show rule name="XXX - VideoBrowser" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - VideoBrowser")
netsh advfirewall firewall show rule name="XXX - PropSchemaReg - 1" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - PropSchemaReg - 1")
netsh advfirewall firewall show rule name="XXX - ShellUninst" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - ShellUninst")
netsh advfirewall firewall show rule name="XXX - PropSchemaReg - 2" > nul
if not ERRORLEVEL 1 (netsh advfirewall firewall delete rule name="XXX - PropSchemaReg - 2")


rem Add Following Firewall Rules
rem ---------------------------------------------
netsh advfirewall firewall add rule name="XXX - Corel License" dir=out action=block program="%ProgramFiles% (x86)\Common Files\Protexis\License Service\PsiService_2.exe" profile=any description="%ProgramFiles% (x86)\Common Files\Protexis\License Service\PsiService_2.exe"
netsh advfirewall firewall add rule name="XXX - WTsptlEN" dir=out action=block program="%corel_path-1%\WritingTools\Bin64\WTsptlEN.EXE" profile=any description="%corel_path-1%\WritingTools\Bin64\WTsptlEN.EXE"
netsh advfirewall firewall add rule name="XXX - Connect" dir=out action=block program="%corel_path-1%\Connect64\Connect.exe" profile=any description="%corel_path-1%\Connect64\Connect.exe"
netsh advfirewall firewall add rule name="XXX - DIM - 1" dir=out action=block program="%corel_path-1%\Connect64\DIM.EXE" profile=any description="%corel_path-1%\Connect64\DIM.EXE"
netsh advfirewall firewall add rule name="XXX - DIM - 2" dir=out action=block program="%corel_path-1%\Draw\DIM.EXE" profile=any description="%corel_path-1%\Draw\DIM.EXE"
netsh advfirewall firewall add rule name="XXX - CorelPS2PDF" dir=out action=block program="%corel_path-1%\Filters64\CorelPS2PDF.exe" profile=any description="%corel_path-1%\Filters64\CorelPS2PDF.exe"
netsh advfirewall firewall add rule name="XXX - ooxmlConvert" dir=out action=block program="%corel_path-1%\Filters64\ooxmlConvert.exe" profile=any description="%corel_path-1%\Filters64\ooxmlConvert.exe"
netsh advfirewall firewall add rule name="XXX - ooxmlConvertInstaller" dir=out action=block program="%corel_path-1%\Filters64\ooxmlConvertInstaller.exe" profile=any description="%corel_path-1%\Filters64\ooxmlConvertInstaller.exe"
netsh advfirewall firewall add rule name="XXX - DIM - 3" dir=out action=block program="%corel_path-1%\PHOTO-PAINT\DIM.EXE" profile=any description="%corel_path-1%\PHOTO-PAINT\DIM.EXE"
netsh advfirewall firewall add rule name="XXX - BarCode" dir=out action=block program="%corel_path-1%\Programs64\BarCode.exe" profile=any description="%corel_path-1%\Programs64\BarCode.exe"
netsh advfirewall firewall add rule name="XXX - Cap" dir=out action=block program="%corel_path-1%\Programs64\Cap.exe" profile=any description="%corel_path-1%\Programs64\Cap.exe"
netsh advfirewall firewall add rule name="XXX - Capture" dir=out action=block program="%corel_path-1%\Programs64\Capture.exe" profile=any description="%corel_path-1%\Programs64\Capture.exe"
netsh advfirewall firewall add rule name="XXX - CdrConv" dir=out action=block program="%corel_path-1%\Programs64\CdrConv.exe" profile=any description="%corel_path-1%\Programs64\CdrConv.exe"
netsh advfirewall firewall add rule name="XXX - CorelDRW" dir=out action=block program="%corel_path-1%\Programs64\CorelDRW.exe" profile=any description="%corel_path-1%\Programs64\CorelDRW.exe"
netsh advfirewall firewall add rule name="XXX - CorelPP" dir=out action=block program="%corel_path-1%\Programs64\CorelPP.exe" profile=any description="%corel_path-1%\Programs64\CorelPP.exe"
netsh advfirewall firewall add rule name="XXX - CrlUISvr" dir=out action=block program="%corel_path-1%\Programs64\CrlUISvr.exe" profile=any description="%corel_path-1%\Programs64\CrlUISvr.exe"
netsh advfirewall firewall add rule name="XXX - DIM - 4" dir=out action=block program="%corel_path-1%\Programs64\DIM.EXE" profile=any description="%corel_path-1%\Programs64\DIM.EXE"
netsh advfirewall firewall add rule name="XXX - FontManager" dir=out action=block program="%corel_path-1%\Programs64\FontManager.exe" profile=any description="%corel_path-1%\Programs64\FontManager.exe"
netsh advfirewall firewall add rule name="XXX - FontService" dir=out action=block program="%corel_path-1%\Programs64\FontService.exe" profile=any description="%corel_path-1%\Programs64\FontService.exe"
netsh advfirewall firewall add rule name="XXX - PrintWiz" dir=out action=block program="%corel_path-1%\Programs64\PrintWiz.exe" profile=any description="%corel_path-1%\Programs64\PrintWiz.exe"
netsh advfirewall firewall add rule name="XXX - RegisterCGS" dir=out action=block program="%corel_path-1%\Setup\RegisterCGS.exe" profile=any description="%corel_path-1%\Setup\RegisterCGS.exe"
netsh advfirewall firewall add rule name="XXX - Setup" dir=out action=block program="%corel_path-1%\Setup\Setup.exe" profile=any description="%corel_path-1%\Setup\Setup.exe"
netsh advfirewall firewall add rule name="XXX - SetupARP" dir=out action=block program="%corel_path-1%\Setup\SetupARP.exe" profile=any description="%corel_path-1%\Setup\SetupARP.exe"
netsh advfirewall firewall add rule name="XXX - VideoBrowser" dir=out action=block program="%corel_path-1%\VideoBrowser64\VideoBrowser.exe" profile=any description="%corel_path-1%\VideoBrowser64\VideoBrowser.exe"
netsh advfirewall firewall add rule name="XXX - PropSchemaReg - 1" dir=out action=block program="%corel_path-3%\x64\PropSchemaReg.exe" profile=any description="%corel_path-3%\x64\PropSchemaReg.exe"
netsh advfirewall firewall add rule name="XXX - ShellUninst" dir=out action=block program="%corel_path-3%\x64\ShellUninst.exe" profile=any description="%corel_path-3%\x64\ShellUninst.exe"
netsh advfirewall firewall add rule name="XXX - PropSchemaReg - 2" dir=out action=block program="%corel_path-3%\x86\PropSchemaReg.exe" profile=any description="%corel_path-3%\x86\PropSchemaReg.exe"


rem Delete Some Files
rem ---------------------------------------------
IF EXIST "%corel_path-2%" (rd /s /q "%corel_path-2%")
IF EXIST "%corel_path-1%\Capture\RMPCUNLR.dll" (del "%corel_path-1%\Capture\RMPCUNLR.dll")
IF EXIST "%corel_path-1%\Connect64\RMPCUNLR.dll" (del "%corel_path-1%\Connect64\RMPCUNLR.dll")
IF EXIST "%corel_path-1%\Draw\RMPCUNLR.dll" (del "%corel_path-1%\Draw\RMPCUNLR.dll")
IF EXIST "%corel_path-1%\FontManager\RMPCUNLR.dll" (del "%corel_path-1%\FontManager\RMPCUNLR.dll")
IF EXIST "%corel_path-1%\Setup\RMPCUNLR.dll" (del "%corel_path-1%\Setup\RMPCUNLR.dll")
IF EXIST "%corel_path-1%\PHOTO-PAINT\HMPCUNLR.DLL" (del "%corel_path-1%\PHOTO-PAINT\HMPCUNLR.DLL")

echo Congratulations! Now you can run CorelDRAW Smoothly.
