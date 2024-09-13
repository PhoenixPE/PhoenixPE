# Change Log

Notable changes to the PhoenixPE project.

## Release 2024-09-13

### Added

### Changed
- Update StartIsBack download URL and supported version. (Issue #104)
- HWinfo updated to v8.06

### Fixed
- AttributeChanger added new language support breaking existing language codes. (Issue #104)
- Fixed space in path causes PhoenixAPI-DriveGetType to fail (Issue #107)
- Fixed an issue causing the support log compression to fail.

### Removed

## Release 2024-08-17

### Added
- .Net 5 runtime (Issue #82)
- .Net 7 runtime (Issue #82)
- AcronisTrueImage script. (AcronisCyberProtectHomeOffice re-branded again.)
- Added DriveGetType command to the PhoenixAPI to assist in detecting network drives, ramdrives, etc.
- Added new logic to Pre-Flight check to detect output directory conditions (Network drive, ramdisk, etc.) that could cause the build to fail. (Issue #96)
- Added the option to configure the default Execution Policy on the Windows Powershell and Powershell Core scripts.
- Added CrystalDiskInfo script.
- Added CrystalDiskMark script.
- Added DISM++ script. (Issue #54)
- Added h2testw script.
- Added RustDesk script (Open-Source AnyDesk/TeamViewer alternative).
- Added WinRAR script.

### Changed
- **PhoenixPE now requires PEBakery v1.2.0-develop or greater due to new StrFormat,StartTrim` and `StrFormat,EndTrim` commands implemented.**
- Changed usage of `StrFormat,Ctrim` to use `StrFormat,StartTrim` and `StrFormat,EndTrim` where appropriate. (Issue #96)
- Windows Event Log Service startup now logs to PhoenixPE.log instead of %temp%.
- Added a informational message to PhoenixPE.log if booting in Forensic Mode (WinFE write-protect, etc.).
- If running as Ventoy compatible choosing 'Remount Boot Media as Y:' from the PhoenixPE tray menu will also scan for and mount the ISO file if needed.
- Optimized support log generation. In addition, the support log is now packed in a .zip file for easier uploading to github and forums that don't support .7z files.
- WordPad script will display a more friendly error message if the source is Win 11 build 26020 or greater. (MS discontinued)
- 7-Zip script and tools updated to v24.07
- AIDA64 updated to v7.35.7000
- CPU-Z updated to v.2.10.0
- DesktopInfo updated to v3.14.0
- DiskCyptor updated to v1.3 beta signed
- DiskGenius updated to v5.6.0.1565
- DMDE updated to v4.2.0.814
- FastStone Capture updated to v10.6
- Google Chrome updated to v127.0.6533.100
- grepWin updated to v2.1.5
- HDClone updated to X.5.FE
- HWinfo updated to v8.06
- Notepad++ updated to v8.6.9.0 + added additional language support (Abkhazian, HongKongCantonese, Irish, Nepali, TaiwaneseMandarin, Venetian).
- PowerShell Core updated to v7.4.4
- Simplewall updated to v3.8.3
- WinMerge updated to v2.16.42.1
- WinNTSetup updated to v5.3.5.2
- WizTree updated to v4.20
- Zulu JRE11 updated to v11.74.15
- Zulu JRE17 updated to v17.52.17

### Fixed
- Fixed setup file extraction for TestDisk/PhotoRec.
- Fixed %Workbench% was not processed by FreeSpaceCheck
- Fixed wrong AutoIt3 binaries copied on x86 build. (Issue #95 / https://theoven.org/viewtopic.php?p=1899#p1899)
- Fixed incorrect language selection in 7-Zip, FireFox, and IfranView. (Issue #99)
- Work around a bug in PCI-Z that causes the eternal ID database not be be used if the shortcut or ShellExecute doesn't specify the working directory.

### Removed
- AcronisCyberProtectHomeOffice script. (Re-branded again as Acronis True Image)

## Release 2024-06-20

### Added
- .Net 8 runtime
- Added a script factory template for simple embedded setup app (7z/zip/rar/exe).
- Added additional Bitlocker support files.
- Added Ventoy Compatibility checks to work around Ventoy's flawed OS hooking resulting in the source ISO not being mounted. (Issue #86)
- Added WindowsPowerShell component script. (Issue #90)

### Changed
- Improved progress text to Copy2Folder.script
- .Net 6 runtime updated to v6.0.31
- 7zip script and tools updated to v24.06
- AgentRansack updated to v2022 build 3434
- AIDA64 updated to v7.30.6900
- Arsenal Image Mounter updated to Driver v1.2.16.75 / GUI v3.11.290.0
- Attribute Changer updated to v11.30b
- DesktopInfo updated to v3.13.2
- FastStone Capture updated to v10.5
- FurMark updated to v1.38.1.0
- Google Chrome updated to v126.0.6478.115
- GPU-Z updated to v2.59.0
- grepWin updated to v2.1.1
- HDTune Pro updated to v.6.00
- HWInfo updated to v8.04
- Intel MEI driver is now cached on first download. (Issue #92)
- Intel MEI driver updated to v2413.5.67.0
- IrfanView updated to v4.67
- LetterSwap.exe updated to include new command line help, better error handling, code refactoring, and a fix for /MountAll (Issue #71) 
- LibreOffice updated to v24.2.3
- Macrium Reflect updated to v8.0.7783
- MPC-BE updated to v1.7.2.0
- Notepad++ updated to v8.6.8.0
- Notepad3 updated to v6.24.309.1
- PowerShell Core updated to v7.4.3
- PowerShell Core added pwsh.exe to the system path.
- Prime95 updated to v30.19b20
- Rufus updated to v4.5
- Simplewall updated to v3.8.2
- TestDisk & PhotoRec updated to v7.2 stable
- TotalCommander updated to v11.03
- Ventoy updated to v1.0.99
- WinMerge updated to v2.16.40
- WinSCP updated to v6.3.4
- WinNTSetup updated to v5.3.5.1
- Zulu JRE11 updated to v11.72.19
- Zulu JRE17 updated to v17.50.19
- MS Visual C++ Runtime updated to v14.40.33810.0

### Fixed
- DiskGenius download links fixed.
- DriverIntergration script now removes trailing \ from the the driver source path to keep DISM happy.
- Fixed a bug in ScriptFactory where resetting script defaults didn't reset the template description.
- Fixed a build failure with Win v10.0.26040.1000 due to the removal of some networking related registry keys.
- Fixed an issue with PhoenixPE-UserConfig au3/a3x files not running during startup. (Issue #85)
- Fixed an issue where ventoy would extract from setup every run instead of using the cached version.
- Fixed an issue with WMI when using the Slimfast script.
- Fixed an issue with mtphelper.sys driver.
- Fixed missing bootx64.efi.mui.
- Fixed shortcut creation in DirectX script.
- Fixed WizTree download.
- Modified Chrome and Firefox scripts to set default http and https ProgID during startup to work around Windows blocking registry edits to these keys.

### Removed

## Release 2024-02-09

### Added
- Added additional FOD Network drivers. (Issue #23)
- Camara/Webcam support. (Issue #81)
- Pressing F11 during startup toggles the splash screen on/off. This can be useful when testing to show autorun application windows or error messages.

### Changed
- AgentRansack updated to v2022 build 3420
- Attribute Changer updated to v11.30a
- CPU-Z updated to v.2.09.0
- HWInfo updated to v7.72
- Improved PhoenixPE.au3 handling of Win32 messages.
- Notepad++ updated to v8.6.2.0
- Simplewall updated to v3.7.8
- WinMerge updated to v2.16.38
- WizTree updated to v4.18
- Zulu JRE11 updated to v11.70.15
- Zulu JRE17 updated to v17.48.15

### Fixed
- Fixed an issue where ProtectPE could block broadcast messages.
- Fixed blocking startup on SetResolution if the specified resolution was not supported by the current graphic mode.
- Fixed Command Prompt to specify full path to cmd.exe in order to allow pinning to taskbar/start menu.
- Fixed handling of double-quotes in AddShortcut and AddAutoRun.
- Fixed WinPE Cache size not getting applied correctly with Win10 sources. (Issue #74)

### Removed

## Release 2024-01-14

### Added
- **Compatibility warning:** The PECMD interpreter has been replaced by AutoIt3 and uses the PhoenixPE.au3 script for config, Shortcut creation, AutoRun, Shell loading, etc. Running custom PECMD scripts is still supported.
- Added additional ISO download link to Config Source advanced options.
- Added AddStartupConfig command to the PhoenixAPI to allow directly inserting free-form code to the startup config (PhoenixPE.au3).
- Added FileSearch command to the PhoenixAPI to allow searching for a specific file(s) in a path.
- Added GetStringResource command to the PhoenixAPI to allow extracting strings from the resource table of a binary.
- Added the ability to specify a custom PENetwork config file in 310-PENetwork.script (Issue #64). Previously this feature required the user to place a custom PENetwork.ini file in the project cache, however this could result in the config being destroyed if the cache was cleared.
- Added XMLRead command to PhoenixAPI (Issue #64). Allows reading a single value from an XML file.
- Additional cleanup options in SlimFast. (Issue #35)
- Added additional options in Explorer script: Use Checkboxs to Select Items, Show Status Bar, Launch Folder Windows in a Separate Process
- Added ClasicCalc script.
- Added DriveSnapshot script. (Issue #53)
- Added FastStone Capture script.
- Added Intel Management Engine Driver script.

### Changed
- .Net 6 runtime updated to v6.0.25
- AIDA64 updated to v7.00.6700
- Added a warning if you try to include MSPaint in a Win11 build. M$ removed "Classic Paint" in Win11 and moved to the UWP Paint app.
- Added a warning if you try to include Snipping Tool in a Win11 build. M$ replaced in Win11 and moved to the Snip and Sketch UWP app.
- Added Localization option to sync time on network startup. (Issue #59)
- AddShortcut, PinShortcut, and AddAutoRun commands were rewritten to work with the new AutoIt3 config/loader.
- AgentRansack updated to v2022 build 3418
- Allow copy of license file and config in OCCT script. (Issue #60)
- AnyDesk script will now attempt to copy the identity cert from the local users profile. (Issue #59)
- Arsenal Image Mounter updated to Driver v1.2.11.69 / GUI v3.10.262.0
- Attribute Changer updated to v11.30
- Attribute Changer updated language selections. (Issue #67)
- AudioSrvPolicyManager patching process was modified to work with Win11 10.0.22621.1702 (Issue #58)
- BeyondCompare updated to v4.4.7.28397
- BleachBit updated v4.6.0 (now requires writable dir and VC++ 10)
- Bumped StartAllBack supported version to v3.7.3
- CPU-Z updated to v.2.08.0
- DesktopInfo updated to v3.11.0
- DiskCyptor updated to v1.3 beta
- DiskGenius updated to v5.5.1.1508
- Driver Store Explorer updated to v0.11.92
- FastStone Image Viewer updated to v7.8
- FurMark updated to v1.37.2.0
- Google Chrome updated to v120.0.6099.217
- GPU-Z updated to v2.56.0
- HWInfo updated to v7.68
- IrfanView updated to v4.66
- LibreOffice updated to v7.6.4
- MPC-BE updated to v1.6.11.0
- MS Visual C++ Runtime updated to v14.38.33130.0
- Notepad++ updated to v8.6.1.0
- Notepad3 updated to v6.24.109.1 RC2
- Open-Shell updated to v4.4.191
- PowerShell Core updated to v7.4.1
- Re-worked FBWF logic to allow Win11 based builds to use more then 4094 MB WinPE Cache.
- Remove OEM logo if left blank in OEMInfo.script.
- Rewrote AcronisCyberProtect and ATI2021 download/unpack to eliminate the need to update the name of the inner CAB container.
- Rufus updated to v4.3, added x64 support. (Note: Rufus dropped support for Win7 as of v4.0)
- Simplewall updated to v3.7.7
- TotalCommander updated to v11.02 + added Ukrainian translation.
- Ventoy updated to v1.0.96
- VeraCypt updated to v1.26.7, added Corsican language, added amd64 support. **Compatibility warning:** VeraCypt 1.26.7 drops support for TrueCrypt mode. If you need to mount or convert legacy TrueCypt volumes use v1.25.9
- Windows Login Unlocker updated to v2.1.0.6357 and added Chinese, Dutch, French, Ukrainian translations.
- WinMerge updated to v2.16.36
- WinNTSetup updated to v5.3.3
- WinSCP updated to v6.1.2
- WizTree updated to v4.16
- Zulu JRE11 updated to v11.68.17
- Zulu JRE17 updated to v17.46.19

### Fixed
- Fixed explorer crashing on boot with 23H2v2 source.
- Fixed an issue with FileCopyEx that would case the file to be copied incorrectly if the destination directory did not exist.
- KVRT now requires writable dir.
- PCI-Z requires a writable directory in order to read downloaded PCI ID database.
- Remove Copilot icon from taskbar (Win11)

### Removed
- Fixscreen.exe is no longer required. Show desktop and screen res fixes are now handled directly by the PhoenixPE loader.
- Old Win11 22000 explorer workaround was removed. We no longer support building from this version.

## Release 2023-08-03

### Added
- Added "disabled" state icon for scripts with no advanced options.
- HDDTune - Hard-drive diagnostics.
- Nirsoft MultiMonitorTool - Configure multiple monitors and set max resolution on startup.
- Dependencies Added an option to specify default tree build behavior.
- Added a button in the Driver Integration script that extracts ExtractHostDrv.exe to a user specified directory or USB drive. Useful if you want to extract 3rd party drivers from other systems.

### Changed
- .Net 6 runtime updated to v6.0.20
- 7zip script and tools updated to v23.01
- AIDA64 updated to v6.90.6500
- Attribute Changer updated to v11.20
- CPU-Z updated to v.2.06.1
- DesktopInfo updated to v3.10.2
- DMDE updated to v4.0.6.806
- FurMark updated to v1.35.0.0 (Now embedded in script due to download protections)
- Google Chrome updated to v115.0.5790.99
- GPU-Z updated to v2.54.0
- grepWin updated to v2.0.15
- HDClone updated to X.4
- HWInfo updated to v7.60
- KeyboardTestUtility updated to v2.1.0
- LibreOffice updated to v7.5.4
- MPC-BE updated to v1.6.8.5
- Notepad++ updated to v8.5.4.0
- Open-Shell updated to v4.4.190
- OpenHashTab updated to v3.0.4 (Note: OpenHashTab has dropped x86 support as of this release)
- Powershell Core updated to v7.3.6
- WinMerge updated to v2.16.30
- WinSCP updated to v6.1.1
- WizTree updated to v4.14
- Zulu JRE11 updated to v11.66.15
- Zulu JRE17 updated to v17.44.15
- Visual C++ 14 Runtime updated to v14.36.32532.0

### Fixed
- Fixed download links for prime95
- Fixed a SideBySide version mismatch with gdiplus and common controls when building from a 20H2 source (WinRE).
- Fixed a broken download link in BeyondCompare script.
- Fixed broken profile and language download links for simplewall. (Issue #44)
- Fixed unquoted paths in FastStone script that could cause the build to fail if the path contains spaces. (Issue #50)
- Fixed unquoted paths in simplewall script that could cause the build to fail if the path contains spaces. (Issue #50)
- Fixed GWT would fail to download DISM is the path contained a space. (Issue #50)
- Fixed FIDO failure to launch if the path contained a space. (Issue #50)
- Fixed a situation where resetting defaults in Core-Registry would not reset Global variables %RegistrySoftwareSource% and %RegistryDriverSource%
- Fixed 32bit dependencies for wlanapi.dll when running under Win11 in LizNetworkScanner script.

### Removed

## Release 2023-03-28

### Added
- Total Commander script.
- Default Ramdrive now uses Arsenal Image Mounter. This modern driver developed by the author of ImDisk solves some compatibility issues with modern software. The old ImDisk ramdrive script continues to be available in PhoenixPE, though ImDisk development has ceased.
  * Modern applications that utilize the Windows volume manger API's will work correctly
  * Dynamically allocated Ramdisks can be used, in addition to traditional fixed-size ramdisks.
  * Support for mounting BitLocker-protected volumes.
- New option in Tweaks > Visual Effects to enable/disable rounded corners in Win11. Visual Effects are now enabled by default.
- Added Multi-Monitor option for RDP client sessions.
- iSCSI script to include GUI components of the iSCSI Initiator. 
  * Note: Using iSCSI Initiator with a Win11 source currently requires the Components > Event Logging script to be enabled (Issue #30).

### Changed
- Audio script improvements
  * Updated mpeg123 to v1.31.3
  * added default startup sound
- .Net 6 runtime updated to v6.0.15
- AgentRansack updated to v2022 build 3367
- Bootice script now makes use of JFX's extensions to support multiple languages, DPI support, and dark mode.
- CPU-Z updated to v.2.05.1
- DesktopInfo updated to v3.10.1
- DiskGenius updated to v5.5.0.1488
- EaseUS Data Recovery Wizard updated to v15.8.1.0
- FurMark updated to v1.33.0.0
- Google Chrome updated to v111.0.5563.111
- HWinfo updated to v7.40
- MPC-BE updated to v1.6.6
- Macrium Reflect updated to v8.1.7279
- Moved the "Run All Programs from RAM" checkbox from advanced to basic interface on Config Source script.
- Notepad++ updated to v8.5.1.0
- Notepad3 updated to 6.23.203.2 - fixed broken download URL
- OpenShell updated to v4.4.189
- PowerShell Core updated to v7.3.3
- Rufus updated to v3.22
- Switch to Admin now allows swapping back and forth between Admin and SYSTEM sessions.
- Updated WinNTSetup to 5.3.0
- Ventoy updated to v1.0.90
- Visual C++ 14 Runtime updated to v14.34.31938.0
- WinMerge updated to v2.16.28
- WizTree updated to v4.13

### Fixed
- **Audio now works under the SYSTEM account!** Special thanks to Noel Blanc for the hours spent debugging and analyzing the issue.
- Fixed dependencies for newer versions of PotPlayer
- Fixed a bug in PhoenixAPI AddShortcut that did not properly handle start Minimized or start Maximized.
- Fixed an issue that could cause the ISO file not to be pre-selected in Rufus.
- Fixed %SetupFile% was not defined in Dependencies.script
- Fixed a bug in Network script that could cause .xml wireless profiles not to import correctly.
- Fixed theme signature check bypass for newer Win versions
- Fixed extraction of NSudo binary
- Fixed download button on WinMailPassView script.
- Fixed a bug in RDP script that prevented NLA from being configured in the connection profile.
- Fixed an issue with Ventoy where the latest version was not always extracted after downloading.

### Removed

## Release 2023-01-30

### Added
- StartAllBack (Win11 successor to StartIsBack) as an alternative start menu to OpenShell and StartIsBack++.
- New script that allows the option to use the modern Task Manager instead of the default Task Manger included in boot.wim/WinRE.wim.
- HxD Hex Editor
- MonitorTestUtility script that allows you to run various pattern and motion tests on your display.
- grepWin search and replace script
- Macrium Reflect - Well known backup/imaging solution.
- EaseUS Data Recovery Wizard - Free version allows you to recover up to 2GB of deleted data.
- Double Driver - A user friendly tool for offline driver backup.
- Nirsoft's ExtPassword! - A tool for recovering password from offline systems.
- Nirsoft's WinMailPassRec - A tool for recovering passwords from Win10/Win11 WinMail.
- Nirsoft's ShadowCopyView - Restore files from Volume Shadow Copy snapshots.
- GetBinaryResource command added to PhoenixAPI - Allows extracting of binary resources from exe, dll, etc.
- Zulu JRE 17 LTS script
- Options in MMC script for Certificate Management shortcuts
- Added "Remount Boot Media as Y:" to PECMD SysTray menu.
- Added an option in Misc Shortcuts script to Remount CD/USB as Y (some partition utilities have been known to unmount Y:)

### Changed
- Zulu JRE11 updated to v11.62.17
- Additional Files script defaults to no selected directories. Clicking the browse button creates a default structure in Workbench, but boot.wim and CD/USB now have their own folders. Previously the same directories were defaulted for both CD/USB and boot.wim.
- PCI-Z script now has the option to download the latest pci.ids database directly from the PCI ID Repository. This vastly improves identification as the database that ships with PCI-Z 2.0.0 is from 2017.
- Apps that dynamically download the latest version now log the program version during build.
- PinUtil (1.4.1.1-Homes32) updated to support pinning to StartAllBack.
- KeyboardTestUtility updated to v2.0.0
- HWinfo updated to v7.36
- WinContig added an option to register the WinContig shell extension.
- Open-Shell updated to v4.4.186
  * rewrote the extraction routines to make future updates easier.
  * added Win11 start button option.
- [**Script Breaking Change**] Fab's Auto Backup extraction routines were re-written because author of AutoBackup7 switched to distributing the program in an InnoSetup installer instead of a self-extracting 7z archive.  
  * Support extracting the official InnoSetup installer.
  * Added support for extracting Autobackup files from a .7z/.rar/.zip archive.  
  
  **Note:** Due to the changes the previous self extracting archives can no longer be used. Users must either provide the new InnoSetup package or construct an archive containing their AutoBackup7 program files.
- Improved handling of unsupported keyboard ID's in Localization script. Previously when one or more of the keyboard inputs were set to use HostOS and the language/keyboard pair contained a GUID it would cause DISM to fail with error code 87 (Thanks psct!).
- Set the My Computer > Properties context menu to open the classic System Properties dialog instead of failing to open the Settings App.
- AddShortcut will now detect and remove invalid characters from shortcut names and folders.
- Performance optimizations in CreateISO and OEMInfo scripts
- LetterSwap.exe (Mount CD/USB as Y:) updated to v2019.2.10.1
- Additional audio dll for extended application support.
- HeavyLoad/TreeSizeFree only supports x64 download. Added error message if x86 source is used.
- WinMerge updated to v2.16.26
- AgentRansack updated to v2022 Build 3349
- DMDE updated to v4.0.2.804
- Trellix (Formally McAfee) Stinger download URL's updated.
- Google Chrome updated to v109.0.5414.120
- WinSCP updated to v5.21.7
- Notepad3 updated to v6.23.118.1
- CUP-Z update to v2.04
- Attribute Changer update to v11.10
- PowerShell Core updated to v7.3.2

### Fixed
- Fixed an issue preventing network services from being installed if no NIC's were present.
- Fixed an issue with the Media Transfer Profile script that caused the mtp_helper.sys driver to be extracted to the wrong folder.
- Fixed a bug in InnoCleanup that did not cleanup files with suffixes greater then 1 digit.
- Fixed a bug in InnoRename that caused renamed files to be moved to the base path instead of the correct sub-folder when the NOREC parameter was not used.
- Fixed a bug in Driver Integration where the start menu shortcut would not be created.
- Fixed encoding on WinContig.ini that caused the config to be discarded in newer WinContig versions (5.0.0+).
- Fixed a bug that prevented Mouse ClickLock from being enabled/disabled
- Fixed a bug in Zulu JRE 11 that prevented the JRE from being added to the system PATH
- Fixed an intermittent issue with the transparent icon overlay that caused black icon on explorer refresh. 

### Removed
- Removed depreciated Techbench ISO download link in Config Source. Replaced with alternative ISO download link (https://files.rg-adguard.net/). Best practice remains to use the Download Source ISO button to use Fido, and use rg-adguard as a backup.

## Release 2022-12-25

### Added
- Added Acronis Cyber Protect Home Office script
- Added an option in Explorer script to change the default folder icon view
- Added the ability to login/switch to Administrator
- Added ChrisR's SetWG.exe to reliably set the computer Workgroup for PhoenixPE
  * This is useful for things such as Switch to Admin, as we still need a workgroup set even if we don't run PENetwork.

### Changed
- Added a comment to the Acronis True Image script that the program has been re-branded by the author
- Modified the behavior of Explorer Win11 support. The default has been changed to use explorer.exe included with install.wim, as of Win11 22H2 explorer no longer results in a blackscreen on boot.
- Add missing DLLs for file open dialog in some apps, e.g. notepad++
- .Net6 updated to v6.0.10
- Advanced IP Scanner updated to v2.5.4594.1
- AgentRansack updated to v2022 build 3349
- Aida64 updated to v6.85.6300
- BeyondCompare updated to v4.4.4.27058
- DesktopInfo updated to v3.8.1
- DiskGenius updated to v5.4.6.1441
- DISM Tool updated to v2.6.0
- Driver Store Explorer updated to v0.11.79
- FurMark updated to v1.32.1.0
- Google Chrome updated to v108.0.5359.125
- GPU-Z updated to 2.52.0
- FastStone Image Viewer updated to v7.7
- HWinfo updated to v7.34
- IrfanView updated to v4.62
- LibreOffice updated to v7.4.3
- MPC-BE updated to v1.6.5.3
- Notepad++ updated to v8.4.8.0
- PowerShell Core updated to v7.3.1
- Prime95 updated to v30.8b17
- Updated Rufus to v3.21
- Simplewall updated to v3.6.7
- Ventoy updated to v1.0.81
- WinMerge updated to v2.16.24
- WinSCP updated to v5.21.6
- WizTree updated to v4.12

### Fixed
- Broken download link in OCCT script
- Broken profile update URL in Simplewall script
- A few more workarounds for buggy or missing PENetwork config
- Fixed missing icons in Win11 (context menu, login screen, etc.) due to M$ font changes (SegoeIcons.ttf)
- Fixed an issue with AcronisTrueImage that could occur if drivers already existed in the target.
- Fixed an issue with AcronisCyberProtect that could occur if drivers already existed in the target.
- Fixed an issue with the DiskCyptor script where drivers were not correctly renamed after extraction.
- Fixed some URL and path names for x86/32 bit builds

### Removed
- Homepage link in Windows Login Unlocker script as the forum thread has been deleted :(
 
## Release 2022-08-16
 
**Script Breaking Change:** PhoenixPE now requires PEBakery v1.0.1 or greater due to the use of enhanced looping commands (ForEach, ForRange, While).
 
### Added

- Added an option in the PECMD script to register .wcs file extensions (PECMD scripts)
- Added additional files needed for explorer shell in the latest Win11 insider build
- Added Win11 explorer.exe workaround in Explorer script interface
- Added the ability to extract explorer.exe from a Win10 ISO when building from a Win11 source
- Added Certificate Management mmc snap-in and utils
  * provides the ability to import/export/manage user and computer certificates in WinPE via mmc or standalone utils (certutil.exe/certreq.exe) that may be needed for wireless access, internal servers, etc. in a corporate setting or to backup certificates from an offline system.
- Added SpeedCrunch - an open source calculator app
- Added LibreOffice application script

### Changed
 
- Enhanced FileDeleteEx and DirDeleteEx to allow unlimited retries instead of halting after 1 retry
- Optimize various script loop operations
- Optimized RequireFileEx, FileCopyEx and PinShortcut commands
- Enhancements for Source Image selection in Config Source
- Improvements to VMWare and VirtualBox test VM
  - enable HPET in VMWare to fix BSOD with multiple CPU's enabled
  - revised "Auto" cpu selection to balance guest/host performance
  - disable paravirtulization interface in VirtualBox to improve stability when more then one CPU is defined. This prevents the CPU from consuming all resources initializing multiple CPU's and hanging on boot
  - enable HPET and disable PAE in VirtualBox
- IME Preliminary Japanese IME support (WIP)
- IME Prevent ghost Old Hangul Korean IME from appearing
- Tweaked some error messages
- Misc minor fixes and tweaks
- Updated .NET 6 to v6.0.8
- Updated 7z to v22.00
- Updated AgentRansack to v2022b3335
- Updated AIDA64 to v6.75.6100
- Updated Azul Zulu Java to v11.58.17
- Updated Beyond Compare to v4.4.3.26655
- Updated CPU-Z to v2.0.1
- Updated DesktopInfo to v3.6.0
- Updated FurMark to v1.31.0
- Updated GPU-Z to v2.47.0
- Updated HWinfo to v7.26
- Updated ImDisk to v2.1.1
- Updated LibreOffice to v7.3.5
- Updated MPC to v1.6.3
- Updated Notepad++ to 8.4.4.0
- Updated OpenHashTab to 3.0.2
- Updated OpenShell to v4.4.170
- Updated PowerShell Core to v7.2.6
- Updated Prime95 to v30.8b16
- Updated Rufus to v3.20
- Updated SumatraPDF to v3.4.6
- Updated VC++ 12 to v12.0.40664
- Updated VC++ 14 to v14.32.31332.0 including preliminary support for arm64
- Updated Ventoy to v1.0.79
- Updated WinMerge to v2.16.22
- Updated WinNTSetup to 5.2.6
- Updated WinSCP to v5.21.2

### Fixed

- Fixed an issue with the Launch Program button in DesktopInfo script
- Fix an issue where the WLAN service would not start
- Fixed a bug in Acronis TrueImage affecting iSCISI registration
- Fixed a bug in the SumatraPDF script that could prevent registry hives from being unloaded
- Fixed a rare bug with the AddShortcut command

### Removed

None.
 
## Release 2022-05-22
  
Initial Public Release
