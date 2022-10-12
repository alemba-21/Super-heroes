class HeroAndPowerSerializer < ActiveModel::Serializer
  attributes :id, :strength, :power_id, :hero_id

  has_many :powers
end
