FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Added-defconfig-for-genio-720-smarcore-evb-ufs.patch \
            file://0002-Added-defconfig-and-fix-spinor-for-genio-720-smarcor.patch"

addtask deploy after do_install