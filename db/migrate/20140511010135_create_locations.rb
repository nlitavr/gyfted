class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :url
      t.string :gyft_id
      t.string :physical_location

      t.timestamps
    end
  end
end
