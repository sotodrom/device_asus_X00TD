rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm636 -b 14-ksu kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

rm -rf device/asus
git clone --depth=1 https://github.com/sotodrom/device_asus_X00TD -b los device/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/device_asus_sdm660-common -b evo device/asus/sdm660-common

rm -rf build/soong
git clone --depth=1 https://github.com/sotodrom/android_build_soong -b 14 build/soong

#rm -rf hardware/lineage/interfaces
#git clone --depth=1 https://github.com/sotodrom/android_hardware_lineage_interfaces -b 14 hardware/lineage/interfaces

rm -rf device/lineage/sepolicy
git clone --depth=1 https://github.com/sotodrom/android_device_lineage_sepolicy -b 14 device/lineage/sepolicy

rm -rf device/qcom/sepolicy-legacy-um
git clone --depth=1 https://github.com/sotodrom/android_device_qcom_sepolicy -b lineage-21.0-legacy-um device/qcom/sepolicy-legacy-um

rm -rf frameworks/base
git clone --depth=1 https://github.com/Tiktodz/android_frameworks_base frameworks/base

export TZ=Asia/Jakarta
