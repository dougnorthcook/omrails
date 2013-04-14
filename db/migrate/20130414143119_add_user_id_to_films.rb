class AddUserIdToFilms < ActiveRecord::Migration
  def change
    add_column :films, :user_id, :integer
    add_index :films, :user_id
  end
end
