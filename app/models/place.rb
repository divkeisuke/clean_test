class Place < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    
    belongs_to :user, foreign_key: [:user_id]
    has_many :things, dependent: :destroy
end
