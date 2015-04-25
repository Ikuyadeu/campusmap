class RemovePictureUrlToPoints < ActiveRecord::Migration
  def up
     remove_column :points, :picURL
  end
  def down
    add_column :points, :picURL, :string
  end
end
