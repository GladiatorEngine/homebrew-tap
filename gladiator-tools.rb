class GladiatorTools < Formula
  desc "GladiatorEngineTools is a toolset which helps developer to work with projects based on GladiatorEngine"
  homepage "https://github.com/GladiatorEngine/gladiator-tools"
  url "https://github.com/GladiatorEngine/gladiator-tools/archive/0.0.1-dev.01.zip"
  version "0.0.1-dev.01"
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/gladiator-tools'
  end
end
