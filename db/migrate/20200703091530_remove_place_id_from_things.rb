class RemovePlaceIdFromThings < ActiveRecord::Migration[5.2]
  def change
    remove_column :things, :place_id, :integer
  end
end
