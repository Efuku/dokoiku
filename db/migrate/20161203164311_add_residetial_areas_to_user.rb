class AddResidetialAreasToUser < ActiveRecord::Migration
  def change
    add_column :users, :residential_areas, :string
  end
end
