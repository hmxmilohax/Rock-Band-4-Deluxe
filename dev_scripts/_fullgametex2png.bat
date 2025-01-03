for /R %%f in (*.png_ps4) DO forgetool\forgetool tex2png "%%f" "%%~dpnf.png"
for /R %%f in (*.bmp_ps4) DO forgetool\forgetool tex2png "%%f" "%%~dpnf.png"