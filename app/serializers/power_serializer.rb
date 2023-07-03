class PowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  belongs_to :hero
end