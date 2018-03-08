class Webcam < ApplicationRecord
  include Sluggable
  validates :name, :description, :short_name, presence: true
end
