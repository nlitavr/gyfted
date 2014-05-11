class AddGyftsIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :gyft_id, :integer
    add_index :locations, :gyft_id
  end
end
