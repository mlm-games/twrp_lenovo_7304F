#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff.
$(call inherit-product-if-exists, vendor/omni/config/common.mk)
$(call inherit-product-if-exists, vendor/omni/config/gsm.mk)

# Inherit some common Pitchblack stuff.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Time Zone data for recovery
#PRODUCT_COPY_FILES += \
#    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# # Inherit from TB-7304F device
# $(call inherit-product, device/lenovo/7304F/device.mk)

PRODUCT_DEVICE := 7304F
PRODUCT_NAME := omni_7304F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-7304F
PRODUCT_MANUFACTURER := lenovo

# PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# PRODUCT_BUILD_PROP_OVERRIDES += \
#     PRIVATE_BUILD_DESC="TB-7304F_RF01_220523 release-keys"

# BUILD_FINGERPRINT := Lenovo/LenovoTB-7304F/TB-7304F:7.0/NRD90M/TB-7304F_S100018_220523_ROW:user/release-keys
