#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common RiceDroidOs stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true
HAS_FOD := true

# maintainer flag
RICE_MAINTAINER := BASUBHAJANTRI
RICE_OFFICIAL := true

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Pixel charging animation
TARGET_INCLUDE_PIXEL_CHARGER := true

TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_GAPPS_ARCH := arm64

# Inherit from laurel_sprout device
$(call inherit-product, $(LOCAL_PATH)/laurel_sprout.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := laurel_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_laurel_sprout
PRODUCT_MODEL := Mi A3

# ABI Checks
SKIP_ABI_CHECKS := true

BUILD_FINGERPRINT := "google/raven/raven:12/SP2A.220505.002/8353555:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 10 QKQ1.190910.002 V11.0.15.0.QFQMIXM release-keys" \
    PRODUCT_NAME="laurel_sprout"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Gapps build
WITH_GAPPS := true

# Quick tap
TARGET_SUPPORTS_QUICK_TAP := true

# Enable blur support
TARGET_ENABLE_BLUR := true
