#!/bin/bash

echo "== $0 =="
echo "# Showing you ruby relevant stuff.."

set -e
set -x

echo "Welcome to Riccardos ruby-info.sh, made to inspoect your Ruby docker image"
pwd
ruby --version
bundle --version
gem --version
gem list