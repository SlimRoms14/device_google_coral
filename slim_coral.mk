#
# Copyright (C) 2023 The SlimRoms Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common SlimRoms stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

include device/google/coral/device-slim.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := slim_coral

# Boot animation
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 13 TP1A.220624.014 8819323 release-keys"

BUILD_FINGERPRINT := google/coral/coral:13/TP1A.220624.014/8819323:user/release-keys

$(call inherit-product, vendor/google/coral/coral-vendor.mk)
