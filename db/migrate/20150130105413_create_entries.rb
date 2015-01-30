class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :body
      t.references :blog, index: true

      t.timestamps null: false
    end
    add_foreign_key :entries, :blogs
  end
end
