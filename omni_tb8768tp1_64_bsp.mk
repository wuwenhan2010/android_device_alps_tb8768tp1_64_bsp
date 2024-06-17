#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from tb8768tp1_64_bsp device
$(call inherit-product, device/alps/tb8768tp1_64_bsp/device.mk)

PRODUCT_DEVICE := tb8768tp1_64_bsp
PRODUCT_NAME := omni_tb8768tp1_64_bsp
PRODUCT_BRAND := alps
PRODUCT_MODEL := tb8768tp1_64_bsp
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-joyar

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8768tp1_64_bsp-userdebug 11 RP1A.200720.011 1642571375 release-keys"

BUILD_FINGERPRINT := alps/full_tb8768tp1_64_bsp/tb8768tp1_64_bsp:11/RP1A.200720.011/1642571375:userdebug/release-keys
