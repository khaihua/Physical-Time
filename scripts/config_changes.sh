#!/bin/sh
# Author: Cristian Gonzales
# Created for Physical Time

# Quick script to remove platforms and rebuild, and running an iOS target. Change platforms and targets as needed.
# Uncomment platforms as needed, and uncomment the "if" block to deploy on your device.

# Move into root directory
cd ..

# Rebuild the platforms in the config file
# cordova platform rm browser
cordova platform rm ios
# cordova platform rm android
# cordova platform add browser
cordova platform add ios
# cordova platform add android

# Build for all platforms
cordova -d build

# Run for this iOS target
cordova run ios --target="iPhone-8, 11.2"

# Deploying on your device (comment out the block comments and comment-out everything above this block to properly
# execute.
if [ 1 -eq 0 ]; then
cordova build ios --device
cd platforms/ios/build/device
/usr/bin/xcrun -sdk iphoneos PackageApplication "$(pwd)/$PROJECT_NAME.app" -o "$(pwd)/$PROJECT_NAME.ipa"
cd ../../../..
fi
