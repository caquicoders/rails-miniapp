class CreateEventAttendantsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendants do |t|
      t.references :event, foreign_key: true, null: false
      t.references :attendant, foreign_key: { to_table: :users }, null: false
      t.index [:event_id, :attendant_id], unique: true
      t.timestamps
    end
  end
end
