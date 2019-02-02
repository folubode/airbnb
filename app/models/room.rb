class Room < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations


  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bed_room, presence: true
  validates :bath_room, presence: true


  def cover_photo(size)
    if self.photos.length > 0
      self.photos[0].image.url(size)
    else
      # "blank.jpg" if image host locally
      "https://s3-ap-southeast-2.amazonaws.com/olucube-airbnb/blank.jpg"
    end
  end

  def average_rating
    guest_reviews.count == 0 ? 0 : guest_reviews.average(:star).round(2).to_i
  end

  
end
