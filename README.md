<div align="center">

![Header Image](dependencies/header.png)

## *Rock Band 4 Deluxe (1.08)* is a Quality-of-Life Improvement Mod for PlayStation 4.

### 👉 See [Full Feature List](https://github.com/hmxmilohax/rock-band-4-deluxe/blob/main/dependencies/features.md#features)

### 📥 [Download Now!](#%EF%B8%8F-what-youll-need)

</div>

# ✍️ What You'll Need

### Playing *Rock Band 4 Deluxe (1.08)* requires these things:

- The Rock Band 4/Amplitude specific build of [ShadPS4 Emulator](nightly.link/LlysiX/shadPS4/workflows/build/rb4-testing)
- a Hackable PS4 running GoldHEN 2.3.0+ (sytem software 11.00 or lower)
- a copy of Rock Band 4 version 1.08 (shows up as 1.3.0 in game) installed on your PS4/emulator.
  - if you are looking for a build better suited for a real PS4 on the latest version of Rock Band 4, you can find that [here](https://github.com/hmxmilohax/Rock-Band-4-Deluxe?tab=readme-ov-file)

<br/>

# 📥 Downloads

*Rock Band 4 Deluxe recieves infrequent updates. You can click the `Watch` button (All Activity) to be notified about any updates that occur.*

![last updated:](https://img.shields.io/github/last-commit/hmxmilohax/Rock-Band-4-Deluxe/1.08?label=last%20updated%3A)

### 📥 [Playstation 4/ShadPS4](https://nightly.link/hmxmilohax/rock-band-4-deluxe/workflows/build/1.08/RB4DX-PS4.zip)

<br/>

> Continue to: 
    - [Installing on PS4](#-installing-on-ps4)
    - [Installing on ShadPS4](#-installing-on-shadps4)
    
## 📩 Installing on PS4
**NOTE: You WILL need a JAILBROKEN (GoldHen 2.3.0+) PS4 in order to play this mod on console. We hope this is clear.**

download the latest release of the [GoldHEN plugins repository.](https://github.com/GoldHEN/GoldHEN_Plugins_Repository/releases/latest) install that to your PS4 following the instructions found [here.](https://github.com/GoldHEN/GoldHEN_Plugins_Repository#quick-start)

Download [**Rock Band 4 Deluxe**](#-downloads), Extract the zip somewhere on your PC.

Once that is complete, open the folder called `GoldHEN`.

Copy the `plugins` folder, `RB4DX` folder, and `plugins.ini` file to `/data/GoldHEN/` on your PS4.

If you already have a `plugins.ini` on your PS4 and do not want to replace it, edit your current `plugins.ini` file to add these lines:

```ini
; Rock Band 4 Deluxe Plugins
;US
[CUSA02084]
/data/GoldHEN/plugins/RB4DX-Plugin.prx
/data/GoldHEN/plugins/no_share_watermark.prx
;EU
[CUSA02901]
/data/GoldHEN/plugins/RB4DX-Plugin.prx
/data/GoldHEN/plugins/no_share_watermark.prx
```

To update RB4DX, first delete the `ps4` folder in the `/data/GoldHEN/RB4DX/` folder on your ps4, then follow the steps above again (you do not need to edit `plugins.ini` if you have edited it for RB4DX before).

If the plugin is not loading, you may need to change the file permissions of the plugin to allow it to run. This can be done with the PS4/GoldHen Cheats Manager, in the settings there is a button labelled `Set file permissions for Plugins`, pressing this should make the plugin load correctly.

If the plugin is loading, but no dx modifications are showing up, then you may need to change the permissions of the RB4DX folder on the PS4, or retransfer the RB4DX folder entirely

## 📩 Installing on ShadPS4

Download [**Rock Band 4 Deluxe (1.08)**](#-downloads), Extract the zip somewhere on your PC.

Once that is complete, open the folder called `GoldHEN`.

open the `plugins` folder, and copy the file inside it to the `sce_module` folder in the games files (right click rb4, open folder->open game folder).

Then copy the `RB4DX-1.08` folder to `user/data/CUSA02084/GoldHEN/` in the emulator files. If the folder doesn't exist, create it.

To update RB4DX, first delete the `ps4` folder in the `user/data/CUSA02084/GoldHEN/RB4DX-1.08/` folder on your ps4, then follow the steps above again.

# 🔨 Building (NOT standard download and install)

### Installing Python (Required)

* Head to the [**Python downloads**](https://www.python.org/downloads/), download and install Python (version 3.9 or later).
  * ***Select "Add python.exe to PATH"*** on the installer.

![Python PATH](dependencies/images/pythonpath.png)

### Initializing the Repo

* Go to the **[Releases](https://github.com/hmxmilohax/rock-band-4-deluxe/releases)** of this repo and **download `_init_repo.py`**.
  * Make a new **empty** folder, **put `_init_repo.py` in the folder, and run it**. This will pull the repo down for you and make sure you're completely up to date. **This will take some time.**

### ***The folder should look like this once it's done:***

![Repo Folder](dependencies/images/repofolder.png)

### ✅ ***The Rock Band 4 Deluxe repo is now set up!***

From here, you can make any personal modifications to the game or build it yourself.

  * Run the `build.bat` script to build *Rock Band 4 Deluxe*.
  * Built contents will be in the `_build` folder on the root of the repo.

You can now return to [**Installing**](#-installing)

# 🖥️ Dependencies

[Git for Windows](https://gitforwindows.org/) - CLI application to allow auto updating Deluxe repo files

[Python](https://www.python.org/downloads/) - For user script functionality (NOTE: 3.9 or newer is highly recommended!)

[LibForge](https://github.com/mtolly/LibForge) - ForgeTool for modifying Rock Band 4 Textures

[DtxCS](https://github.com/InvoxiPlayGames/DtxCS) - For serializing Rock Band dtb files

[RB4DX-Plugin](https://github.com/LlysiX/RB4DX-Plugin) - GoldHEN Plugin used for loading RB4DX flies
