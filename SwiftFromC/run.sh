#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
INITAL_DIR=$(pwd)

cd $SCRIPT_DIR

set +e
mkdir artifacts  > /dev/null 2>&1
set -e

swiftc -emit-library -static -o artifacts/expose.a expose.swift
gcc into.c artifacts/expose.a -o artifacts/into
./artifacts/into

cd $INITAL_DIR
