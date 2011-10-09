class Book < ActiveRecord::Base
  belongs_to :category
  scope :checked_in, where(:checked_out => false).order(:publish_year)
  scope :checked_out, where(:checked_out => true).order(:publish_year)
  scope :search, lambda { |query|
    where([ "title LIKE ?", "%#{query}%" ])
  }

  validates :title, :presence => true, :length => { :maximum => 80 }
  validates :authors, :length => { :maximum => 80 }
  validates :comment, :length => { :maximum => 400 }
end
