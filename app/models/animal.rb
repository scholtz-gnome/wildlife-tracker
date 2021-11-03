class Animal < ApplicationRecord
  enum habitat: ['air', 'water', 'land']
  has_many :sightings

  validates(:name, presence: true)
end
