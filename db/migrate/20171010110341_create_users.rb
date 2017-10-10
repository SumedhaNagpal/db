class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :aadhaar_no
      t.string :child_name
      t.string :father_name
      t.string :mother_name
      t.date :dob

      t.timestamps null: false
    end
  end
end
