# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/lenovo/7304F/kernel

# Charger
PRODUCT_PACKAGES += \
   charger_res_images \
   charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/fstab.mt8167:root/fstab.mt8167 \
    $(LOCAL_PATH)/recovery/init.recovery.mt8167.rc:root/init.recovery.mt8167.rc \
    $(LOCAL_PATH)/recovery/init.recovery.service.rc:root/init.recovery.service.rc \
    $(LOCAL_PATH)/recovery/ueventd.mt8167.rc:root/ueventd.mt8167.rc \
    $(LOCAL_PATH)/recovery/factory_init.connectivity.rc:root/factory_init.connectivity.rc \
    $(LOCAL_PATH)/recovery/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/recovery/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/recovery/multi_init.rc:root/multi_init.rc \
    $(LOCAL_PATH)/recovery/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/recovery/meta_init.connectivity.rc:root/meta_init.connectivity.rc \
    $(LOCAL_PATH)/recovery/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/recovery/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/recovery/meta_init.modem.rc:root/meta_init.modem.rc

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)