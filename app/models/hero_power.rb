class HeroPower < ApplicationRecord
  belongs_to :power
  belongs_to :hero

  validates :hero_id, presence: true
  validates :power_id, presence: true
  validates :strength, inclusion: { in:  "Strong, Weak, or Average" }

end
