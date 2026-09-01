FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

SRC_URI = "file://lk.bin"
SRCREV = ""

S = "${WORKDIR}"

BUILD = "${S}"

do_patch[noexec] = "1"
do_configure[noexec] = "1"
do_compile[noexec] = "1"

do_deploy () {
    install -d ${DEPLOYDIR}
    install -m 0644 ${WORKDIR}/lk.bin ${DEPLOYDIR}/lk.bin
}
