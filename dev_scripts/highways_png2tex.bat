cd ..\dx_textures\highways\
FOR /F "tokens=*" %%G IN ('dir /b *.png') DO ..\..\dependencies\forgetool\forgetool png2tex "%%G" "%%~nG.bmp_ps4"