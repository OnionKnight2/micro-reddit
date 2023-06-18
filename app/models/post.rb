class Post < ApplicationRecord
  belongs_to :user

  validates :title, uniqueness: true, presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { minimum: 2 }
end
