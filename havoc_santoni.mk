# Inherit makefiles
$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# ROM spesific makefile name
PRODUCT_NAME := havoc_santoni
