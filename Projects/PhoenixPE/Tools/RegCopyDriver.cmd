:: RegCopyDriver.cmd
:: This script is fork of ChrisR's RegAddDriver.cmd modified for PhoenixPE

@Echo OFF
SetLocal EnableDelayedExpansion
Set HKFindKey=%~1
Set HKFindKeyName=%~n1

:: Drivers Hive
Set HiveOrg=HKEY_LOCAL_MACHINE\Tmp_Install_Drivers
Set HKMainOrg=%HiveOrg%\DriverDatabase\DriverInfFiles
Reg Query "%HKMainOrg%\%HKFindKey%" >nul 2>nul
If %ERRORLEVEL% EQU 0 (
  Set HiveNew=HKEY_LOCAL_MACHINE\Tmp_Drivers
  Call :_RegAddDriver
)

:: System Hive
Set HiveOrg=HKEY_LOCAL_MACHINE\Tmp_Install_System
Set HKMainOrg=%HiveOrg%\DriverDatabase\DriverInfFiles
Reg Query "%HKMainOrg%\%HKFindKey%" >nul 2>nul
If %ERRORLEVEL% EQU 0 (
  Set HiveNew=HKEY_LOCAL_MACHINE\Tmp_System
  Call :_RegAddDriver
)

:_RegAddDriver
Set HKMainNew=%HiveNew%\DriverDatabase\DriverInfFiles
Reg Query "%HKMainNew%" >nul 2>nul
If %ERRORLEVEL% NEQ 0 Exit 1
Call :_RegCopy "%HKMainOrg%\%HKFindKey%"

Set HKMainOrg=%HiveOrg%\DriverDatabase\DeviceIds
Set HKMainNew=%HiveNew%\DriverDatabase\DeviceIds
For /F "tokens=1,2,3*" %%A IN ('REG Query %HKMainOrg% /s /e /f %HKFindKey%') Do (
  If /I Not "%%A" EQU "%HKFindKey%" (Set "HKeyOrg=%%A") Else (
    Set HKeyNew=!HKeyOrg:HKEY_LOCAL_MACHINE\Tmp_Install_=HKEY_LOCAL_MACHINE\Tmp_!
    Echo Reg Add "!HKeyNew!" /v "%%A" /t %%B /d "%%C" /f
    If "%%B" NEQ "REG_NONE" (Reg Add "!HKeyNew!" /v %%A /t %%B /d "%%C" /f >nul) Else (Call :_RegNone "!HKeyNew!" "%%A")
  )
)

Set HKMainOrg=%HiveOrg%\DriverDatabase\DriverFiles
Set HKMainNew=%HiveNew%\DriverDatabase\DriverFiles
For /F %%A IN ('Reg Query "%HKMainOrg%" /s /d /e /f "%HKFindKey%"') Do Call :_RegCopy "%%A"

Set HKMainOrg=%HiveOrg%\DriverDatabase\DriverPackages
Set HKMainNew=%HiveNew%\DriverDatabase\DriverPackages
For /F %%A IN ('Reg Query "%HKMainOrg%" /k /f "%HKFindKey%"') Do Call :_RegCopy "%%A"

Set HKMainOrg=%HiveOrg%\ControlSet001\Services
Set HKMainNew=%HiveNew%\ControlSet001\Services
Reg Query "%HKMainOrg%\%HKFindKeyName%" >nul 2>nul
If %ERRORLEVEL% EQU 0 Call :_RegCopy "%HKMainOrg%\%HKFindKeyName%"

::Pause
Exit

:_RegCopy
Set HKeyOrg=%~1
If "%HKeyOrg:~0,5%" NEQ "HKEY_" Goto :EOF
Call Set HKeyNew=%%HKeyOrg:!HKMainOrg!=!HKMainNew!%%
Reg Query "%HKeyOrg%" >nul 2>nul
If Not ErrorLevel 1 Echo Reg Copy "%HKeyOrg%" "%HKeyNew%" /s /f
If Not ErrorLevel 1 Reg Copy "%HKeyOrg%" "%HKeyNew%" /s /f
Goto :EOF

:_RegNone
Set RegNone="%TEMP%\RegNone.txt"
Echo Windows Registry Editor Version 5.00 > %RegNone%
Echo [%~1] >> %RegNone%
Echo "%~2"=hex(0): >> %RegNone%
Reg Import %RegNone%
Del /q %RegNone% 2>nul
Goto :EOF