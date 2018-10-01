class Booking < ApplicationRecord
  validates :time, presence: true, length: {maximum: 4}
  validates :seats, presence: true, numericality: {only_integer: true}
  has_many :bookings
  belongs_to :show
  belongs_to :theater

  before_update :seats_total
  after_update :seats_cal
  private
  def seats_cal
  @shows.seats = @shows.seats - self.seats
  end
  def seats_total
    if seats > Show.seats
      errors.add(:seats, "Not enough seats available.")
    end
  end  
end