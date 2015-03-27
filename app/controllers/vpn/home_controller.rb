require_dependency 'vpn/application_controller'

module Vpn
  class HomeController < ApplicationController
    before_action :must_vpn_manager!, except: [:sitemap]
    def index
    end

    def sitemap
      xml = Rails.cache.fetch("sitemap://main/vpn/#{locale}", expires_in: 24.hours) do
        urls = []
        Sitemap.leaf urls
      end
      render xml: xml
    end

  end
end
