class AddCommonNameToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :common_name, :string
  end
end
