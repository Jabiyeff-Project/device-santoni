# Inherit makefiles
$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)
$(call inherit-product, vendor/revengeos/config/common.mk)

# ROM spesific makefile name
PRODUCT_NAME := revengeos_santoni
