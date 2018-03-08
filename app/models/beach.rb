class Beach < ApplicationRecord
  include Sluggable
  validates :name, :city, :state, presence: true

  def slug_me
    self.slug = "#{self.name} #{self.city} #{self.state}".parameterize
  end
end
