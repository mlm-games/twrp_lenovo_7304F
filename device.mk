# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/teclast/7304F/kernel

# Charger
PRODUCT_PACKAGES += \
   charger_res_images \
   charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/fstab.mt8173:root/fstab.mt8173 \
    $(LOCAL_PATH)/recovery/init.recovery.mt8173.rc:root/init.recovery.mt8173.rc \
    $(LOCAL_PATH)/recovery/init.recovery.service.rc:root/init.recovery.service.rc \
    $(LOCAL_PATH)/recovery/init.recovery.vold_decrypt.logd.rc:root/init.recovery.vold_decrypt.logd.rc \
    $(LOCAL_PATH)/recovery/ueventd.mt8173.rc:root/ueventd.mt8173.rc \
    $(LOCAL_PATH)/recovery/touchfix.sh:root/sbin/touchfix.sh \
    $(LOCAL_PATH)/recovery/gt9.cnf:root/gt9.cnf

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

