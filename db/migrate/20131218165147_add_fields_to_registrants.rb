class AddFieldsToRegistrants < ActiveRecord::Migration
  def change
    add_column :registrants, :age_group, :string
  end
end
