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

# include acer t20 common
include device/acer/t20-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := vangogh
TARGET_OTA_ASSERT_DEVICE := vangogh,a100

BOARD_USES_TINY_AUDIO_HW := true

# kernel
#TARGET_KERNEL_SOURCE := kernel/acer/t20-common
#TARGET_KERNEL_CONFIG := cyanogenmod_vangogh_defconfig

BOARD_BOOTIMAGE_PARTITION_SIZE     := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 629145600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5941231616
BOARD_FLASH_BLOCK_SIZE             := 131072

#TWRP
BOARD_SUPPRESS_EMMC_WIPE := true
DEVICE_RESOLUTION := 1024x600
RECOVERY_SDCARD_ON_DATA := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
TW_CUSTOM_POWER_BUTTON := 116
TW_NO_USB_STORAGE := true
TARGET_PREBUILT_RECOVERY_KERNEL :=device/acer/a100/kernel
TARGET_PREBUILT_KERNEL=device/acer/a100/kernel
TW_FORCE_CPUINFO_FOR_DEVICE_ID := true

