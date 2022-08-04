FOR /F "tokens=*" %%G IN ('dir /b *.script_dta_ps4') DO dtxtool\dtxtool dtb2a "%%G" "%%~nG.dta"
