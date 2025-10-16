#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

# Inherit VoltageOS configurations
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Voltage customizations
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TORCH_STR_SUPPORTED := true

PRODUCT_MANUFACTURER_FOR_ATTESTATION := Xiaomi
PRODUCT_BRAND_FOR_ATTESTATION :=  Xiaomi
PRODUCT_DEVICE_FOR_ATTESTATION :=  fuxi
PRODUCT_NAME_FOR_ATTESTATION := Xiaomi 13
PRODUCT_MODEL_FOR_ATTESTATION := Xiaomi 13

VOLTAGE_CPU_SMALL_CORES := 0,1,2
VOLTAGE_CPU_BIG_CORES := 3,4,5,6,7
VOLTAGE_ALL_CORES := 0-7
VOLTAGE_CPU_SYS_BG := 0-2
VOLTAGE_CPU_BG := 0-2
VOLTAGE_CPU_FG := 0-6
VOLTAGE_CPU_LIMIT_BG := 0-1
VOLTAGE_CPU_LIMIT_UI := 0-3
VOLTAGE_CPU_DISPLAY := 0-5

PRODUCT_DEVICE := fuxi
PRODUCT_NAME := voltage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133C
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := Xiaomi/fuxi/fuxi:15/AQ3A.240912.001/OS2.0.3.0.VMCCNXM:user/release-keys
