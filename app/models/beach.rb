class Beach < ApplicationRecord
  validates :name, :city, :state, :slug, presence: true
end
