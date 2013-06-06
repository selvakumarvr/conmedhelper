class ChangeDescriptionToStudies < ActiveRecord::Migration
  def up
   change_column :studies, :description, :text
  end

  def down
   change_column :studies, :description, :string
end

end
