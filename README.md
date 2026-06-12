# PhoenixPE

[![Latest Release](https://img.shields.io/github/v/release/PhoenixPE/PhoenixPE)](https://github.com/phoenixpe/phoenixpe/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square&label=License)](https://opensource.org/licenses/MIT)
[![Downloads](https://img.shields.io/github/downloads/PhoenixPE/PhoenixPE/total)](https://github.com/phoenixpe/phoenixpe/releases)
[![Contributors](https://img.shields.io/github/contributors/PhoenixPE/PhoenixPE)](https://github.com/phoenixpe/phoenixpe/graphs/contributors)

![PhoenixPE Logo](https://github.com/PhoenixPE/PhoenixPE/blob/master/.github/Images/PhoenixPE.png)

> **When your system won't boot, PhoenixPE puts you back in control.**

PhoenixPE is a fully customizable WinPE Rescue and Recovery Environment built on Win10/Win11. Boot it from a USB drive, CD/DVD, PXE, or hard disk — and get access to a powerful suite of recovery, diagnostics, and repair tools without needing a working OS.

![PhoenixPE main interface screenshot](https://github.com/PhoenixPE/PhoenixPE/blob/master/.github/Images/PhoenixPE-Main.png)

## Why PhoenixPE?

PhoenixPE was developed from the ground up to be fast, flexible, and user-friendly.

- **Next-generation build engine.** Built on [PEBakery](https://github.com/pebakery/PEBakery), delivering faster build times and advanced features that legacy Winbuilder projects simply can't match.
- **Win10 and Win11 source support.** Build from `boot.wim` or `WinRE.wim`. ([Compatible sources](https://github.com/PhoenixPE/PhoenixPE/wiki/Source-Compatibility))
- **Modular and extensible.** Add your own apps and scripts using PEBakery's clean scripting language and the [PhoenixPE API](https://github.com/PhoenixPE/PhoenixPE/wiki/PhoenixAPI). Most scripts can be updated to a new app version simply by changing a version number.
- **Clean, well-documented code.** Designed from scratch without the decades of hacks, workarounds, and bloat accumulated by older projects.
- **Approachable for all skill levels.** Simple options and an uncluttered UI for everyday use; deep flexibility for power users and developers who want full control.

## Features

### Recovery & Repair
- Drive backup, cloning, and imaging
- File recovery
- Password recovery
- Offline OS troubleshooting, repair, and recovery

### Security
- Malware removal
- Forensics tools

### Hardware & Maintenance
- Drive partitioning and install prep
- Hardware diagnostics

PhoenixPE ships with a curated selection of well-integrated tools to cover the most common recovery scenarios. Because every user's needs are different, PEBakery's scripting language makes it straightforward to add your favorite applications and settings on top.

## Screenshots

![PhoenixPE running on Windows 11](https://github.com/PhoenixPE/PhoenixPE/blob/master/.github/Images/PhoenixPE-Win11-01.png)

## Getting Started

**Requirements:** A Windows 10 or Windows 11 host machine, a compatible Win10/Win11 source (see [Compatible Sources](https://github.com/PhoenixPE/PhoenixPE/wiki/Source-Compatibility)), and internet access for the initial build.

1. **Download** the [latest release](https://github.com/PhoenixPE/PhoenixPE/releases) and unpack it to your desired location.
2. **Launch PEBakery**, point it at your Windows source, and select the scripts you want to include.
3. **Build.** PEBakery will download required tools from the Windows ADK on the first run and cache everything locally — subsequent builds don't need internet access.
4. **Write to media** using Rufus or your preferred tool, or configure your network for PXE boot.
5. **Boot and recover.**

> **Slow or unreliable internet?** Use the per-script download button in PEBakery to pre-cache app installers before building. You can also place the entire PhoenixPE folder on a USB drive and pre-download files from a faster connection elsewhere. See the [FAQ](https://github.com/PhoenixPE/PhoenixPE/wiki/FAQ#what-if-i-have-slow-internet-or-poor-reliability) for details.

To uninstall, simply delete the PhoenixPE folder.

Full build instructions are on the [Building PhoenixPE](https://github.com/PhoenixPE/PhoenixPE/wiki/Building-PhoenixPE) wiki page.

## Customization & Scripting

PhoenixPE is developer-friendly and designed to be extended. You can include additional applications, configure app settings at build time, register shell extensions and file handlers, and tailor almost every aspect of the environment to your needs.

Useful resources for getting started:
- [PEBakery Documentation](https://github.com/pebakery/pebakery-docs)
- [PhoenixPE API](https://github.com/PhoenixPE/PhoenixPE/wiki/PhoenixAPI)
- [Project Variables](https://github.com/PhoenixPE/PhoenixPE/wiki/ProjectVars)

If you get stuck, the community forums are a great place to ask — there's a good chance someone has already written a script for a similar application.

## Documentation

Full documentation is available on the [PhoenixPE Wiki](https://github.com/PhoenixPE/PhoenixPE/wiki), including:

- [Building PhoenixPE](https://github.com/PhoenixPE/PhoenixPE/wiki/Building-PhoenixPE)
- [Compatible Sources](https://github.com/PhoenixPE/PhoenixPE/wiki/Source-Compatibility)
- [Security & Antivirus False Positives](https://github.com/PhoenixPE/PhoenixPE/wiki/Security)
- [Frequently Asked Questions](https://github.com/PhoenixPE/PhoenixPE/wiki/FAQ)

## Common Questions

**Why does my antivirus flag some software in PhoenixPE as a virus?**
This is a known false positive. Recovery tools often use low-level system access that antivirus software flags incorrectly.

See the [Security & Antivirus False Positives](https://github.com/PhoenixPE/PhoenixPE/wiki/Security) page for a full explanation.

**Why should I choose PhoenixPE instead downloading a popular pre-built ISO?**
Pre-made ISOs like Hiren's, Gandalf's, MediCat, and Sergei are often built on Win10XPE or PhoenixPE projects, but strip out all credit while slapping their own name on the result. They add some fancy graphics and tweaks, but can be bloated and almost always ship with outdated software.

Some sketcher pre-built ISO's hide freely available software behind paywalls, and bundle Warez putting you at legal risk.

Since you have no visibility into what's actually baked into someone else's ISO, you're trusting a stranger on the internet with a tool that runs with full system access. 

Building PhoenixPE yourself means you control exactly what's included, keep everything current and secure, add your own apps and license keys, and get it all in your native language. Put in a little work and reap the rewards — it's worth the effort.

**Can I request an application be included?**
It's impossible to bundle every application, and everyone has different needs. Instead, the scripting system makes it easy for *you* to include your favorite applications. Check out the resources above and ask in the forums if you need a hand.

See the full [FAQ](https://github.com/PhoenixPE/PhoenixPE/wiki/FAQ#can-you-include-xyz-application-in-phoneixpe) for more information.

## Contributing

PhoenixPE is developed and maintained by a community of volunteers. Contributions of all kinds are welcome.

- Read the [Contributor Guidelines](https://github.com/PhoenixPE/PhoenixPE/blob/master/docs/CONTRIBUTING.md) before submitting.
- Browse [open issues](https://github.com/PhoenixPE/PhoenixPE/issues) to find something to work on.
- Report bugs or suggest features via the [issue tracker](https://github.com/PhoenixPE/PhoenixPE/issues).
- Monitor our forums and share your knowledge and experience with other users.

## Community & Support

Get help, share builds, and discuss the project in our forums:

- [The Oven](https://theoven.org/viewforum.php?f=26)
- [MSFN](https://msfn.org/board/topic/187719-phoenixpe-a-modern-rescue-recovery-environment/)

Please check the [FAQ](https://github.com/PhoenixPE/PhoenixPE/wiki/FAQ) before posting a new issue or forum question.

## License

PhoenixPE is licensed under the [MIT License](LICENSE).
