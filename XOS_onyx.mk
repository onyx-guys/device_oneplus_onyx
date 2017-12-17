# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from onyx device
$(call inherit-product, device/oneplus/onyx/device.mk)

# Inherit AOSP vendor
$(call inherit-product, vendor/xos/config/common.mk)

# Call the proprietary setup
$(call inherit-product, vendor/oneplus/onyx/onyx-vendor.mk)

PRODUCT_NAME := XOS_onyx
PRODUCT_DEVICE := onyx
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BRAND := OnePlus
TARGET_VENDOR := oneplus
TARGET_VENDOR_PRODUCT_NAME := onyx

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus \
    PRODUCT_NAME=OnePlus \
    BUILD_FINGERPRINT="OnePlus/OnePlus/OnePlus:6.0.1/MMB29M/10281213:user/release-keys" \
    PRIVATE_BUILD_DESC="OnePlus-user 6.0.1 MMB29M 10281213 release-keys"

# AOSP packages
PRODUCT_PACKAGES += \
    Launcher3 \
    messaging \
    SoundRecorder \
    Terminal \
    WallpaperPicker

# AOSP properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.rotation_locked=true \
    ro.storage_manager.enabled=true

UNOFFICIAL_BUILD_ID := YumeMichi
