module Vpn
  class ApplicationController < ActionController::Base
    before_action :_set_locale
    def _set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    def default_url_options(options = {})
      {locale: I18n.locale}.merge options
    end

  end
end
