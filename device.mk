#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.$(PRODUCT_PLATFORM).recovery
    
# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
    
# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file

# TWRP specific build flags
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_TOOLBOX := true
TW_INCLUDE_NTFS_3G := true
