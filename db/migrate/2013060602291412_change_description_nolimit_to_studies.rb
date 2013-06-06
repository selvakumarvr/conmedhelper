class ChangeDescriptionNoLimitToStudies < ActiveRecord::Migration
  def up
   change_column :studies, :description, :text, :limit => nil 
  end

  def down
   change_column :studies, :description, :string
end

end
