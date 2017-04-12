#
# Copyright (C) 2015-2016 The CyanogenMod Project
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

LOCAL_PATH := device/InFocus/G42

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi 380dpi hdpi tvdpi mdpi ldpi


DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Device product elements
include $(LOCAL_PATH)/product/*.mk

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := M680_00WW,00WW


# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor product configurations
$(call inherit-product-if-exists, vendor/InFocus/G42/G42-vendor.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
         ro.adb.secure=1\
         persist.service.acm.enable=0\
         ro.secure=1\
         security.perf_harden=1\
         ro.allow.mock.location=0\
         ro.debuggable=0\
         ro.zygote=zygote64_32\
         dalvik.vm.image-dex2oat-Xms=64m\
         dalvik.vm.image-dex2oat-Xmx=64m\
         dalvik.vm.dex2oat-Xms=64m\
         dalvik.vm.dex2oat-Xmx=512m\
         ro.dalvik.vm.native.bridge=0\
         debug.atrace.tags.enableflags=0\
         persist.sys.usb.config=mtp,mass_storage\
         ro.mount.fs=EXT4\
         camera.disable_zsl_mode=1
