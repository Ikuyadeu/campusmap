class AddPictureUrlToPoints < ActiveRecord::Migration
  def change
    add_column :points, :picURL, :string
  end
end
