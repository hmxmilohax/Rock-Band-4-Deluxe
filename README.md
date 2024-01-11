# Rock-Band-4-Deluxe

![Header Image](dependencies/header.png)

## Introduction

This Repo contains almost everything you need to build files for Rock Band 4 Deluxe for PS4.

This mod is very early along, so there is a lot that either doesn't work or isn't complete.

## Prerequisites

You will need

- a Hackable PS4 with GoldHEN 2.3.0+ (sytem software 9.00 or lower)
- a copy of Rock Band 4 version 2.21 (shows up as 2.3.7 in game) installed on your PS4.

## Building

NOTE: You WILL need a modded/hacked console to play this mod on console. I hope this is clear

Setting up the Rock Band 4 Deluxe repo for the first time is meant to be as easy as possible.
As well, it is designed to allow you to automatically receive updates as the repo is updated.

Simply go to the Releases of this repo and grab both files. (one .exe, one .bat)

The exe is a dependency, [Git for Windows](https://gitforwindows.org/).
Git is required for you to take advantage of auto updating via github pulls.
You can setup git with all default options.

Once the dependency is installed, run `_init_repo.bat` in an **empty folder**. git will pull the repo and make sure you are completely up to date.

From then on simply run `_build.bat`. This script will pull the repo again for updates, build the ARK for you, and spit it out in `_build`,

Run the build script again to pull any new updates committed to the repo and rebuild a new ark.

## Installing

After the build bat is complete, download the latest release of the [GoldHEN plugins repository.](https://github.com/GoldHEN/GoldHEN_Plugins_Repository/releases/latest) install that to your PS4 following the instructions found [here.](https://github.com/GoldHEN/GoldHEN_Plugins_Repository#getting-started)

Once that is complete, copy the `plugins` folder and `plugins.ini` file in `_build/GoldHEN` to `/data/GoldHEN/` on your PS4 or edit your current `plugins.ini` file to add these lines

```ini
; Rock Band 4 Deluxe Plugins
;US
[CUSA02084]
/data/GoldHEN/plugins/afr.prx
/data/GoldHEN/plugins/RB4DX-Plugin.prx
/data/GoldHEN/plugins/no_share_watermark.prx
;EU
[CUSA02901]
/data/GoldHEN/plugins/afr.prx
/data/GoldHEN/plugins/RB4DX-Plugin.prx
/data/GoldHEN/plugins/no_share_watermark.prx
```

after that, copy the `ps4` folder found in `_build/` to your ps4 in the folder `/data/GoldHEN/AFR/CUSA02084/` for a US copy or `/data/GoldHEN/AFR/CUSA02084/` for a EU copy. If the folder does not exist, create it.

## Included Dependencies

[Git for Windows](https://gitforwindows.org/) - CLI application to allow auto updating rb4dx repo files

[LibForge](https://github.com/mtolly/LibForge) - ForgeTool for modifying Rock Band 4 Textures

[DtxCS](https://github.com/InvoxiPlayGames/DtxCS) - For serializing Rock Band dtb files

[RB4DX-Plugin](https://github.com/LlysiX/RB4DX-Plugin) - GoldHEN Plugin used for loading RB4DX flies
