class Comment < ApplicationRecord
  belongs_to :element
  validates :commenter, presence: true
  validates :body, presence: true
end
