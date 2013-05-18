class AddInstructionsToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :instructions, :string
  end
end
