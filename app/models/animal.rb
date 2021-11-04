class Animal < ApplicationRecord
  enum habitat: %w[air water land]
  has_many :sightings, dependant: :destroy

  validates(:name, presence: true)
end
