class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :make
      t.string :year
      t.string :style

      t.timestamps null: false
    end
  end
end
