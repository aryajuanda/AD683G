#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2013 ROSA Lab
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true
USE_CAMERA_STUB := true

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7627a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := AD683G

BOARD_KERNEL_CMDLINE := console=tty,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
# Boot image size is 18480 x 512 bytes = 9461760
# You can double check it with fdisk -l /dev/block/mmcblk0p8
#BOARD_BOOTIMAGE_PARTITION_SIZE     := 9461760
# Recovery image size is 20480 x 512 bytes = 10485760
# You can double check it with fdisk -l /dev/block/mmcblk0p16
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
# System image size is 700000 x 512 bytes = 358400000
# You can double check it with fdisk -l /dev/block/mmcblk0p12
#BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 358400000
# User data image size is 4280000 x 512 bytes = 2191360000
# You can double check it with fdisk -l /dev/block/mmcblk0p13
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 2191360000
#BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

# EGL settings
BOARD_EGL_CFG := device/hisense/AD683G/configs/egl.cfg

# BT
BOARD_HAVE_BLUETOOTH := true

# Kernel / Ramdisk
TARGET_PREBUILT_KERNEL := device/hisense/AD683G/prebuilt/kernel
TARGET_PROVIDES_INIT_TARGET_RC := true

#Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/hisense/AD683G/prebuilt/recovery_kernel
TARGET_RECOVERY_INITRC := device/hisense/AD683G/recovery/init.rc
BOARD_HAS_NO_SELECT_BUTTON := true

# Misc
TARGET_PROVIDES_INIT_RC := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/hisense/AD683G/releasetools/AD683G_ota_from_target_files
