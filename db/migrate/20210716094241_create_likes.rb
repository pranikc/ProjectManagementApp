class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.boolean :is_liked

      t.timestamps
    end
  end
end
