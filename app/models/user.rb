class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :favorites
  has_many :webcams, through: :favorites

  validates :first_name, :last_name, presence: true
end
