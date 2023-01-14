#!/usr/bin/env bash

dir=$(dirname "$0")

flavours=(
  "mocha"
  "macchiato"
  "frappe"
  "latte"
)

mkdir -p "${dir}/dist"
for flavour in "${flavours[@]}"; do
  echo "Building ${flavour^}"
  cat "${dir}/src/${flavour}" "$dir/src/common" >"$dir/dist/${flavour}"
done
