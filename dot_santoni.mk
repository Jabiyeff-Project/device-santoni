# Inherit makefiles
$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)
$(call inherit-product, vendor/dot/config/common.mk)

# ROM spesific makefile name
PRODUCT_NAME := dot_santoni

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
