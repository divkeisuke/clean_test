class AddUserTothings < ActiveRecord::Migration[5.2]
  def change
    add_reference :things, :user, foreign_key:false
  end
end
