class Category < ActiveRecord::Base
  has_many :books
  validates :name, :presence => true
  validates :color, :presence => true
end
