class CreateRequiredStocks < ActiveRecord::Migration
  def change
    create_table :required_stocks do |t|
      t.references :doctor, index: true, foreign_key: true
      t.references :immunization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
