git pull https://github.com/LlysiX/rock-band-4-deluxe main
@echo OFF
mkdir _tmpbuild
for /R "%~dp0_build\ps4" %%f in (*) do del "%%f"
rmdir /s /q "%~dp0_build\ps4"
echo:Building Rock Band 4 Deluxe files...
xcopy /q /e /y _ark\ps4 _tmpbuild
for /R "%~dp0_tmpbuild" %%f in (*.dta) do IF NOT "%%~xf" == ".dta_dta_ps4" dependencies\dtxtool\dtxtool dta2b "%%f" "%%~dpnf.dta_dta_ps4" 3
for /R "%~dp0_tmpbuild" %%f in (*.script) do IF NOT "%%~xf" == ".script_dta_ps4" dependencies\dtxtool\dtxtool dta2b "%%f" "%%~dpnf.script_dta_ps4" 3
for /R "%~dp0_tmpbuild" %%f in (*.dta) do IF NOT "%%~xf" == ".dta_dta_ps4" del "%%f"
for /R "%~dp0_tmpbuild" %%f in (*.script) do IF NOT "%%~xf" == ".script_dta_ps4" del "%%f"
xcopy /q /e /y _tmpbuild _build\ps4\
for /R "%~dp0_tmpbuild" %%f in (*) do del "%%f"
rmdir /s /q "%~dp0_tmpbuild"
echo:Created Rock Band 4 Deluxe files.
echo:Complete! Copy the ps4 folder in _build into /data/GoldHEN/RB4DX/ on your PS4.
pause