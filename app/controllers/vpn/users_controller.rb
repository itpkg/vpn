require_dependency 'vpn/application_controller'

module Vpn
  class UsersController < ApplicationController
    before_action :must_vpn_manager!
    def index
      links = []
      if current_user
        links << {url: Vpn::Engine.routes.url_helpers.root_path(locale: ::I18n.locale), name: I18n.t('vpn.titles.home')}
      end
      links
    end
  end
end
