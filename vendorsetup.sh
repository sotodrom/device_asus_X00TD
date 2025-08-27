#!/bin/bash

rm -rf kernel/asus/sdm660
git clone --depth=1 https://github.com/Tiktodz/android_kernel_asus_sdm636 -b cip kernel/asus/sdm660

#rm -rf device/asus
git clone --depth=1 https://github.com/sotodrom/device_asus_X00TD -b los device/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/device_asus_sdm660-common -b evo device/asus/sdm660-common

rm -rf hardware/qcom-caf/msm8998/audio
rm -rf hardware/qcom-caf/msm8998/display
rm -rf hardware/qcom-caf/msm8998/media
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_audio -b 14-los hardware/qcom-caf/msm8998/audio
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_display -b 14-los hardware/qcom-caf/msm8998/display
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_media -b 14 hardware/qcom-caf/msm8998/media

rm -rf vendor/lineage-priv
git clone https://github.com/ardia-kun/vendor -b 14-backup vlp && cp -R vlp/* vendor/ && rm -rf vlp

export TZ=Asia/Jakarta
