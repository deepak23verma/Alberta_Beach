class AddInterestsToRegistrants < ActiveRecord::Migration
  def change
    add_column :registrants, :vacation, :boolean, default: false
    add_column :registrants, :primary_residence, :boolean, default: false
    add_column :registrants, :retirement, :boolean, default: false
    add_column :registrants, :investment, :boolean, default: false
  end
end
