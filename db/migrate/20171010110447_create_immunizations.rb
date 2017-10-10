class CreateImmunizations < ActiveRecord::Migration
  def change
    create_table :immunizations do |t|
      t.string :vaccine
      t.integer :dose_one
      t.integer :dose_two
      t.integer :dose_three
      t.integer :dose_four
      t.integer :dose_five

      t.timestamps null: false
    end
  end
end
