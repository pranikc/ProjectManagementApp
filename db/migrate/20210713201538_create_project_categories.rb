class CreateProjectCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :project_categories do |t|
      t.string :category_type

      t.timestamps
    end
  end
end
