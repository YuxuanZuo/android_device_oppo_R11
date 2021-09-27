#
# Copyright (C) 2020 The Android Open-Source Project
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

LOCAL_PATH := device/oppo/R11

# define hardware platform
PRODUCT_PLATFORM := sdm660

PRODUCT_HARDWARE := R11

PRODUCT_PACKAGES += \
    qcom_decrypt

PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/R11/obj/SHARED_LIBRARIES/libcryptfs_hw_intermediates/libcryptfs_hw.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libcryptfs_hw.so \
    $(OUT_DIR)/target/product/R11/obj/SHARED_LIBRARIES/vendor.qti.hardware.cryptfshw@1.0_intermediates/vendor.qti.hardware.cryptfshw@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/vendor.qti.hardware.cryptfshw@1.0.so

# Apex libraries
PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/R11/obj/SHARED_LIBRARIES/libandroidicu_intermediates/libandroidicu.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libandroidicu.so

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)