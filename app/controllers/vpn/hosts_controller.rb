require_dependency 'vpn/application_controller'

module Vpn
  class HostsController < ApplicationController
    before_action :must_vpn_manager!
    def index
      render json: Host.all
    end
  end
end
