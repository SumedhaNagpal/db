class CreateVaccineMappings < ActiveRecord::Migration
  def change
    create_table :vaccine_mappings do |t|
      t.references :immunization, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true
      t.integer :dose

      t.timestamps null: false
    end
  end
end
