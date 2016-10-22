class ProductLocation < ActiveRecord::Base
  geocoded_by :location
  belongs_to :product
  attr_accessible :available_from, :available_to, :best_from, :best_to, :location, :product
  attr_accessor :latitude, :longitude
end
