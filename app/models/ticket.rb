class Ticket < ApplicationRecord
    validates :number, presence: true, numericality:{only_integer: true}, length:{minimum:3, maximum:10}
    belongs_to :booking
    belongs_to :movie
    belongs_to :audi  
end