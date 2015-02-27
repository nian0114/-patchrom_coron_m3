#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7380992 b1830e24017e8dbf804b1412c7d1fc61c10c19eb 5036032 37093f6ee7eb18ecafe27a465fe641e4fedc6688
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p9:7380992:b1830e24017e8dbf804b1412c7d1fc61c10c19eb; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p8:5036032:37093f6ee7eb18ecafe27a465fe641e4fedc6688 EMMC:/dev/block/mmcblk0p9 b1830e24017e8dbf804b1412c7d1fc61c10c19eb 7380992 37093f6ee7eb18ecafe27a465fe641e4fedc6688:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
