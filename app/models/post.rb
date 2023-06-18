class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, uniqueness: true, presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { minimum: 2 }
  validats :user_id, presence: true
end
