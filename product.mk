#
# Copyright (C) 2018 The LineageOS Project
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

########## Put your device here #############
DEVICE:a3y17lte
#############################################

# PATH 
NFC_FIX := device/samsung/$(DEVICE)/nfc

###############
# NFC: COMMON #
###############
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(NFC_FIX)/etc/nfcee_access.xml:system/etc/nfcee_access.xml

################
# NFC: S3FWRN5 #
################

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl \
### libnfc-nci \     ######## Might be Needed,
### libnfc_nci_jni \ ######## We will see later

PRODUCT_COPY_FILES += \
    $(NFC_FIX)/vendor/etc/libnfc-sec.conf:system/etc/libnfc-sec-hal.conf \
    $(NFC_FIX)/vendor/etc/libnfc-brcm.conf:system/vendor/etc/libnfc-brcm.conf \
    $(NFC_FIX)/etc/libnfc-sec-hal.conf:system/vendor/etc/libnfc-sec-hal.conf

################
# Permissions: #
################

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/vendor/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/vendor/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/vendor/etc/permissions/com.android.nfc_extras.xml \
    $(NFC_FIX)/vendor/etc/permissions/android.hardware.nfc.hcef.xml:system/vendor/etc/permissions/android.hardware.nfc.hcef.xml

###################
# Stock hall perm #
###################
PRODUCT_COPY_FILES += \
    $(NFC_FIX)/etc/permissions/com.gsma.services.nfc.xml:system/etc/permissions/com.gsma.services.nfc.xml \
    $(NFC_FIX)/etc/permissions/com.samsung.android.nfc.mpos.xml:system/etc/permissions/com.samsung.android.nfc.mpos.xml \
    $(NFC_FIX)/etc/permissions/com.sec.feature.cover.nfc_authentication.xml:system/etc/permissions/com.sec.feature.cover.nfc_authentication.xml \
    $(NFC_FIX)/etc/permissions/com.sec.feature.nfc_authentication.xml:com.sec.feature.nfc_authentication.xml

#############
# NFC blobs #
#############
PRODUCT_COPY_FILES += \
    $(NFC_FIX)/etc/nfc/sec_s3nrn81_rfreg.bin:system/etc/nfc/sec_s3nrn81_rfreg.bin \
    $(NFC_FIX)vendor/firmware/nfc/sec_s3nrn81_firmware.bin:vendor/firmware/nfc/sec_s3nrn81_firmware.bin

