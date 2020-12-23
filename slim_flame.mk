#
# Copyright (C) 2023 The SlimRoms Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common SlimRoms stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

include device/google/coral/device-slim.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := slim_flame

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=flame \
    PRIVATE_BUILD_DESC="flame-user 13 TP1A.220624.014 8819323 release-keys"

BUILD_FINGERPRINT := google/flame/flame:13/TP1A.220624.014/8819323:user/release-keys

$(call inherit-product, vendor/google/flame/flame-vendor.mk)
