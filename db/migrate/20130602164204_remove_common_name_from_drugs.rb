class RemoveCommonNameFromDrugs < ActiveRecord::Migration
  def up
    remove_column :drugs, :common_name
  end

  def down
    add_column :drugs, :common_name, :string
  end
end
