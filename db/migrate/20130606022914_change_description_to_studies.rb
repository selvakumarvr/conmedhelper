class ChangeDescriptionToStudies < ActiveRecord::Migration
  def up
   description :studies, :description, :text
  end

  def down
   description :studies, :description, :string
end
  end
end
