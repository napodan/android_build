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

# Standard rules for building a "static" java library.
# Static java libraries are not installed, nor listed on any
# classpaths.  They can, however, be included wholesale in
# other java modules.

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_IS_STATIC_JAVA_LIBRARY := true
include $(BUILD_SYSTEM)/java_library.mk
ifneq (,$(filter-out current, $(LOCAL_SDK_VERSION)))
$(R_file_stamp): PRIVATE_DEFAULT_APP_TARGET_SDK := $(LOCAL_SDK_VERSION)
else
$(R_file_stamp): PRIVATE_DEFAULT_APP_TARGET_SDK := $(DEFAULT_APP_TARGET_SDK)
endif
LOCAL_IS_STATIC_JAVA_LIBRARY :=
