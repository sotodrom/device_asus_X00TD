rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm636 -b 14-ksu kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

rm -rf device/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/device_asus_X00TD -b ursa device/asus/X00TD

rm -rf frameworks/base
git clone --depth=1 https://github.com/sotodrom/android_frameworks_base -b ursa frameworks/base

export TZ=Asia/Jakarta
