class AddUsernameValidations < ActiveRecord::Migration[5.0]
  def change
    change_column_null :users, :username, false
    add_index :users, [:username], :unique => true
  end
end
