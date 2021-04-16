#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Ancient stuff
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_OP_FILE_MANAGER := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := ssos_RMX1901
PRODUCT_MODEL := Realme X

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Fingerprint
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys
BUILD_DESCRIPTION := redfin-user 11 RQ2A.210405.005 7181113 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC=$(BUILD_DESCRIPTION)

# ShapeShift specific properties
PRODUCT_PRODUCT_PROPERTIES += \
  ro.ssos.cpu=SD865
