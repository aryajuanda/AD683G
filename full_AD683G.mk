#
# Copyright (C) 2012 The Android Open-Source Project
# Copyright (C) 2013 ROSA Lab <me@kc.vc>
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_CHARACTERISTICS := tablet

# Files needed for boot image
PRODUCT_COPY_FILES := \
    device/hisense/AD683G/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/hisense/AD683G/ramdisk/init.goldfish.rc:root/init.goldfish.rc \
    device/hisense/AD683G/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/hisense/AD683G/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/hisense/AD683G/ramdisk/ueventd.AD683G.rc:root/ueventd.AD683G.rc \
    device/hisense/AD683G/ramdisk/ueventd.rc:root/ueventd.rc \
    device/hisense/AD683G/ramdisk/init.cal.rc:root/init.cal.rc \
    device/hisense/AD683G/ramdisk/init.rc:root/init.rc

# Kernel
PRODUCT_COPY_FILES := \
    device/hisense/AD683G/prebuilt/kernel:kernel \

# Recovery stuff
PRODUCT_COPY_FILES += \
    device/hisense/AD683G/recovery/sbin/recovery:recovery/root/sbin/recovery \
    device/hisense/AD683G/recovery/sbin/adbd:recovery/root/sbin/adbd

# Prebuilt Audio/GPS/Camera configs
PRODUCT_COPY_FILES += \
    device/hisense/AD683G/configs/audio_effects.conf:system/etc/audio_effects.conf \
    device/hisense/AD683G/configs/media_profiles.xml:system/etc/media_profiles.xml \

# BT config
PRODUCT_COPY_FILES += \
  system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Vold.fstab
PRODUCT_COPY_FILES += \
    device/hisense/AD683G/vold.fstab:system/etc/vold.fstab \
    device/hisense/AD683G/vold.fstab:system/etc/vold_sdcard.fstab

# Input device configeration files
PRODUCT_COPY_FILES += \
    device/hisense/AD683G/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/hisense/AD683G/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/hisense/AD683G/usr/keylayout/Vendor_046d_Product_c21d.kl:system/usr/keylayout/Vendor_046d_Product_c21d.kl \
    device/hisense/AD683G/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/hisense/AD683G/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/hisense/AD683G/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/hisense/AD683G/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/hisense/AD683G/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/hisense/AD683G/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/hisense/AD683G/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/hisense/AD683G/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/hisense/AD683G/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/hisense/AD683G/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/hisense/AD683G/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/hisense/AD683G/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/hisense/AD683G/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/hisense/AD683G/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/hisense/AD683G/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    
# Any prebuilt kernel modules
PRODUCT_COPY_FILES += \
    device/hisense/AD683G/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/hisense/AD683G/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/hisense/AD683G/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
    device/hisense/AD683G/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/hisense/AD683G/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/hisense/AD683G/modules/lcd.ko:system/lib/modules/lcd.ko \
    device/hisense/AD683G/modules/compat/wl12xx_sdio.ko:system/lib/modules/compat/wl12xx_sdio.ko \
    device/hisense/AD683G/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/hisense/AD683G/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    device/hisense/AD683G/modules/ath6kl/ath6kl_sdio.ko:system/lib/modules/ath6kl/ath6kl_sdio.ko \
    device/hisense/AD683G/modules/ath6kl/cfg80211n.ko:system/lib/modules/ath6kl/cfg80211n.ko \

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/hisense/AD683G/AD683G-vendor.mk)

PRODUCT_NAME := full_AD683G
PRODUCT_DEVICE := AD683G
PRODUCT_BRAND := Hisense
PRODUCT_MODEL := AD683G
PRODUCT_MANUFACTURER := Hisense

