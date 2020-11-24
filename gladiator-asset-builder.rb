class GladiatorAssetBuilder < Formula
  desc "GladiatorAssetBuilder is an CLI application which aims to help to work with Gladiator Engine Assets (GEAs)"
  homepage "https://github.com/GladiatorEngine/gladiator-asset-builder"
  url "https://github.com/GladiatorEngine/gladiator-asset-builder/archive/main.zip"
  version "0.0.1"
  sha256 "f413695af50d777e49a156cd6076e06e202d0b8a95bd201cc2a7af8690ed5690"
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/gladiator-asset-builder'
  end
end
