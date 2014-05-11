class Location < ActiveRecord::Base

  # field :gyft_id, type:String
  # field :url, type:String
  # field :physical_location, type:String

  belongs_to :gyft
end
