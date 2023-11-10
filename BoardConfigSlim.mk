#
# Copyright (C) 2023 The SlimRoms Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.lz4
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := floral_defconfig
TARGET_KERNEL_SOURCE := kernel/google/msm-4.14
TARGET_NEEDS_DTBOIMAGE := true

# Verified Boot
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
