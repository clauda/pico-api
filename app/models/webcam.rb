class Webcam < ApplicationRecord

  validates :name, :description, :short_name, :slug, presence: true

end
