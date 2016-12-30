#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9000960 9d3e8f5f164c8d1aab94b332e5a5e3d6d5872da4 7325696 42d801c1c8d919a18ba623a0b6d9684c76c53355
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9000960:9d3e8f5f164c8d1aab94b332e5a5e3d6d5872da4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7325696:42d801c1c8d919a18ba623a0b6d9684c76c53355 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 9d3e8f5f164c8d1aab94b332e5a5e3d6d5872da4 9000960 42d801c1c8d919a18ba623a0b6d9684c76c53355:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
