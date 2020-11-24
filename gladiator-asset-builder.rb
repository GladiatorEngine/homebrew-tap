class GladiatorAssetBuilder < Formula
  desc "GladiatorAssetBuilder is an CLI application which aims to help to work with Gladiator Engine Assets (GEAs)"
  homepage "https://github.com/GladiatorEngine/gladiator-asset-builder"
  url "https://github.com/GladiatorEngine/gladiator-asset-builder/archive/main.zip"
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/gladiator-asset-builder'
  end
end
