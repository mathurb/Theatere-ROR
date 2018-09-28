class Booking < ApplicationRecord
  validates :time, presence: true, length: {maximum: 4}
  validates :seats, presence: true, numericality: {only_integer: true}
  has_many :bookings
  belongs_to :audi

  after_create :seats_cal
  private
  def seats_cal
  @shows.seats = @shows.seats - self.seats
  end

end