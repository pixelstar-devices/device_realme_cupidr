#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cupidr device
$(call inherit-product, device/realme/cupidr/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
USE_PIXEL_CHARGER := true
PIXELSTAR_BUILD_TYPE := official

PRODUCT_NAME := pixelstar_cupidr
PRODUCT_DEVICE := cupidr
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2202

PRODUCT_SYSTEM_NAME := RMX2202L1
PRODUCT_SYSTEM_DEVICE := RMX2202L1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX2202-user 13 TP1A.220905.001 R.13639a6-a-2bdaa release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX2202/RMX2202L1:13/TP1A.220905.001/R.13639a6-a-2bdaa:user/release-keys
