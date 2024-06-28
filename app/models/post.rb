class Post < ApplicationRecord
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode
  
  validates :latitude, presence: true
  validates :longitude, presence: true
end
