class CreateOutings < ActiveRecord::Migration[7.1]
  def change
    create_table :outings do |t|
      t.references :boat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :distance
      t.datetime :outing_time

      t.timestamps
    end
  end
end
