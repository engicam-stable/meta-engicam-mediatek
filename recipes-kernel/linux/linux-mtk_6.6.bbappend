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
            "

