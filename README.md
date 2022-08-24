# Rock-Band-4-Deluxe

![Header Image](dependencies/header.png)

## Introduction

This Repo contains almost everything you need to build an ark and pkg for Rock Band 4 Deluxe for PS4.

This mod is very early along, so there is a lot that either doesn't work or isn't complete.

## Prerequisites

You will need

- a Hackable PS4 (sytem software 9.00 or lower)
- a copy of Rock Band 4 (1.00/Launch, 1.08, or 2.21/latest/Rivals) that you can extract onto your PC.

Currently the versions of Rock Band 4 set up for easy building is 1.08 (shows up as 1.3.0 inside the game), and 2.21/latest/Rivals (shows up as 2.3.7 inside the game).

## Install

NOTE: You WILL need a modded/hacked console to play this mod on console. I hope this is clear

Setting up the Rock Band 4 Deluxe repo for the first time is meant to be as easy as possible.
As well, it is designed to allow you to automatically receive updates as the repo is updated.

Simply go to the Releases of this repo and grab both files. (one .exe, one .bat)

The exe is a dependency, [Git for Windows](https://gitforwindows.org/).
Git is required for you to take advantage of auto updating via github pulls.
You can setup git with all default options.

Once the dependency is installed, run "_init_repo.bat" in an **empty folder**. git will pull the repo and make sure you are completely up to date.

After Running "_init_repo.bat", extract your Rock Band 4 .ark and .hdr files to the correct build folder (1.0/Launch in _build/launch, 1.08 in _build/1.08, 2.21/latest/Rivals in _build/rivals)

From then on simply run "_build_launch.bat", "_build_1.08.bat", or "_build_rivals.bat" depending on the version you are building for. This script will pull the repo again for updates, build the ARK for you, and spit it out in _build/launch, _build/1.08, or _build/rivals

After the build bat is done open gengp4.exe in dependencies/ps4-pkg-tools (-app for launch/1.08, -patch for 2.21/latest/Rivals), select CUSAXXXXX folder in the correct build folder, and generate a gp4 file.

After the gp4 is generated, open orbis-pub-gen.exe in dependencies/ps4-pkg-tools, open the gp4 and click build, select an output folder and build with the default settings. If you want a slight speedup, build with skip digest calculation checked.

Run the build script again to pull any new updates committed to the repo and rebuild a new ark.

## Included Dependencies

[Git for Windows](https://gitforwindows.org/) - CLI application to allow auto updating rb4dx repo files

[LibForge](https://github.com/mtolly/LibForge) - ForgeTool for modifying Rock Band 4 Textures

[HDiffPatch](https://github.com/sisong/HDiffPatch) - To patch existing Rock Band 4 Arks with the Deluxe updates

[DtxCS](https://github.com/InvoxiPlayGames/DtxCS) - For serializing Rock Band dtb files

[PS4 Fake PKG Tools 3.87](https://github.com/CyB1K/PS4-Fake-PKG-Tools-3.87) - for creating a Rock Band 4 PKG for PS4
