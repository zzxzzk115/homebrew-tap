cask "omnilyrics" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "6b0451a476855a56a33462be9c1bb75f09d00116f01bbafabb990b00728171da",
         intel: "389e8a2ddfe0ac4e9be1aa90334e76ccbd5639d6fe92eeb59ca1eaeadfa87a01"

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
