class AddDrugIdToDrug < ActiveRecord::Migration
  def change
    add_column :drugs, :drug_id, :integer
  end
end
