#!/usr/bin/env bash
set -e
REPO="woshibeju/vanillalisthub"
LIB="tantalum-metro.a"
URL="https://github.com/${REPO}/releases/download/eager-garden-golden-cedar/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -O2 -pthread -std=c++17 -o app && ./app
