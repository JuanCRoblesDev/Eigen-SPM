#!/bin/sh


mkdir -p $PWD/xcframework

rm -rf $PWD/xcframework/*

xcodebuild -create-xcframework -library $PWD/dist/lib/libeigen_blas.dylib -headers $PWD/dist/include/eigen3 -output $PWD/xcframework/Eigen.xcframework
xcodebuild -create-xcframework -library $PWD/dist/lib/libeigen_lapack.dylib -output $PWD/xcframework/EigenLapack.xcframework
