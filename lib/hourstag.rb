
require 'locomotive/steam'
require 'locomotive/steam/server'
require 'rack/google-analytics'

  Locomotive::Steam.configure do |config|
    path                = '.'
    # config.mode         = :test
    # config.adapter      = { name: :filesystem, path: File.expand_path(path) }
    config.asset_path   = File.expand_path(File.join(path, 'public'))
    config.middleware.use Rack::GoogleAnalytics, :tracker => 'UA-xxxxxxxx-1'
  end
