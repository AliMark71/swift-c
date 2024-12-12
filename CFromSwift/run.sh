#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
INITAL_DIR=$(pwd)

cd $SCRIPT_DIR

set +e 
mkdir artifacts > /dev/null 2>&1
set -e

gcc -c expose.c -o artifacts/expose.o
swiftc -parse-as-library -enable-experimental-feature Extern into.swift artifacts/expose.o -o artifacts/into

./artifacts/into

cd $INITAL_DIR
