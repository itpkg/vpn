module Vpn
  class Host < ActiveRecord::Base
    attr_encrypted :db_host, key: ENV['ITPKG_PASSWORD'], mode: :per_attribute_iv_and_salt
    has_many :logs, class_name: 'Vpn::Log'
    has_and_belongs_to_many :users, class_name: 'Vpn::User', primary_key: :user
  end
end
