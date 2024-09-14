# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/vivo/PD2183/device.mk)

# Device identifier
PRODUCT_DEVICE := PD2183
PRODUCT_NAME := twrp_PD2183
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2183A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_k6983v1_64-user 12 SP1A.210812.003 compiler04180327 release-keys"

BUILD_FINGERPRINT := vivo/PD2183/PD2183:12/SP1A.210812.003/compiler04180327:user/release-keys
