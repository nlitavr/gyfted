class AddUserIdToGyfts < ActiveRecord::Migration
  def change
    add_column :gyfts, :user_id, :integer
    add_index :gyfts, :user_id
  end
end
