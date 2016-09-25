class ChangeCategoryToDrugs < ActiveRecord::Migration
  def up
   change_column :drugs, :category, :text, :limit => nil
  end

  def down
   change_column :drugs, :category, :string
end
end
