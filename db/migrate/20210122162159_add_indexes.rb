class AddIndexes < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :name, unique: true
    add_index :movies, :title, unique: true
    add_index :categories, :title, unique: true
  end
end
