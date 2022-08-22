class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.text :comment
      t.string :status
      t.date :start_date
      t.date :end_date
      t.integer :total_amount

      t.timestamps

      # References
      t.references :costume
      t.references :renter, foreign_key: { to_table: :users }
    end
  end
end
