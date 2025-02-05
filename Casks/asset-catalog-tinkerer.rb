cask "asset-catalog-tinkerer" do
  version "2.5.1"
  sha256 "75788e83f27ba5d2fc76916339b2f39eb1d5b233cce5e5bd39dbc0461e4d513a"

  url "https://github.com/insidegui/AssetCatalogTinkerer/releases/download/#{version}/AssetCatalogTinkerer_v#{version}.zip"
  name "Asset Catalog Tinkerer"
  desc "Browse/extract images from .car files"
  homepage "https://github.com/insidegui/AssetCatalogTinkerer"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Asset Catalog Tinkerer.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/br.com.guilhermerambo.asset-catalog-tinkerer.sfl2",
    "~/Library/Preferences/br.com.guilhermerambo.Asset-Catalog-Tinkerer.plist",
  ]
end
