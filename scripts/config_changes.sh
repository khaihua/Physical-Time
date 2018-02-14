#!/bin/sh

# Author: Cristian Gonzales
# Created for Physical Time

# Quick script to remove platforms and rebuild, and running an iOS target. Change platforms and targets as needed.

# Rebuild the platforms in the config file
# cordova platform rm browser
cordova platform rm ios
# cordova platform rm android
# cordova platform add browser
cordova platform add ios
# cordova platform add android

# Build for all platforms
cordova build

# Run for this iOS target
cordova run ios --target="iPhone-8, 11.2"
