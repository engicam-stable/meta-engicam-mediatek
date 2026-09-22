FILESEXTRAPATHS:prepend := "${THISDIR}/v6/genio-720-smarcore-evb:"
FILESEXTRAPATHS:prepend:genio-720-tia := "${THISDIR}/v6/genio-720-tia:"

SRC_URI:append:genio-720-smarcore-evb = " \
    file://camera-ov5640-dual-std-evb.dts \
    file://display-lvds-evb.dts \
    file://display-dsi-to-lvds-evb.dts \
"

SRC_URI:append:genio-720-tia = " \
    file://display-dsi-to-hdmi-tia.dts \
    file://camera-ov5640-dual-std-tia.dts \
"
