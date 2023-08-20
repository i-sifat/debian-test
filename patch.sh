#!/bin/bash

# List of patch URLs
patch_urls=(
    "https://dwm.suckless.org/patches/barpadding/dwm-barpadding-6.2.diff"
    "https://dwm.suckless.org/patches/bottomstack/dwm-bottomstack-6.1.diff"
    "https://dwm.suckless.org/patches/cfacts/dwm-cfacts-6.1.diff"
    "https://dwm.suckless.org/patches/dragmfact/dwm-dragmfact-6.2.diff"
    "https://github.com/bakkeby/patches/blob/master/dwm/dwm-cfacts-6.2.diff"
    "https://dwm.suckless.org/patches/fibonacci/dwm-fibonacci-6.2.diff"
    "https://dwm.suckless.org/patches/gaplessgrid/dwm-gaplessgrid-6.1.diff"
    "https://dwm.suckless.org/patches/horizgrid/dwm-horizgrid-6.1.diff"
    "https://dwm.suckless.org/patches/movestack/dwm-movestack-6.1.diff"
    "https://dwm.suckless.org/patches/vanitygaps/dwm-vanitygaps-6.2.diff"
    "https://dwm.suckless.org/patches/rainbowtags/dwm-rainbowtags-6.2.diff"
    "https://dwm.suckless.org/patches/statuspadding/dwm-statuspadding-6.3.diff"
    "https://dwm.suckless.org/patches/status2d/dwm-status2d-6.3.diff"
    "https://dwm.suckless.org/patches/underlinetags/dwm-underlinetags-6.2.diff"
    "https://dwm.suckless.org/patches/notitle/dwm-notitle-6.2.diff"
    "https://dwm.suckless.org/patches/winicon/dwm-winicon-6.3-v2.1.diff"
    "https://github.com/FT-Labs/pdwm/blob/master/patches/dwm-6.3-patches/dwm-preserveonrestart-6.3.diff"
    "https://dwm.suckless.org/patches/shift-tools/dwm-shif-tools-6.2.diff"
)

# Directory to store patches and DWM source code
patch_dir="dwm-patches"
dwm_source_dir="dwm-source"

# Create directories if they don't exist
mkdir -p "$patch_dir"
mkdir -p "$dwm_source_dir"

# Download and apply patches
for url in "${patch_urls[@]}"; do
    patch_file=$(basename "$url")
    wget "$url" -P "$patch_dir"
done

echo "Patching complete!"

