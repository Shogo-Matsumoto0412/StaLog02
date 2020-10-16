class AddTextToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :improvement_points, :text
    add_column :posts, :teaching_materials, :text
  end
end
