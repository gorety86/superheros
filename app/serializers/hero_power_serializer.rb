class HeroPowerSerializer < ActiveModel::Serializer
    attributes :id, :strength, :hero_id, :power_id

    belongs_to :heros
    belongs_to :power
  end