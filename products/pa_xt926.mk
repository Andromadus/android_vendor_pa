# Copyright (C) 2012-13 ParanoidAndroid Project
# Copyright (C) 2013 Andromadus Project
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

# Check for target product
ifeq (pa_xt926,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE := false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/motorola/xt926/full_xt926.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/pa/packages/xt926.mk

# CM Extras
-include vendor/pa/packages/cm.mk

# Override AOSP build properties
PRODUCT_NAME := pa_xt926
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Droid Razr Maxx HD
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=xt926 BUILD_FINGERPRINT=motorola/XT926_verizon/vanquish:4.2.2/9.8.1Q_37/39:user/release-keys"

endif
