class CreateCostumes < ActiveRecord::Migration[7.0]
  def change
    create_table :costumes do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :size
      t.string :address
      t.integer :price_per_day, default: 0

      t.timestamps

      # References
      t.references :owner, foreign_key: { to_table: :users }
    end
  end
end
