# Check for target product
ifeq (pa_xt926,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM device configuration
$(call inherit-product, device/motorola/xt926/cm.mk)

PRODUCT_NAME := pa_xt926

endif