class CreateVpnUsers < ActiveRecord::Migration
  def change
    create_table :vpn_users do |t|
      t.string :email, null: false
      t.string :phone, null: false
      t.string :password, null: false
      t.boolean :online, null: false, default: false
      t.boolean :enable, null: false, default: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.timestamps null: false
    end
    add_index :vpn_users, :email, unique: true
    add_index :vpn_users, :phone

    create_table :vpn_hosts_users, id: false do |t|
      t.belongs_to :host, index: true
      t.belongs_to :user, index: true
    end
  end
end
