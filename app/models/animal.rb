class Animal < ApplicationRecord
  enum habitat: %w[air water land]
  has_many :sightings, dependent: :destroy

  validates(:name, presence: true)
end
