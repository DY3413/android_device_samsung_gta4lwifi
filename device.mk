#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot control HAL
PRODUCT_PLATFORM := bengal
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.$(PRODUCT_PLATFORM).recovery
    
# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Keystore
PRODUCT_PACKAGES += \
    android.system.keystore2

# Qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file

TARGET_RECOVERY_DEVICE_MODULES += libion
RECOVERY_LIBRARY_SOURCE_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

# TWRP specific build flags
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_TOOLBOX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_NTFS_3G := true

# TWRP Configuration: Logd
TWRP_EVENT_LOGGING := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
