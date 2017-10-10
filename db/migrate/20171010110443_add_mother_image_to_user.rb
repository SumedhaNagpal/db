class AddMotherImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :mother_image, :string
  end
end
