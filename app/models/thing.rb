class Thing < ApplicationRecord

  
  
    belongs_to :place
    belongs_to :user
    has_many :tools
end
