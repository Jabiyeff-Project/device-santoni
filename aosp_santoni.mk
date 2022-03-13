# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Stuff
TARGET_BOOT_ANIMATION_RES := 720
CHERISH_BUILD_TYPE := UNOFFICIAL

# Maintainer
PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=Dinesh

# Inherit from santoni device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := santoni
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4X
PRODUCT_NAME := cherish_santoni
BOARD_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="santoni-user 7.1.2 N2G47H V9.5.10.0.NAMMIFD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/santoni/santoni:7.1.2/N2G47H/V9.5.10.0.NAMMIFD:user/release-keys"
