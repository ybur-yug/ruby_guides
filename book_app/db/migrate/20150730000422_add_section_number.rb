class AddSectionNumber < ActiveRecord::Migration
  def change
    add_column :sections, :number, :float
  end
end
