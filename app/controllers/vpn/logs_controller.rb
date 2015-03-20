require_dependency 'vpn/application_controller'

module Vpn
  class LogsController < ApplicationController
    #before_action must_vpn_manager!
    def index
    end
  end
end
