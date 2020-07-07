class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.integer :place_id
      t.string :name
      t.date :clean_day
      t.integer :clean_frequency
      t.text :remarks

      t.timestamps
    end
  end
end
