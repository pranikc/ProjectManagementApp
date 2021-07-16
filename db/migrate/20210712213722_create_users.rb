class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :likes
      t.integer :views
      t.integer :plays

      t.timestamps
    end
  end
end

# <%= f.label :first_name %>
# <%= f.text_field :first_name %> <br>

# <%= f.label :last_name %>
# <%= f.text_field :last_name %> <br>

# <%= f.label :likes %>
# <%= f.text_field :likes %> <br>

# <%= f.label :views %>
# <%= f.text_field :views %> <br>

# <%= f.label :plays %>
# <%= f.text_field :plays %> <br>

# <%= f.submit "Create Your Profile" %>