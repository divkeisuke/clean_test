class Tool < ApplicationRecord
    validates :name,length:{maximum:50}
    
    belongs_to :thing
end
