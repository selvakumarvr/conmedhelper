class AddStudyIdToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :study_id, :integer
  end
end
