#!/usr/bin/env bash
#
# build.sh - Package the Mighty Mobs addon into .mcaddon format
#
# Usage: ./build.sh
#
# Produces: build/MightyMobs.mcaddon
#   (a zip containing MightyMobs_BP.mcpack and MightyMobs_RP.mcpack)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="$SCRIPT_DIR/build"
BP_DIR="$SCRIPT_DIR/MightyMobs_BP"
RP_DIR="$SCRIPT_DIR/MightyMobs_RP"
ADDON_NAME="MightyMobs"

# Clean previous build
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"

echo "=== Building $ADDON_NAME.mcaddon ==="

# Package Behavior Pack
echo "Packaging Behavior Pack..."
(cd "$BP_DIR" && zip -r "$BUILD_DIR/${ADDON_NAME}_BP.mcpack" . -x ".*")

# Package Resource Pack
echo "Packaging Resource Pack..."
(cd "$RP_DIR" && zip -r "$BUILD_DIR/${ADDON_NAME}_RP.mcpack" . -x ".*")

# Combine into .mcaddon
echo "Creating .mcaddon..."
(cd "$BUILD_DIR" && zip "$ADDON_NAME.mcaddon" "${ADDON_NAME}_BP.mcpack" "${ADDON_NAME}_RP.mcpack")

echo ""
echo "=== Build complete ==="
echo "Output: $BUILD_DIR/$ADDON_NAME.mcaddon"
ls -lh "$BUILD_DIR/$ADDON_NAME.mcaddon"
