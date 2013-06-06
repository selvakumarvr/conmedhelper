class ChangeInformationToDrugs < ActiveRecord::Migration
  def up
   change_column :drugs, :information, :text, :limit => nil 
  end

  def down
   change_column :drugs, :information, :string
end
end
