#!/bin/sh

zip -r $PWD/xcframework/Eigen.xcframework.zip $PWD/xcframework/Eigen.xcframework
zip -r $PWD/xcframework/EigenLapack.xcframework.zip $PWD/xcframework/EigenLapack.xcframework

echo "Calculating checksums"

echo "Eigen.xcframework.zip:"
swift package compute-checksum $PWD/xcframework/Eigen.xcframework.zip

echo "EigenLapack.xcframework.zip:"
swift package compute-checksum $PWD/xcframework/EigenLapack.xcframework.zip
