class HeroPowerSerializer < ActiveModel::Serializers
    attributes :id, :strength, :hero_id, :power_id
  end