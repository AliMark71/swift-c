#!/bin/bash

set +e
mkdir artifacts  > /dev/null 2>&1
set -e

swiftc -emit-library -static -o artifacts/expose.a expose.swift
gcc into.c artifacts/expose.a -o artifacts/into
./artifacts/into
