class ShowHeroPowerSerializer < ActiveModel::Serializers
    attributes :id, :name, :super_name
  
    has_many :powers
  end