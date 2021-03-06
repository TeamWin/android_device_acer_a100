#
# Copyright (C) 2012 The CyanogenMod Project
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

# ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.vangogh.usb.rc:root/init.vangogh.usb.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/ueventd.vangogh.rc:root/ueventd.vangogh.rc

# hw permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml

# prebuilt configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/usr/idc/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/acer-dock.kl:system/usr/keylayout/acer-dock.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

TARGET_BOOTANIMATION_NAME := horizontal-1024x600

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# tiny_hal
PRODUCT_PACKAGES += audio.primary.vangogh
PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/etc/sound/tiny_hw.xml:system/etc/sound/a100.xml

$(call inherit-product, build/target/product/full_base.mk)

# inherit t20-common
$(call inherit-product, device/acer/t20-common/t20-common.mk)

# inherit proprietary files
$(call inherit-product-if-exists, vendor/acer/a100/a100-vendor.mk)

PRODUCT_DEVICE := a100
PRODUCT_MODEL  := A100
PRODUCT_NAME := a100