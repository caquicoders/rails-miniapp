class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :owner, index: true, foreign_key: { to_table: :users }, null: false
      t.string :name, null: false, index: true
      t.string :description, null: false
      t.string :location, null: false
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
