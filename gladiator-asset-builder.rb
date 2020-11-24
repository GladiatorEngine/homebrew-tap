class GladiatorAssetBuilder < Formula
  desc "GladiatorAssetBuilder is an CLI application which aims to help to work with Gladiator Engine Assets (GEAs)"
  homepage "https://github.com/GladiatorEngine/gladiator-asset-builder"
  url "https://github.com/GladiatorEngine/gladiator-asset-builder/archive/main.zip"
  version "0.0.1"
  sha256 "8cb444095c263c2c9b4c5e1156706d10fb42158e58591d6744f09fce28861c54"
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/gladiator-asset-builder'
  end
end
