class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :owner, foreign_key: { to_table: :users }, null: false
      t.string :name, null: false
      t.string :description, null: false
      t.string :location, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end
