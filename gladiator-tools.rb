class GladiatorTools < Formula
  desc "GladiatorEngineTools is a toolset which helps developer to work with projects based on GladiatorEngine"
  homepage "https://github.com/GladiatorEngine/gladiator-tools"
  url "https://github.com/GladiatorEngine/gladiator-tools/archive/0.0.1-dev.03.zip"
  version "0.0.1-dev.03"
  sha256 "b205e1790cb56baa0aaa78d10353adaa5cb5903b7c67138e59ecbc2fe29b2f98"
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/gladiator-tools'
  end
end
