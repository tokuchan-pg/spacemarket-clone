class RenameTypeColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :type, :usertype
  end
end
