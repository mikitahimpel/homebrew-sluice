# homebrew-sluice

Homebrew tap for [Sluice](https://github.com/mikitahimpel/sluice) — a macOS URL router that opens links from different source apps in different browsers.

## Install

```sh
brew install --cask mikitahimpel/sluice/sluice
```

## Update

```sh
brew upgrade --cask sluice
```

## Uninstall

```sh
brew uninstall --cask sluice
brew untap mikitahimpel/sluice
```

## Releasing a new version

After tagging a new release in the main repo and uploading a notarized zip to GitHub Releases, update `Casks/sluice.rb` with the new `version` and `sha256`, then commit and push.
