class CreateVpnHosts < ActiveRecord::Migration
  def change
    create_table :vpn_hosts, id: :uuid do |t|
      t.string :name, null: false
      t.string :db_host, null: false
      t.string :db_user, null: false, limit: 16
      t.string :db_pwd
      t.string :db_pwd_salt
      t.string :db_pwd_iv
      t.timestamps null: false
    end
    add_index :vpn_hosts, :db_host, unique: true
    add_index :vpn_hosts, :name
  end
end
