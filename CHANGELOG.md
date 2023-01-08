# Change Log

Notable changes to the PhoenixPE project.

## Release UNRELEASED

### Added
- StartAllBack (Win11 successor to StartIsBack) as an alternative start menu to OpenShell and StartIsBack++.
- New script that allows the option to use the modern Task Manager instead of the default Task Manger included in boot.wim/WinRE.wim.
- HxD Hex Editor
- MonitorTestUtility script that allows you to run various pattern and motion tests on your display.
- grepWin search and replace

### Changed
- Updated PinUtil (1.4.1.1-Homes32) to support pinning to StartAllBack.
- Updated KeyboardTestUtility to v2.0.0
- Updated Open-Shell to v4.4.186
  * rewrote the extraction routines to make future updates easier
  * added Win11 start button option
- **Script Breaking Change:** Fab's Auto Backup extraction routines were re-written because author of AutoBackup7 switched to distributing the program in an InnoSetup installer instead of a self-extracting 7z archive.  
  * Support extracting the official InnoSetup installer.
  * Added support for extracting Autobackup files from a .7z/.rar/.zip archive.
  
  Due to the changes the previous self extracting archives can no longer be used. Users must either provide the new InnoSetup package or construct an archive containing their AutoBackup7 program files.
  
  
### Fixed
- Fixed an issue preventing network services from being installed if no NIC's were present.
- Fixed an issue with the Media Transfer Profile script that caused the mtp_helper.sys driver to be extracted to the wrong folder.
- Fixed a bug in InnoCleanup that did not cleanup files with suffixes greater then 1 digit.
- Fixed a bug in InnoRename that caused renamed files to be moved to the base path instead of the correct sub-folder when the NOREC parameter was not used.

### Removed

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
