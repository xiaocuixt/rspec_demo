class CreateMpgSubmissions < ActiveRecord::Migration
  def change
    create_table :mpg_submissions do |t|
      t.decimal :mpg, precision: 6, scale: 2
      t.references :vehicle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
