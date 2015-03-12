module Vpn
  class Log < ActiveRecord::Base
    belongs_to :host, class_name: 'Vpn::Host', foreign_key: :host
    belongs_to :user, class_name: 'Vpn::User', foreign_key: :user
  end
end
