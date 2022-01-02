# PhoenixPE

PhoenixPE is a Pre-Install Environment based on Win10.

* It uses the "next-generation" PEBakery engine resulting in faster build times and advanced features compared to legacy Winbuilder projects.
* Designed from the ground up to be developer/contributor friendly and use clean, well documented code.
* Easy to understand options and uncluttered user interface.
* Flexible and fully customizable.

## License

**PhoenixPE** is licensed under the MIT license. Refer to [license](license) for more information.

## Installation

Download the [latest release]() and unpack it in the desired location. Please remember to use `7z x` when unpacking the archive from the command line to ensure full file paths remain intact.

## Building PhoenixPE

1. Mount or Extract your Win10 ISO to a location of your choice. If you don’t have a Win10 ISO you may use the links on the 'Source Config' script to download the most recent version.
1. Using the 'Source Config' script, select the location of your source you provided in Step 1 and press the 'Save' button.
1. Select the Source 'install.wim. image. We recommend using the Pro image.
1. Enable the Apps you wish to include in your build. Note that some Apps require additional files or config. **Do not blindly enable all apps and expect to get a successful build**.
1. Tweak any settings you wish.
1. Press the Build button on PEBakery’s Main Menu.
1. Grab a snack or a drink. The build process typically takes from 2 to 7 minutes depending on your PC, internet speed, and the scripts you have enabled. The first build will take a bit longer as project files and registry hives are cached and applications are downloaded.
1. Test your finished build to make sure everything is working as you expect.
1. …
1. Profit!

# Frequently Asked Questions

### Can I use Winbuilder to build PhoenixPE?

No. Winbuilder is no longer developed an contains numerous bugs that have not been fixed, some of which are critical. Winbuilder bugs aside PhoenixPE also makes use of PEBakery exclusive features and additional commands that are not present in Winbuilder.

### Is PhoenixPE a clone/fork of Win10PE_SE/Win10XPE/ETC...

No. PhoenixPE development started around 2014 as a Winbuilder project and was originally envisioned as a replacement for the Win10PE_SE project, which had become bloated and hard to maintain. In 2016 PhoenixPE was re-written from the ground up for use with the PEBakery engine, providing me with the challenge of coding a project from scratch without Winbuilder bug workarounds or resorting to messy .cmd stuff. It also assisted greatly in testing and documentation during PEBakery development.

### Is PhoenixPE a replacement for Win10XPE?

No. It's an alternative. Both produce a very similar environment based on decades of community members working together. We aren't in competition.

In my option the 2 projects have different goals. Win10XPE states that _"it's main objective is to be simple, user-friendly and to be as fast as possible"_. This caters well to user that just want to press a button and get a working PE without much fuss. Win10XPE does great at providing a simple, pre-packaged experience, however it's core codebase is cumbersome and inconsistent and in an effort to provide a simple user experience, it loses the flexibility and ease of customization advanced users crave. 

PhoenixPE on the other hand targets advanced users and developers that what more control over how and what goes into their PE. It strives to be simple for both users to build, and for developers to contribute/maintain. 

TL;DR: No. It's an alternative. If anything the projects complement each other and encourage developers to work together and share their knowledge and experience. Use the one that best meets your needs. You can't go wrong.