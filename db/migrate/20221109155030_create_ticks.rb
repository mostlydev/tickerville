class CreateTicks < ActiveRecord::Migration[7.0]
  def change
    create_table :ticks do |t|
      t.references :ticker, null: false, foreign_key: true
      t.float :value
      t.float :delta_day
      t.float :delta_week
      t.float :delta_month

      t.timestamps
    end
  end
end
