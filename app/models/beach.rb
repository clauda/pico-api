class Beach < ApplicationRecord
  include Sluggable
  has_many :webcams
  
  validates :name, :city, :state, presence: true

  def slug_me
    self.slug = "#{self.name} #{self.city} #{self.state}".parameterize
  end
end
