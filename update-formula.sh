#!/bin/bash

# Script to update the Homebrew formula with correct SHA256 checksums from GitHub release

set -e

VERSION="0.1.0"
REPO="kennetheversole/ada"

echo "Fetching SHA256 checksums from GitHub release v${VERSION}..."

# Download checksums file
curl -sL "https://github.com/${REPO}/releases/download/v${VERSION}/checksums.txt" -o checksums.txt

# Extract SHA256 values
AARCH64_SHA=$(grep "aarch64-apple-darwin" checksums.txt | awk '{print $1}')
X86_64_SHA=$(grep "x86_64-apple-darwin" checksums.txt | awk '{print $1}')

echo "aarch64-apple-darwin SHA256: $AARCH64_SHA"
echo "x86_64-apple-darwin SHA256: $X86_64_SHA"

# Update the formula
sed -i.bak "s/REPLACE_WITH_AARCH64_SHA256/$AARCH64_SHA/" Formula/ada.rb
sed -i.bak "s/REPLACE_WITH_X86_64_SHA256/$X86_64_SHA/" Formula/ada.rb

# Remove backup file
rm Formula/ada.rb.bak

echo "Formula updated successfully!"
echo "Review the changes and commit:"
echo "  git diff Formula/ada.rb"
echo "  git add Formula/ada.rb"
echo "  git commit -m 'Update checksums for v${VERSION}'"
echo "  git push origin main"
