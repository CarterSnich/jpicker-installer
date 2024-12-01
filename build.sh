# recreate TEMP folder
rm -r TEMP
mkdir TEMP

# download updated version
curl -fL https://annystudio.com/jcpicker.exe -o "TEMP/jcpicker.exe"

# extract and generate icon
./tools/7z.exe e TEMP/jcpicker.exe ".rsrc/0/ICON/*" -oTEMP/ICON
./tools/icomake.exe TEMP/icon.ico TEMP/ICON/*

# build
wix.exe build installer.wxs -o TEMP/jcpicker-picker
