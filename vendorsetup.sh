rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm636 -b 14-ksu kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

rm -rf device/asus
git clone --depth=1 https://github.com/sotodrom/device_asus_X00TD -b 14 device/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/device_asus_sdm660-common -b evo device/asus/sdm660-common

#rm -rf bionic
#git clone --depth=1 https://github.com/sotodrom/bionic -b 14 bionic

#rm -rf device/lineage/sepolicy
#rm -rf system/sepolicy
#git clone --depth=1 https://github.com/sotodrom/android_device_lineage_sepolicy -b 14 device/lineage/sepolicy
#git clone --depth=1 https://github.com/sotodrom/android_system_sepolicy -b 14 system/sepolicy

#rm -rf build/make
#rm -rf build/soong
#rm -rf system/core
#git clone --depth=1 https://github.com/sotodrom/android_build -b 14 build/make
#git clone --depth=1 https://github.com/sotodrom/android_build_soong -b 14 build/soong
#git clone --depth=1 https://github.com/sotodrom/android_system_core -b 14.0 system/core

#rm -rf hardware/lineage/interfaces
#git clone --depth=1 https://github.com/sotodrom/android_hardware_lineage_interfaces hardware/lineage/interfaces

export TZ=Asia/Jakarta
