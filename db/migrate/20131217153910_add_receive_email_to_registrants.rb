class AddReceiveEmailToRegistrants < ActiveRecord::Migration
  def change
    add_column :registrants, :receive_email, :boolean
  end
end
