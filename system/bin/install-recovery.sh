#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28247374:eac6defebd9e813339860bef3616bbb3cca32df3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24634698:e3cc3ae805baf1a0031902ff3d6dc79086e20285 EMMC:/dev/block/bootdevice/by-name/recovery eac6defebd9e813339860bef3616bbb3cca32df3 28247374 e3cc3ae805baf1a0031902ff3d6dc79086e20285:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
