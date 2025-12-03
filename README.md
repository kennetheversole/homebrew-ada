# Homebrew Ada

Homebrew tap for [Ada](https://github.com/kennetheversole/ada) - AI Assistant with Intent Routing

## Installation

```bash
brew tap kennetheversole/ada
brew install ada
```

## Usage

After installation, run:

```bash
ada
```

Or check the version:

```bash
ada --version
```

## Updating the Formula

When a new version is released:

1. Download the SHA256 checksums from the [releases page](https://github.com/kennetheversole/ada/releases)
2. Update `Formula/ada.rb` with:
   - New version number
   - New SHA256 checksums for both architectures
3. Commit and push changes
