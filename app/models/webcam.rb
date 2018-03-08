class Webcam < ApplicationRecord
  include Sluggable
  belongs_to :beach

  validates :name, :description, :short_name, :beach_id, presence: true
end
