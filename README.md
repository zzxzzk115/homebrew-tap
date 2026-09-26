# zzxzzk115 Homebrew tap

Homebrew Casks maintained by [zzxzzk115](https://github.com/zzxzzk115).

## OmniLyrics

[OmniLyrics](https://github.com/zzxzzk115/OmniLyrics) displays desktop lyrics with
karaoke highlighting. Requires macOS 14 or later; supports Apple Silicon and Intel.

```bash
brew install --cask zzxzzk115/tap/omnilyrics
```

Open **OmniLyrics** from Applications. Allow Automation access to Music or Spotify
when prompted. The application includes its .NET runtime and uses native Apple
Events for these players; `media-control` is an optional fallback for other players.

Both architecture-specific application bundles are Developer ID signed, notarized
by Apple, and stapled before publication. Homebrew verifies the downloaded archive's
SHA256. Keep its normal quarantine and Gatekeeper checks enabled.

```bash
brew upgrade --cask omnilyrics
brew uninstall --cask omnilyrics
```

Uninstalling preserves the configuration shared with the CLI, including saved
player authorization. `--zap` only removes the GUI's macOS preferences and saved
window state.

Report application problems in [OmniLyrics issues](https://github.com/zzxzzk115/OmniLyrics/issues).
Report Cask installation problems in this repository.
