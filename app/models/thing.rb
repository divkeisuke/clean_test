class Thing < ApplicationRecord
  
    belongs_to :place
    has_many :tools
end
