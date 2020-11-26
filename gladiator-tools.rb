class GladiatorTools < Formula
  desc "GladiatorEngineTools is a toolset which helps developer to work with projects based on GladiatorEngine"
  homepage "https://github.com/GladiatorEngine/gladiator-tools"
  url "https://github.com/GladiatorEngine/gladiator-tools/archive/0.0.1-dev.02.zip"
  version "0.0.1-dev.02"
  sha256 "73c8b1e780975fa1fabd2842415f70fd7039032fa37e649d30a15979e4ff941e"
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/gladiator-tools'
  end
end
