class Movie < ApplicationRecord
    validates :title, presence: true, length:{maximum: 40}
    validates :category, presence: true, length:{maximum: 10}
    has_many :shows
    belongs_to :audi
end