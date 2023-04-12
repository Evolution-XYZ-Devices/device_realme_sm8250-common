#! /vendor/bin/sh
#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

prjname=`getprop ro.boot.prjname`

# Radio
if [ "$prjname" = "19706" ] || [ "$prjname" = "19795" ] || [ "$prjname" = "20607" ]; then
    setprop vendor.radio.multisim.config dsds
elif [ "$prjname" = "19705" ]; then
    setprop vendor.radio.multisim.config ssss
fi

# NFC
if [ "$prjname" = "19705" ] || [ "$prjname" = "19706" ]; then
    setprop persist.vendor.nfc.config_file_name "libnfc-nxp-19705.conf"
elif [ "$prjname" = "19795" ]; then
    setprop persist.vendor.nfc.config_file_name "libnfc-nxp-19795.conf"
elif [ "$prjname" = "20607" ]; then
    setprop persist.vendor.nfc.config_file_name "libnfc-nxp-20607.conf"
fi
