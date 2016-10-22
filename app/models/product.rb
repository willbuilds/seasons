class Product < ActiveRecord::Base
  belongs_to :category, class_name: 'ProductCategory'
  attr_accessible :name, :category
end
