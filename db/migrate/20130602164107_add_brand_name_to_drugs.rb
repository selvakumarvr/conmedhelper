class AddBrandNameToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :brand_name, :string
  end
end
