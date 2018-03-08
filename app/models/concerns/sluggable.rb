module Sluggable
  extend ActiveSupport::Concern

  included do
    before_create :slug_me
    validates :name, :slug, uniqueness: true
  end

  def self.included(base)
    base.class_eval do
      def self.by_slug id
        begin
          find_by(slug: id) if id
        rescue ActiveRecord::NotFound
          return nil
        end
      end
    end
  end

  def to_param
    self.slug
  end

  def slug_me
    self.slug = self.name.parameterize
  end

end
