class AddUsersIndex < ActiveRecord::Migration[5.0]

  def up
	add_column("users", "username", :string, :after => "last_name")
	add_index :users,  :username
  end

  def down
	remove_index :users, :username
	remove_column("users", "username")
  end
end
