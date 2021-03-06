cask 'kindle117' do
  version '44182'
  sha256 '28dc21246a9c7cdedd2d6f0f4082e6bf7ef9db9ce9d485548e8a9e1d19eae2ac'

  # s3.amazonaws.com/kindleformac was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/kindleformac/#{version}/KindleForMac-#{version}.dmg"
  name 'Kindle for Mac'
  homepage 'https://www.amazon.com/gp/digital/fiona/kcp-landing-page'

  app 'Kindle.app'

  zap delete: [
                '~/Library/Preferences/com.amazon.Kindle.plist',
                '~/Library/Application Support/Kindle/',
                '~/Library/Saved Application State/com.amazon.Kindle.savedState/',
                '~/Library/Caches/com.amazon.Kindle-Crash-Reporter/',
              ]
end
