rm -rf kernel/asus/sdm660
git clone --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b staging kernel/asus/sdm660

rm -rf vendor/lineage-priv
git clone https://github.com/Tiktodz/vendor -b blaze kntl && cp -R kntl/* vendor/ && rm -rf kntl

rm -rf device/asus/sdm660-common
rm -rf vendoe/asus
git clone --depth=1 https://github.com/Tiktodz/android_device_asus_sdm660-common-4.19 device/asus/sdm660-common
git clone --depth=1 https://github.com/Tiktodz/proprietary_vendor_asus-4.19 vendor/asus
