FOR /F "tokens=*" %%G IN ('dir /b *.png_ps4') DO forgetool\forgetool tex2png "%%G" "%%~nG.png"
FOR /F "tokens=*" %%G IN ('dir /b *.bmp_ps4') DO forgetool\forgetool tex2png "%%G" "%%~nG.png"