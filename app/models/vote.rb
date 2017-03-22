class Vote < ApplicationRecord
    belongs_to :element
    belongs_to :user
    validates :user_id, :uniqueness => { :scope => :element_id }
end
