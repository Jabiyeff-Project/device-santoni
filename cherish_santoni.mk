# Inherit makefiles
$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# ROM spesific makefile name
PRODUCT_NAME := cherish_santoni

TARGET_INCLUDE_LIVE_WALLPAPERS := false
