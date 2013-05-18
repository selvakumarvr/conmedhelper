class AddMedicationCategoryToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :medication_category, :string
  end
end
