#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from GS5_LITE device
$(call inherit-product, device/gigaset/GS5_LITE/device.mk)

PRODUCT_DEVICE := GS5_LITE
PRODUCT_NAME := omni_GS5_LITE
PRODUCT_BRAND := Gigaset
PRODUCT_MODEL := E940-2878-03
PRODUCT_MANUFACTURER := gigaset

PRODUCT_GMS_CLIENTID_BASE := android-gigaset

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="GS5_LITE-user 12 SP1A.210812.016 1654521196 release-keys"

BUILD_FINGERPRINT := Gigaset/GS5_LITE_EEA/GS5_LITE:12/SP1A.210812.016/1654518908:user/release-keys
