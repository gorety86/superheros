class HeroSerializer < ActiveModel::Serializers
    attributes :id, :name, :super_name
  end