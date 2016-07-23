#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/IUNI/U810/kernel:kernel \
    device/IUNI/U810/dt.img:dt.img

PRODUCT_COPY_FILES += device/IUNI/U810/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_NAME := omni_U810
PRODUCT_DEVICE := U810
PRODUCT_BRAND := IUNI
PRODUCT_MODEL := IUNI U810
PRODUCT_MANUFACTURER := IUNI

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=IUNI U810 \
    ro.product.device=IUNI U810
