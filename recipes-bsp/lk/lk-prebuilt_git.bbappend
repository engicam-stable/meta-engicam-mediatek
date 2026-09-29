FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/${LK_VARIANT}:"

python __anonymous () {
    machine = d.getVar('MACHINE') or ''
    variant = 'ufs' if 'ufs' in machine else 'emmc'
    d.setVar('LK_VARIANT', variant)
}

SRC_URI = "file://lk.bin;subdir=git/${LK_BOARD_NAME}"
SRCREV = ""

LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""
