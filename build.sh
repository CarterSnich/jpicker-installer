rm -r output
./icomake.exe icon.ico ICON/*
wix.exe build installer.wxs -o output/jcpicker-picker
echo "Build finished."