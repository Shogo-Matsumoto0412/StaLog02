class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :post_content
      t.references :user, foreign_key: true
      t.string :field_content
      t.float :count_hour

      t.timestamps
    end
  end
end
