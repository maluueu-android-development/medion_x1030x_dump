#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:11751680:1956a671ee5e05c3d5690f88cafb3e48624d610d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:9758976:bf3bf7ddab702574c04be9630e0abc021c45d3f2 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 1956a671ee5e05c3d5690f88cafb3e48624d610d 11751680 bf3bf7ddab702574c04be9630e0abc021c45d3f2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
