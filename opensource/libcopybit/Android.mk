# Copyright (C) 2008 The Android Open Source Project
# Copyright (C) 2014 NovaFusion http://novafusion.pl
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


LOCAL_PATH:= $(call my-dir)
MULTIMEDIA_PATH := $(LOCAL_PATH)/../multimedia

include $(CLEAR_VARS)
GRALLOC_PATH := $(LOCAL_PATH)/../libgralloc
LOCAL_C_INCLUDES := $(MULTIMEDIA_PATH)/linux/b2r2lib/include $(GRALLOC_PATH)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog libblt_hw libhardware
LOCAL_SRC_FILES := copybit.c
LOCAL_MODULE := copybit.montblanc
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)