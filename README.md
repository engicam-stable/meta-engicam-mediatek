meta-engicam-mediatek
============

Setup Build Environment (Linux)
----------------------------

To build images of |IOT-YOCTO| you need:

* Ubuntu 22.04 (LTS)
* At least 400 GiB of free disk space
* At least 64 GiB of system memory for a 16-core system
* Internet connection

On Ubuntu, use the following command to install the required packages:

```
 sudo apt-get install gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libelf-dev libsdl1.2-dev lz4 pylint xterm python3-subunit mesa-common-dev libstdc++-12-dev libssl-dev
```

And install the latest repo tool:

```
mkdir -p ~/bin
PATH="${HOME}/bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+rx ~/bin/repo
```

Project Root
----------------------------

Choose a directory as the root of your IoT Yocto project:

```
export PROJ_ROOT=`pwd`
```

In the following sections, we use $PROJ_ROOT as the root directory of your Yocto project.

Download the Recipes
----------------------------

```
repo init -u https://gitlab.com/mediatek/aiot/bsp/manifest.git -b refs/tags/rity-scarthgap-v26.0
repo sync
cd src/
git clone https://github.com/engicam-stable/meta-engicam-mediatek.git -b rity-scarthgap-v26.0
```

Configure Build Environment
----------------------------

After the recipes are downloaded, use the following commands to initialize a Yocto project build environment:

```
export TEMPLATECONF=$PROJ_ROOT/src/meta-engicam-mediatek/conf/templates/default
source src/poky/oe-init-build-env build
export BUILD_DIR=`pwd`
```

Build the Packages
----------------------------

```
bitbake rity-demo-image
```

Flash Image to Board
----------------------------

This guide shows how to “flash”(write) the system image into the non-volatile flash memory of Genio Smarcore. The flashing process is performed over a USB connection between the target board and the host computer containing the image.

In order to write the on-board storage with Genio Tools, you need to set the SoC in download mode, which allows AIoT Tools to transfer a download agent binary to the SRAM of SoC. The download agent then provides a fastboot interface for subsequent image transfer and storage write operations.

Genio Tools
----------------------------

Genio tools are a set of tools to configure or interact with MediaTek Genio boards. MediaTek and community developers write the Genio tools in Python. Ensure you have Python 3.9 or later installed on your system. We recommend installing Python 3.12 since Python 3.9 have reached end-of-life. Genio Tools v1.7 is tested with Python 3.12.

If you don’t have Python 3 and pip installed, run following commands to install them.

```
sudo apt update
sudo apt-get install python3
sudo apt-get install python3-pip
```

Genio tools use Fastboot to flash images onto the device.
After flashing the board with rity-demo-image, you can use the ADB tool to interact with the device, such as running commands and transferring files.

Both Fastboot and ADB tools are available as packages for Ubuntu. Please run following commands to install the tools:

```
sudo apt update
sudo apt-get install adb fastboot
```

Install Genio Tools:

```
pip3 install -U genio-tools
```

Flash Image to Board
----------------------------

<details>
<summary><b>UFS Boot</b></summary>

Boot from UFS storage.
The image should be built using `genio-720-smarcore-evb-ufs` config.

<div align="center">
  <img src="docs/images/dipswitch_s3_boot_mode_ufs.png" alt="Dip switch S3 BOOT MODE" width="300">
</div>

```
cd $BUILD_DIR/tmp/deploy/images/genio-720-smarcore-evb-ufs
genio-flash -i rity-demo-image
```

</details>

<details>
<summary><b>NOR Boot</b></summary>

Boot from SPI NOR flash storage, and then boot to system on UFS storage. The image should be built using `genio-720-smarcore-evb-norboot-ufs` config.

<div align="center">
  <img src="docs/images/dipswitch_s3_boot_mode_norboot.png" alt="Dip switch S3 BOOT MODE" width="300">
</div>

```
cd $BUILD_DIR/tmp/deploy/images/genio-720-smarcore-evb-norboot-ufs
genio-flash -i rity-demo-image
```

</details>

Test Sheet
----------------------------

For the test sheet related to the Genio 720 Smarcore EVB board, see the following document:

[Test Sheet - Genio 720 Smarcore EVB](docs/test_sheet_genio_720_smarcore_evb.md)
