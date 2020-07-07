class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.references :thing, foreign_key:true
      t.string :name

      t.timestamps
    end
  end
end
