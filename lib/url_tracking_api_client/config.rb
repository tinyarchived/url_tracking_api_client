require 'tiny_client'

module UrlTrackingApiClient
  # Configuration for your API resources check https://github.com/TINYhr/tiny_client/ for more configurations
  class Config < TinyClient::Configuration
    def initialize
      @url = ENV.fetch('URL_TRACKING_API_URL', 'https://url-tracking.tinypulse.com')
      @headers = { 'Authorization': ENV.fetch('URL_TRACKING_CLIENT_TOKEN', 'token') }
    end
  end
end
