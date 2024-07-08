#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
$(call inherit-product, device/asus/sdm660-common/sdm660.mk)

# Inherit keys from source
$(call inherit-product-if-exists, vendor/lineage-priv/keys/keys.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

ifneq (eng,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard vendor/lineage-priv/keys/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/lineage-priv/keys/releasekey
endif
ifneq (,$(wildcard vendor/lineage-priv/keys/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := vendor/lineage-priv/keys/otakey.x509.pem
endif
endif

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service-X00TD

PRODUCT_COPY_FILES += \
    prebuilts/vndk/v32/arm64/arch-arm64-armv8-a/shared/vndk-sp/libhidlbase.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libhidlbase-v32.so

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

# Thermal configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Wifi
PRODUCT_PACKAGES += \
    X00TDWifiOverlay

# Inherit the proprietary files
$(call inherit-product, vendor/asus/X00TD/X00TD-vendor.mk)
