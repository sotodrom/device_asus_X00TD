rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/texascake/android_kernel_asus_sdm660 -b 14-eas-su kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

rm -rf device/asus/sdm660-common
rm -rf device/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/device_asus_X00TD -b ursa device/asus/X00TD

rm -rf vendor/asus
git clone --depth=1 https://github.com/sotodrom/vendor_asus -b ursa vendor/asus

export TZ=Asia/Jakarta
