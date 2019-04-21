class Room < ApplicationRecord
  enum instant: {Request: 0, Instant: 1}

  belongs_to :user
  has_many :photos
  has_many :reservations

  has_many :guest_reviews
  has_many :calendars

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bed_room, presence: true
  validates :bath_room, presence: true
  #validates :price, presence: true, length: {minimum: 1, maximum: 5}
  #validates :price, numericality: {greater_than_or_equal_to: 1}

  def cover_photo(size)
    if self.photos.length > 0
      self.photos[0].image.url(size)
    else
      # "blank.jpg" if image host locally
      "https://s3-ap-southeast-2.amazonaws.com/olucube-airbnb/blank.jpg"
    end
  end

  #helper method to return average rating 
  def average_rating
    # return zero if no rating otherwise return average
    guest_reviews.count == 0 ? 0 : guest_reviews.average(:star).round(2).to_i
  end

  
end