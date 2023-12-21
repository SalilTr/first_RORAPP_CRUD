class CreateSections < ActiveRecord::Migration[7.1]
  def up
    create_table :sections do |t|
      t.integer "page_id"
      t.string  "name"
      t.string  "content_type"
      t.text    "content"
      t.integer "position"
      t.boolean "visible", default: false
      t.timestamps
    end

    add_index :sections, :page_id
  end

  def down
    drop_table :sections
  end
end
