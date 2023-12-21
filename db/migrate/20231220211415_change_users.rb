class ChangeUsers < ActiveRecord::Migration[7.1]
  def up
    rename_table "users", "admin_users"
    # add_column :admin_users, :passcode, :string, :limit=> 25, :after=>"email"
    # rename_column :admin_users, :"passcode", :new_passcode
  end

  def down
    # rename_column :admin_users, :new_passcode, :passcode
    # remove_column :admin_users, :passcode
    rename_table "admin_users", "users"
  end
end
