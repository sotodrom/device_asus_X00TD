rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace
rm -rf kernel/asus/sdm660/KernelSU/website
rm -rf kernel/asus/sdm660/KernelSU/scripts
rm -rf kernel/asus/sdm660/KernelSU/docs

rm -rf vendor/asus
git clone --depth=1 https://github.com/sotodrom/vendor_asus -b udc vendor/asus

rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/sotodrom/device_asus_sdm660-common -b blazeify device/asus/sdm660-common

git clone https://github.com/inexdroid/keys && cp -R keys/* vendor/blaze/signing/keys/ && rm -rf keys

export BUILD_USER=queen
export BUILD_USERNAME=queen
export TZ=Asia/Jakarta
