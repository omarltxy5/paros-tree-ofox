#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, device/motorola/paros/BoardConfig.mk)

# Inherit from paros device
$(call inherit-product, device/motorola/paros/device.mk)

PRODUCT_DEVICE := paros
PRODUCT_NAME := twrp_paros
PRODUCT_BRAND := motorola
PRODUCT_MODEL := paros
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="paros-user 12 SUQ32HV-V1-ST14 1e526 release-keys"

BUILD_FINGERPRINT := motorola/paros/paros:12/SUQ32HV-V1-ST14/1e526:user/release-keys
