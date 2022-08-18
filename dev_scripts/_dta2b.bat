FOR /F "tokens=*" %%G IN ('dir /b *.dta') DO dtxtool\dtxtool dta2b "%%G" "%%~nG.dta_dta_ps4" 3
pause