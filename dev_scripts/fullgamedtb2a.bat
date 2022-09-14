for /R %%f in (*.dta_dta_ps4) do dtxtool\dtxtool dtb2a "%%f" "%%~dpnf.dta"
for /R %%f in (*.script_dta_ps4) do dtxtool\dtxtool dtb2a "%%f" "%%~dpnf_script.dta"
pause