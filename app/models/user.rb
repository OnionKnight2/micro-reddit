class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, length: { minimum: 2 }, uniqueness: true
  validates :email, presence: true, confirmation: true, uniqueness: true
  validates :password, presence: true, length: { in: 8..20 }
end
