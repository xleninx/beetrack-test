class Vehicle < ApplicationRecord
  has_many :waypoints

  validates :identifier, uniqueness: true, presence: true
end
