SUMMARY = "TI CC33xx firmware files"
LICENSE = "CLOSED"

SRC_URI = "file://cc33xx_2nd_loader.bin \
           file://cc33xx-conf.bin \
           file://cc33xx_fw.bin \
           file://cc33xx-nvs.bin"

S = "${WORKDIR}"

do_install() {
    install -d ${D}${nonarch_base_libdir}/firmware/ti-connectivity
    install -m 0644 ${WORKDIR}/cc33xx_2nd_loader.bin ${D}${nonarch_base_libdir}/firmware/ti-connectivity/
    install -m 0644 ${WORKDIR}/cc33xx-conf.bin ${D}${nonarch_base_libdir}/firmware/ti-connectivity/
    install -m 0644 ${WORKDIR}/cc33xx_fw.bin ${D}${nonarch_base_libdir}/firmware/ti-connectivity/
    install -m 0644 ${WORKDIR}/cc33xx-nvs.bin ${D}${nonarch_base_libdir}/firmware/ti-connectivity/
}

FILES:${PN} = "${nonarch_base_libdir}/firmware/ti-connectivity/*"