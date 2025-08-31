@echo OFF
mkdir _tmpbuild
for /R "%~dp0_build\ps4" %%f in (*) do del "%%f"
rmdir /s /q "%~dp0_build\GoldHEN\RB4DX-1.08\ps4"
echo:Building Rock Band 4 Deluxe files...
for /R "%~dp0_ark" %%f in (*.dta) do IF NOT "%%~xf" == ".dta_dta_ps4" dependencies\dtacheck "%%f" "%~dp0dependencies\dtacheckfns"
for /R "%~dp0_ark" %%f in (*.script) do dependencies\dtacheck "%%f" "%~dp0dependencies\dtacheckfns"
xcopy /q /e /y _ark\ps4 _tmpbuild
python dependencies\gen_version.py "%~dp0_tmpbuild\dx\dx_version.dta"
echo:Converting dtas...
for /R "%~dp0_tmpbuild" %%f in (*.dta) do IF NOT "%%~xf" == ".dta_dta_ps4" dependencies\dtxtool\dtxtool dta2b "%%f" "%%~dpnf.dta_dta_ps4" 3
for /R "%~dp0_tmpbuild" %%f in (*.script) do IF NOT "%%~xf" == ".script_dta_ps4" dependencies\dtxtool\dtxtool dta2b "%%f" "%%~dpnf.script_dta_ps4" 3
for /R "%~dp0_tmpbuild" %%f in (*.dta) do IF NOT "%%~xf" == ".dta_dta_ps4" del "%%f"
for /R "%~dp0_tmpbuild" %%f in (*.script) do IF NOT "%%~xf" == ".script_dta_ps4" del "%%f"
rem echo:Converting pngs...
rem for /R "%~dp0_tmpbuild" %%f in (*.png) do IF NOT "%%~xf" == ".png_ps4" dependencies\forgetool\forgetool png2tex "%%f" "%%~dpnf.png_ps4"
for /R "%~dp0_tmpbuild" %%f in (*.png) do IF NOT "%%~xf" == ".png_ps4" del "%%f"
for /R "%~dp0_tmpbuild" %%f in (*.gitkeep) do del "%%f"
xcopy /q /e /y _tmpbuild _build\GoldHEN\RB4DX-1.08\ps4\
for /R "%~dp0_tmpbuild" %%f in (*) do del "%%f"
rmdir /s /q "%~dp0_tmpbuild"
echo:Created Rock Band 4 Deluxe files.
echo:Complete! Copy the ps4 folder in _build into /data/GoldHEN/RB4DX-1.08/ on your PS4.
pause