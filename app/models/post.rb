class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 3..25 }
  validates :body, presence: true, length: { maximum: 500 }

  belongs_to :user
end
