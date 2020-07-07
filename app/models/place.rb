class Place < ApplicationRecord
    validates :name,length:{maximum:50}
    
    belongs_to :user
    has_many :things
end
