class CreateUsers < ActiveRecord::Migration[7.1]
  def up
    create_table :users do |t|
      t.string "first_name", limit: 25
      t.string "last_name", default: '', null: false
      t.string "email", limit: 25

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
