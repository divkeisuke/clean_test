class Place < ApplicationRecord
    
    belongs_to :user, foreign_key: [:user_id]
    has_many :things, dependent: :destroy
end
