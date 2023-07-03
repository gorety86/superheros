class ShowPowerHeroSerializer < ActiveModel::Serializers
    attributes :id, :name, :description
  
    has_many :heros
  end