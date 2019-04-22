#!/usr/bin/env bash
# Downloads and installs the Android Native Development Kit.

set -e

if [ ! -d android-ndk-r19c ]
then
    echo "Creating a local install of the Android NDK."
    if [ "$(uname)" == "Darwin" ]
    then
        wget https://dl.google.com/android/repository/android-ndk-r19c-darwin-x86_64.zip -O ndk.zip
    else
        if [ "$(uname -m)" == "x86_64" ]
        then
            wget https://dl.google.com/android/repository/android-ndk-r19c-linux-x86_64.zip -O ndk.zip
        else
            wget https://dl.google.com/android/repository/android-ndk-r19c-linux-x86.zip -O ndk.zip
        fi
    fi

    unzip ndk.zip | grep -v Extracting
    rm ndk.zip
fi
