class Show < ApplicationRecord
    validates :time, presence: true, length: {maximum: 4}
    validates :seats, presence: true ,numericality:{only_integer: true}
    has_many :bookings
    belongs_to :audi
    before_create :no_of_seats
    private 
    def no_of_seats
      self.seats = @audi.seats
    end
end