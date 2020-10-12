class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :profile_image, :string
    add_column :users, :profile_text, :text
  end
end
