class Hero < ApplicationRecord
    has_many :powers, through: :hero_power

    validates :name, presence: true, uniqueness: true
    validates :super_name, presence: true, uniqueness: true


end
