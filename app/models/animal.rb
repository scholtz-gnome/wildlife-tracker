class Animal < ApplicationRecord
  enum habitat: ['air', 'water', 'land']

  validates(:name, presence: true)
end
