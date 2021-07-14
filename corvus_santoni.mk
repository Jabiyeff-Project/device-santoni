# Inherit makefiles
$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

# ROM spesific makefile name
PRODUCT_NAME := corvus_santoni

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true
