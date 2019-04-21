class Calendar < ApplicationRecord
	enum status: [:Available, :Not_Available] #by default these are 0 and 1 respectively
  validates :day, presence: true
  belongs_to :room
end
