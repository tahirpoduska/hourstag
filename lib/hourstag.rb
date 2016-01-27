require 'rack/google-analytics'
require 'locomotive/steam'

Locomotive::Steam.configure_extension do |config|
  config.middleware.insert_after Locomotive::Steam::Middlewares::Page, Rack::GoogleAnalytics, tracker: 'UA-xxxxxxxx-1'
end
