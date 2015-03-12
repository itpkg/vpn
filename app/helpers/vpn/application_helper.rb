module Vpn
  module ApplicationHelper
 def self.top_nav_links
      [
          {url: Vpn::Engine.routes.url_helpers.root_path(locale: ::I18n.locale), name:I18n.t('vpn.titles.home')},
      ]
    end

  end
end
