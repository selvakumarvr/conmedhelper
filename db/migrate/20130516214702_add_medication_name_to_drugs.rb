class AddMedicationNameToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :medication_name, :string
  end
end

