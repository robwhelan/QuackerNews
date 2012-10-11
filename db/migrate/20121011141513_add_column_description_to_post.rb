class AddColumnDescriptionToPost < ActiveRecord::Migration
  def up
    add_column :posts, :description, :string
  end
  
  def down
    remove_column :posts, :description
  end

end