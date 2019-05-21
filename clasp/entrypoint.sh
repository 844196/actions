#!/bin/sh

echo ${CLASPRC_JSON?} > ~/.clasprc.json
sh -c "npx @google/clasp $*"
