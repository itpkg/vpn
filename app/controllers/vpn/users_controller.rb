require_dependency 'vpn/application_controller'

module Vpn
  class UsersController < ApplicationController
    before_action :must_vpn_manager!
    def index
     render json: Vpn::User.all
    end
  end
end
