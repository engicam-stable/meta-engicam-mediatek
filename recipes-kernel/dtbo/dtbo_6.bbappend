FILESEXTRAPATHS:prepend := "${THISDIR}/v6/genio-720-smarcore-evb:"

SRC_URI:append:genio-720-evk = " \
    file://camera-ov5640-dual-std-evb.dts \
    file://display-lvds-evb.dts \
    file://display-dsi-to-lvds-evb.dts \
"