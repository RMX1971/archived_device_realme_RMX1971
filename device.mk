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

PRODUCT_TARGET_VNDK_VERSION := 29

# Declare updatable APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.realme

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Light HAL
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.realme

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Soong namespace
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
