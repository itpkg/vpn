module Vpn
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :_set_locale

    def _set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    def must_vpn_manager!
      unless current_user && (current_user.has_role?(:vpn_manager) || current_user.has_role?(:admin))
        flash[:alert] = t('vpn.labels.must_vpn_manager')
        redirect_to root_app.home_path
      end
    end

    def must_admin!
      unless current_user && current_user.has_role?(:admin)
        flash[:alert] = t('labels.must_admin')
        redirect_to root_app.home_path
      end
    end

  end
end
