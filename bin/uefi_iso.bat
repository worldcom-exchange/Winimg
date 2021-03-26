echo Creating double bootable ISO file (legacy & uefi...)

echo.

set inputdir=I:\

set outputiso=d:\VM\bootable\TEST.ISO

set label="UEFI_BIOS_BOOT"

 

set biosboot=boot/etfsboot.com

set efiboot=efi/microsoft/boot/efisys.bin

 

IF NOT [%1]==[] (set inputdir=%1)

IF NOT [%2]==[] (set outputiso=%2)

IF NOT [%3]==[] (set label=%3)

 

echo.

echo PARAMETERS:

echo inputdir = %inputdir%

echo outputiso = %outputiso%

echo label = %label%

echo biosboot = %biosboot%

echo efiboot = %efiboot%

 

echo.

echo Creating adouble bootable iso...

echo.

 

rem Command below must be put in single line!

mkisofs -iso-level 4 -l -R -UDF -D -volid %label% -b %biosboot% -no-emul-boot -boot-load-size 8 -hide boot.catalog -eltorito-alt-boot -eltorito-platform efi -no-emul-boot -b %efiboot%  -o %outputiso% %inputdir%