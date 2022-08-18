FOR /F "tokens=*" %%G IN ('dir /b *.dta_dta_ps4') DO dtxtool\dtxtool dtb2a "%%G" "%%~nG.dta"
