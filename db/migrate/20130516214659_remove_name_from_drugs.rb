class RemoveNameFromDrugs < ActiveRecord::Migration
  def up
    remove_column :drugs, :name
  end

  def down
    add_column :drugs, :name, :string
  end
end
