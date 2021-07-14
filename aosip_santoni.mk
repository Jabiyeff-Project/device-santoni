# Inherit makefiles
$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# ROM spesific makefile name
PRODUCT_NAME := aosip_santoni
