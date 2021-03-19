#!/bin/bash

source tests/setup.sh

pdm install -d
pdm run test

popd
rm -rf $DEST
