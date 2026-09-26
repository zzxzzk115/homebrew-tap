cask "omnilyrics" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "528e2f7d036e2207fffdc1205e357daf76d708bfafce8bc4c3279397e70b675c",
         intel: "159c1d1ccdd05464f5575519c02c3347517575f8cf54edd4f888b6b17b216f11"

  url "https://github.com/zzxzzk115/OmniLyrics/releases/download/v#{version}/omnilyrics-gui-osx-#{arch}-signed.zip"
  name "OmniLyrics"
  desc "Desktop lyric viewer with karaoke highlighting"
  homepage "https://github.com/zzxzzk115/OmniLyrics"

  depends_on macos: :sonoma

  app "OmniLyrics.app"

  uninstall quit: "io.github.zzxzzk115.OmniLyrics"

  zap trash: [
    "~/Library/Preferences/io.github.zzxzzk115.OmniLyrics.plist",
    "~/Library/Saved Application State/io.github.zzxzzk115.OmniLyrics.savedState",
  ]
end
