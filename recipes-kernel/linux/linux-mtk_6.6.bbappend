FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://mt8391-evk.cfg \
            file://0001-Added-ethernet-an-phy-mxl86110-support.patch \
            file://0002-Added-UARTs-support.patch \
            file://0003-Prepare-dts-for-dsi-to-lvds-sn65dsi84.patch \
            file://0004-Added-support-for-sdcard.patch \
            file://0005-Added-support-PAN-W602-2C.patch \
            file://0006-Added-USB-support.patch \
            file://0007-Added-SPI-support.patch \
            file://0008-Added-sgtl5000-support.patch \
            file://0009-added-first-support-genio-720-tia.patch \
            file://0010-added-support-usb-j8-with-ptn5150-i2c-driver.patch \
            file://0011-wifi-regdb-panasonic-cert.patch \
            file://0012-cc33xx-replace-driver-with-1.7.2.239-and-adapt-to-ke.patch \
            file://panw602-regdb.cfg \
            file://quiet-console.cfg \
            "

