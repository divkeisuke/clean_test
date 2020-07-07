class AddPlaceIdToThings < ActiveRecord::Migration[5.2]
  def change
    add_reference :things, :place, foreign_key:true
  end
end
