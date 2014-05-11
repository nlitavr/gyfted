class Gyft < ActiveRecord::Base

  # field :name, type:String
  # field :description, type:String
  # field :desire, type:Float
  # field :price, type:Float

  belongs_to :user
  has_many :locations
end
