#!/bin/bash

# Initialisation
BASE_DIR=$(dirname "$0")
mkdir challenge_2/user_tmp/ challenge_2/output/ -p
unzip -q ${BASE_DIR}/../output/challenge_2.zip -d challenge_2/output/
unzip -q ${BASE_DIR}/../input/challenge_2.zip -d challenge_2/user_tmp/
cd challenge_2/user_tmp/
SECONDS=0
alias mrinfo='cat'

# User provided solution

# ----------------------

# Evaluation
cd ../
if [[ $(diff -qr user_tmp/ output/ | wc -l) = 0 ]]; then echo 'SUCCESS!'; else echo 'FAIL!'; fi
echo 'Time elasped:' ${SECONDS}

# Cleaning
cd ../
rm -rf challenge_2/