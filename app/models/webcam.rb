class Webcam < ApplicationRecord
  include Sluggable
  belongs_to :beach

  has_many :favorites
  has_many :users, through: :favorites

  validates :name, :description, :short_name, :beach_id, presence: true
end
