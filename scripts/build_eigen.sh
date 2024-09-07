#!/bin/sh


mkdir -p $PWD/build
mkdir -p $PWD/dist

rm -rf $PWD/build/*
rm -rf $PWD/dist/*

cmake -S . -B ./build -DCMAKE_INSTALL_PREFIX=./dist

cd $PWD/build

make install

cd ..
