#!/bin/bash

set +e 
mkdir artifacts > /dev/null 2>&1
set -e

gcc -c expose.c -o artifacts/expose.o
ar rcs artifacts/expose.a artifacts/expose.o
swiftc -parse-as-library -enable-experimental-feature Extern into.swift artifacts/expose.a -o artifacts/into

./artifacts/into
