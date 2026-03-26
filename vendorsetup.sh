#!/bin/bash

# Removing
rm -rf device/asus/sdm660-common
rm -rf kernel/asus
rm -rf vendor/asus

# Cloning
git clone --depth=1 https://github.com/Tiktodz/device_asus_sdm660-common-4.19 device/asus/sdm660-common
git clone --depth=1 --recurse-submodules https://github.com/Tiktodz/android_kernel_asus_sdm660 --single-branch kernel/asus/sdm660
git clone --depth=1 https://github.com/Tiktodz/vendor_asus-4.19 vendor/asus

# Renaming
sed -i 's/CONFIG_LOCALVERSION=.*/CONFIG_LOCALVERSION="-TOM-969"/g' kernel/asus/sdm660/arch/arm64/configs/asus/X00TD_defconfig
sed -i 's/CONFIG_SCHED_THERMAL_PRESSURE=.*/CONFIG_SCHED_THERMAL_PRESSURE=n/g' kernel/asus/sdm660/arch/arm64/configs/asus/X00TD_defconfig
sed -i 's/CONFIG_SCHED_CASS=.*/CONFIG_SCHED_CASS=n/g' kernel/asus/sdm660/arch/arm64/configs/asus/X00TD_defconfig

# Signing
rm -rf vendor/evolution-priv/keys
git clone https://github.com/Evolution-X/vendor_evolution-priv_keys-template vendor/evolution-priv/keys
cd vendor/evolution-priv/keys
bash keys.sh
cd -
