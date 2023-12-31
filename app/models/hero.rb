class Hero < ApplicationRecord
    has_many :hero_powers, dependent: :destroy
    has_many :powers, through: :hero_powers

    validates :name, presence: true, uniqueness: true
    validates :super_name, presence: true, uniqueness: true


end
