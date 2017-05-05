class Waypoint < ApplicationRecord
  attr_accessor :vehicle_identifier

  belongs_to :vehicle, optional: true

  validates :vehicle_identifier, presence: true
  validates :latitude, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }

  after_validation :find_or_create_vechicle

  def find_or_create_vechicle
    self.vehicle = Vehicle.find_or_create_by(identifier: vehicle_identifier)
  end

end
