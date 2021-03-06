#
# Copyright (C) 2008 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
#LOCAL_PROPRIETARY_MODULE := true

# This is the target being built.
LOCAL_PACKAGE_NAME := RealtekPIP
# Only compile source java files in this apk.
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PROGUARD_ENABLED:= disabled
LOCAL_CERTIFICATE := platform
LOCAL_DEX_PREOPT := false
LOCAL_STATIC_ANDROID_LIBRARIES := android-support-v4
LOCAL_STATIC_JAVA_LIBRARIES += RtkDisplayDeviceCtrl
LOCAL_PRIVATE_PLATFORM_APIS := true
# Link against the current Android SDK.
LOCAL_PROGUARD_FLAG_FILES := proguard.flags
include $(BUILD_PACKAGE)
