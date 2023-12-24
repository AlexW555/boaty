class CreateBoats < ActiveRecord::Migration[7.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :boat_type
      t.boolean :coxxed
      t.float :distance
      t.boolean :available

      t.timestamps
    end
  end
end
