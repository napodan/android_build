#
# Copyright (C) 2007 The Android Open Source Project
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

PRODUCT_BRAND := generic
PRODUCT_DEVICE := generic
PRODUCT_NAME := core

PRODUCT_PACKAGES := \
    bouncycastle \
    com.android.location.provider \
    com.android.location.provider.xml \
    core \
    core-junit \
    create_test_dmtrace \
    dalvikvm \
    dexdeps \
    dexdump \
    dexlist \
    dexopt \
    dmtracedump \
    dvz \
    dx \
    ext \
    framework-res \
    hprof-conv \
    icu.dat \
    installd \
    iptables \
    keystore \
    jasmin \
    jasmin.jar \
    libcrypto \
    libdvm \
    libexpat \
    libicui18n \
    libicuuc \
    libnativehelper \
    libnfc_ndef \
    libsqlite_jni \
    libssl \
    libz \
    sqlite-jdbc \
    Browser \
    Contacts \
    Home \
    HTMLViewer \
    Phone \
    ApplicationsProvider \
    ContactsProvider \
    DownloadProvider \
    DownloadProviderUi \
    MediaProvider \
    PicoTts \
    SettingsProvider \
    TelephonyProvider \
    TtsService \
    VpnServices \
    UserDictionaryProvider \
    PackageInstaller \
    DefaultContainerService \
    zoneinfo.dat \
    zoneinfo.idx \
    zoneinfo.version


# host-only dependencies
ifeq ($(WITH_HOST_DALVIK),true)
$(warning "WITH_HOST_DALVIK true")
    PRODUCT_PACKAGES += \
        apache-xml-hostdex \
        bouncycastle-hostdex \
        core-hostdex \
        libjavacore-host
endif

ifeq ($(HAVE_SELINUX),true)
    PRODUCT_PACKAGES += \
        sepolicy \
        file_contexts \
        seapp_contexts \
        property_contexts \
        mac_permissions.xml
endif

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

