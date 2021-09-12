# Inherit makefiles
$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)
$(call inherit-product, vendor/arrow/config/common.mk)

# ROM spesific makefile name
PRODUCT_NAME := arrow_santoni
