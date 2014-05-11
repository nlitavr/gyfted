class AddAttachmentImageToGyfts < ActiveRecord::Migration
  def self.up
    change_table :gyfts do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :gyfts, :image
  end
end
