class AddSomecolumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :image, :string
    add_column :users, :type, :integer, default: 1, null: false
    add_index :users, :name, unique: true
  end
end
