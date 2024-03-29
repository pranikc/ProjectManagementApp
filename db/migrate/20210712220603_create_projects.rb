class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :likes
      t.integer :views
      t.integer :plays
      t.integer :like_id
      t.timestamps
    end
  end
end
