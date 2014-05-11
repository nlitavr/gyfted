class CreateGyfts < ActiveRecord::Migration
  def change
    create_table :gyfts do |t|
      t.string :name
      t.string :description
      t.float :desire
      t.float :price

      t.timestamps
    end
  end
end
