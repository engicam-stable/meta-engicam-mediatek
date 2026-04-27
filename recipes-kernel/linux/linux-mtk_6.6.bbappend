FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://mt8391-evk.cfg \
            file://0001-Added-ethernet-an-phy-mxl86110-support.patch \
            file://0002-Added-UARTs-support.patch \
            "

