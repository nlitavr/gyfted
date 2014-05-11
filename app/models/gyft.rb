class Gyft < ActiveRecord::Base

  field :name, type:String
  field :description, type:String
  field :desire, type:Float
  field :price, type:Float


  has_many :locations
end
