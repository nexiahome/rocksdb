#!/usr/bin/env bash

set -e

rm -rf /rocksdb-local
cp -r /rocksdb-host /rocksdb-local
cd /rocksdb-local

make jclean clean
PORTABLE=1 make -j8 rocksdbjavastatic

cp java/target/librocksdbjni-linux*.so java/target/rocksdbjni-*-linux*.jar /rocksdb-host/java/target

