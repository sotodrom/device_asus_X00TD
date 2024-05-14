rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm636 -b 14-ksu kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

rm -rf device/asus
git clone --depth=1 https://github.com/sotodrom/device_asus_X00TD -b 14 device/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/device_asus_sdm660-common -b evo device/asus/sdm660-common

export TZ=Asia/Jakarta
