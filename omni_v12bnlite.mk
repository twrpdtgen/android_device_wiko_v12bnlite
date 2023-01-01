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

# Inherit from v12bnlite device
$(call inherit-product, device/wiko/v12bnlite/device.mk)

PRODUCT_DEVICE := v12bnlite
PRODUCT_NAME := omni_v12bnlite
PRODUCT_BRAND := WIKO
PRODUCT_MODEL := View
PRODUCT_MANUFACTURER := wiko

PRODUCT_GMS_CLIENTID_BASE := android-wiko-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="v12bnlite-user 7.1.2 N2G47H eng.android.1535682088 release-keys"

BUILD_FINGERPRINT := WIKO/v12bnlite/v12bnlite:7.1.2/N2G47H/androi08311044:user/release-keys
