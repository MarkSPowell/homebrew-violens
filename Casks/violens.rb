cask "violens" do
  version "1.0.0-rc.3"
  sha256 "ad3ab918e4b5c86322a9e19c00611b0f6deea318c97e0bc72a77542970877473"

  url "https://github.com/MarkSPowell/VioLens/releases/download/v#{version}/VioLens-#{version}-macos-arm64.dmg",
      verified: "github.com/MarkSPowell/VioLens/"
  name "VioLens"
  desc "HTTP and HTTPS debugging proxy, a successor to Fiddler Classic"
  homepage "https://violens.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "VioLens.app"
  binary "#{appdir}/VioLens.app/Contents/MacOS/violens-exec"

  uninstall quit: "dev.violens.desktopui"

  zap trash: "~/Library/Application Support/VioLens"

  caveats <<~EOS
    The first time you click Start, VioLens asks to trust a root certificate
    of its own so it can read HTTPS traffic. Before uninstalling, remove it
    with Tools > Remove Root Certificate.
  EOS
end
