class User < ApplicationRecord
  has_many :posts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, length: { maximum: 20 }
end
