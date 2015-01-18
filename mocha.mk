$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

#$(call inherit-product-if-exists, vendor/xiaomi/mocha/mocha-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/mocha/overlay

#LOCAL_PATH := device/xiaomi/mocha
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

$(call inherit-product,  $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_PACKAGES += \
    init.none.rc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1417730315
PRODUCT_NAME := full_mocha
PRODUCT_DEVICE := mocha

$(call inherit-product, device/xiaomi/mocha/device.mk)
