class GladiatorTools < Formula
  desc "GladiatorEngineTools is a toolset which helps developer to work with projects based on GladiatorEngine"
  homepage "https://github.com/GladiatorEngine/gladiator-tools"
  url "https://github.com/GladiatorEngine/gladiator-tools/archive/0.0.1-dev.01.zip"
  version "0.0.1-dev.01"
  sha256 "31a787120cc13f47039c04fa145203ed4ff9c1c9abfeab8d84af4e6cc859f33d"
  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/gladiator-tools'
  end
end
