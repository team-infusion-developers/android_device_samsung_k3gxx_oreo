#
# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := device/samsung/k3gxx

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Flat device tree for boot image
PRODUCT_PACKAGES += \
    dtbhtoolExynos

# Audio
PRODUCT_PACKAGES += \
		android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.universal5422 \
    libtinycompress \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

# Bluetooth HAL
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    Snap

# Consumerir
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    consumerir.universal5422

# Display
PRODUCT_PACKAGES += \
    SamsungServiceMode

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

# GRAPHICS
# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Graphics
PRODUCT_PACKAGES += \
		android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    libion \
    libfimg \
    gralloc.exynos5

# Keylayouts
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/keylayout/gpio_keys_8.kl:system/usr/keylayout/gpio_keys_8.kl \
		$(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
		$(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:/system/usr/idc/Synaptics_HID_TouchPad.idc

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Keystore
PRODUCT_PACKAGES += \
    keystore.exynos5

# Lights
PRODUCT_PACKAGES += \
		android.hardware.light@2.0-impl \
    lights.universal5422

# Media profile
PRODUCT_COPY_FILES += \
		frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
		$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
		$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
		$(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.universal5422 \
    NfcNci \
    Tag \
    com.android.nfc_extras

PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.sec_hal=true

# NFCEE access control + configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-sec.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

# Power
PRODUCT_PACKAGES += \
		android.hardware.power@1.0-impl \
    power.universal5422

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal5422 \
    init.baseband.rc \
    init.samsung.rc \
    init.universal5422.rc \
    init.universal5422.usb.rc \
    init.wifi.rc \
    ueventd.universal5422.rc \
    init.power.rc

# Radio
PRODUCT_PACKAGES += \
		android.hardware.radio@1.0 \
		android.hardware.radio.deprecated@1.0 \
    libsecril-client \
    libsecril-client-sap \
    rild \
    libreference-ril \
    libril \
    modemloader \
    libxml2 \
    libprotobuf-cpp-full

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

# Samsung Doze
# PRODUCT_PACKAGES += \
#    SamsungDoze

# SHIM LIBS
PRODUCT_PACKAGES += \
    libdmitry \
    libsec-ril_shim \
    libgutils

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

# Sensors wrapper
PRODUCT_PACKAGES += \
    sensors.universal5422

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service \
		com.android.future.usb.accessory

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# WIFI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-impl \
    android.hardware.wifi@1.0-service \
    libnetcmdiface \
    macloader \
    wifiloader \
    hostapd \
    hostapd_default.conf \
    libwpa_client \
    wifilogd \
    wlutil \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf


# Legacy stagefright media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# call dalvik heap and hwui config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5422/exynos5422.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/k3gxx/k3gxx-vendor.mk)
