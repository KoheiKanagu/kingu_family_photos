#!/bin/bash
set -euxo pipefail

USE_FVM=${USE_FVM:-true}

if [ "$USE_FVM" = true ]; then
  flutter() {
    fvm flutter "$@"
  }
  dart() {
    fvm dart "$@"
  }
fi

while [[ "$#" -gt 0 ]]; do
  case $1 in
  --flavor)
    flavor="$2"
    shift
    ;;
  *)
    echo "Unknown parameter passed: $1"
    exit 1
    ;;
  esac
  shift
done

if [ "$flavor" = "dev" ]; then
  target="lib/main_dev.dart"
elif [ "$flavor" = "prod" ]; then
  target="lib/main_prod.dart"
else
  echo "Error: Only 'dev' or 'prod' flavors are allowed."
  exit 1
fi

rm -rf ./firebase/hosting/

flutter build web \
  --target "$target" \
  --wasm \
  --output ./firebase/hosting/
