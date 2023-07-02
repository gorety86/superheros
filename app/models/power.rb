class Power < ApplicationRecord
    has_many :heros, through: :hero_power
    has_many :hero_powers

    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, length: { minimum: 20 }
end
