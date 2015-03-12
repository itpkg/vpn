class CreateVpnLogs < ActiveRecord::Migration
  def change
    create_table :vpn_logs do |t|
      t.string :host, null: false, limit: 36
      t.string :user, null: false
      t.string :trusted_ip, limit: 32
      t.string :trusted_port, limit: 16
      t.string :remote_ip, limit: 32
      t.string :remote_port, limit: 16
      t.string :message
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.float :received, default: 0.0, null: false
      t.float :sent, default: 0.0, null: false
    end
    add_index :vpn_logs, :user
    add_index :vpn_logs, :host
  end
end
