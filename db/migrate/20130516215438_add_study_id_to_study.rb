class AddStudyIdToStudy < ActiveRecord::Migration
  def change
    add_column :studies, :study_id, :integer
  end
end
