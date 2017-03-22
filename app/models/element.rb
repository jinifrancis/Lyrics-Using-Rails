class Element < ApplicationRecord
    has_many :votes, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :song, presence: true
    validates :movie, presence: true
    validates :lyric, presence: true
end
