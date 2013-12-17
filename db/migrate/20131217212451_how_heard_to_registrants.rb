class HowHeardToRegistrants < ActiveRecord::Migration
  def change
    add_column :registrants, :how_heard, :string
  end
end
