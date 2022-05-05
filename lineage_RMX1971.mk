#
# Copyright 2022 Naufal Altaf <nao@altaf.xyz>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit common AOSP system configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/mainline_system.mk)

# Inherit common AOSP product configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_product.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_product.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/realme/RMX1971/device.mk)

# Target configurations
PRODUCT_NAME := lineage_RMX1971
PRODUCT_DEVICE := RMX1971
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 5 Pro
PRODUCT_MANUFACTURER := realme

# Set Android client-id
PRODUCT_GMS_CLIENTID_BASE := android-oppo
