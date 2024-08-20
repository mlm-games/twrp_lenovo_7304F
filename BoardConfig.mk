#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
# 

# It is not system-as-root
# lun file location - /sys/bus/i2c/devices/i2c-0/device/driver/1100b000.i2c/subsystem/devices/soc/1000f000.pwrap/1000f000.pwrap:mt6392/mt6392-regulator/regulator/regulator.4/subsystem/regulator.14/musb-hdrc.0.auto-vusb/gadget/lun0/file

DEVICE_PATH := device/lenovo/7304F

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := generic


TARGET_IS_64_BIT := true 
TW_INCLUDE_FUSE_EXFAT := true  
TARGET_BOARD_SUFFIX := _64                    # Remove if the device is 32-bit
TARGET_USES_64_BIT_BINDER := true             # Remove if the device is 32-bit

# These two are for MTK Chipsets only
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Bootloader
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 160

# Kernel
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_KERNEL_TAGS_OFFSET := 0x0df88000
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
# BOARD_KERNEL_IMAGE_NAME := Image
# TARGET_KERNEL_CONFIG := 7304F_defconfig
# TARGET_KERNEL_SOURCE := kernel/lenovo/7304F
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)

# Kernel - prebuilt
# ARGET_FORCE_PREBUILT_KERNEL := true
# ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
# endif

# TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 11088784
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Platform
TARGET_BOARD_PLATFORM := mt8167
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME :=      # ro.product.board doesnt have a value...

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

# #Save space
# TW_EXCLUDE_ENCRYPTED_BACKUPS := true
# TW_EXCLUDE_APP_MANAGER := true
# # BOARD_HAS_NO_REAL_SDCARD := true # disables things like sdcard partitioning and may save you some space if TWRP isn't fitting in your recovery partition (for system-as-root?)
# #TW_NO_EXFAT_FUSE := true
# TARGET_BOOTANIMATION_TEXTURE_CACHE := false
# TARGET_BOOTANIMATION_USE_RGB565 := true
# TW_NO_SCREEN_TIMEOUT := true
# TW_EXTRA_LANGUAGES := false
# # TW_NO_FLASH_SPARK := true
# # # To remove later
# # TW_EXCLUDE_EXFAT := true
# # TW_EXCLUDE_NTFS := true
# # TW_NO_SDEXT_PARTITION := true
# TW_NO_SCREEN_BLANK := true
# TW_NO_USB_STORAGE := true
# TW_EXCLUDE_EMOJI := true
# TW_USE_COMPRESSION := false
# # TW_EXCLUDE_MTP := true
# TW_EXCLUDE_SUPERSU := true
# TW_NO_BATT_PERCENT := true
# # TW_INCLUDE_DUMLOCK := true #?
# TW_NO_CPU_TEMP := true
# TW_NO_HAPTICS := true
# TW_USE_MINUI := true
# TW_EXCLUDE_LPTOOLS := true
# TW_EXCLUDE_LPDUMP := true
# TW_EXCLUDE_NANO := true
# TW_EXCLUDE_BASH := true
# TW_EXCLUDE_PYTHON := true
# TW_EXCLUDE_TZDATA := true
# TW_EXCLUDE_TWRPAPP := true
# # TW_DISABLE_ADB := true
# # TW_DISABLE_FASTBOOT := true
# # TW_EXCLUDE_FILEMANAGER := true
# TW_EXCLUDE_TERMINAL := true
# # TW_EXCLUDE_PARTITIONMANAGER := true
# # LOCAL_STRIP_MODULE := true

# # Encryption remove (default?)
# TW_INCLUDE_CRYPTO := false
# TW_EXCLUDE_CRYPTO := true
# TW_EXCLUDE_FBE := true


# Properties
# TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop # Causes a error in android-11

# Trial

TARGET_USERIMAGES_USE_EXT4 := true
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := 14088784
BOARD_FLASH_BLOCK_SIZE := 0
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true