module Vpn
  class User < ActiveRecord::Base
    has_many :logs, class_name: 'Vpn::Log'
    has_and_belongs_to_many :hosts, class_name: 'Vpn::Host', primary_key: :host
  end
end
