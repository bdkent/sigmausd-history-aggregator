#!/bin/bash

curl --create-dirs -o "${SIGMAUSD_DATA_PATH}/$(date +%y-%m-%d)/bank.$(date +%y-%m-%d-%H-%M).json" "https://api.ergoplatform.com/api/v1/boxes/unspent/byTokenId/7d672d1def471720ca5782fd6473e47e796d9ac0c138d9911346f118b2f6d9d9?limit=100"
curl --create-dirs -o "${SIGMAUSD_DATA_PATH}/$(date +%y-%m-%d)/oracle.$(date +%y-%m-%d-%H-%M).json" "https://api.ergoplatform.com/api/v1/boxes/unspent/byTokenId/011d3364de07e5a26f0c4eef0852cddb387039a921b7154ef3cab22c6eda887f?limit=100"
