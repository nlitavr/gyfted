class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :url

      t.timestamps
    end
  end
end
