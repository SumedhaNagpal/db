class AddFatherImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :father_image, :string
  end
end
