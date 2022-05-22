Place your custom apps in this folder to integrate them into PhoenixPE.

Scripts are organized into folders that correspond to the various run levels used by PhoenixPE


Level      Folder          Description
------     -------         ------------
1          Pre-Build       Pre-Build Configuration
2          Core            Core Build Scripts
3          Shell           Shell Components
4          Components      Scripts that add or activate core functionality such as ramdisk, networking, printing, RDP, etc.
4          Tweaks          Customization to existing functionality. Generally used for registry tweaks and personalization.      
5          Applications    General Applications
6          Drivers         Driver Intergration (Display, NIC, etc.)
7          Finalize        Final configuration, cleanup, and creation of boot.wim
8          Media Creation  Scripts for creating the final boot media.
9          Testing         Scripts for testing and verifying the finished build.
10         Toolbox         Misc. tools useful for script developers.

