class AddDefaultValueToRecieveEmail < ActiveRecord::Migration
  def up
    change_column :registrants, :receive_email, :boolean, default: false
  end

  def down
    change_column :registrants, :receive_email, :boolean, default: nil
  end
end
