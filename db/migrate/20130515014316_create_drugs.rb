class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :category
      t.string :information

      t.timestamps
    end
  end
end
