#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/gtaxllte/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit PixelGApps
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

TARGET_GAPPS_OVERRIDE += \
    GoogleDialer

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_gtaxllte
PRODUCT_DEVICE := gtaxllte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T585
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.picture_in_picture.xml:system/etc/permissions/android.software.picture_in_picture.xml \

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="gtaxllte" \
    PRODUCT_NAME="gtaxllte" \
    PRIVATE_BUILD_DESC="gtaxlltexx-user 8.1.0 M1AJQ T585XXU4CRK5 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/sagit/sagit:7.1.1/NMF26X/V8.2.17.0.NCACNEC:user/release-keys

TARGET_VENDOR := Samsung
