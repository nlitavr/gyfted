class Gyft < ActiveRecord::Base

  # field :name, type:String
  # field :description, type:String
  # field :desire, type:Float
  # field :price, type:Float

  belongs_to :user
  has_many :locations

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "images/404-not-found.jpeg"
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg)

end
