#!/bin/bash

source tests/setup.sh

pdm install
pdm run test

popd
rm -rf $DEST
