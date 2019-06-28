require 'tiny_client'

module UrlTrackingApiClient
  # Tracking resource of Url Tracking
  # Only allow `create` method for now and return token/url to use for tracking
  class Tracking < TinyClient::Resource
    conf Config.instance
    path 'trackings'
    fields :id, :url, :receiver_id, :organization_id, :tag
  end
end
