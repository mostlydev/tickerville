class CreateTickers < ActiveRecord::Migration[7.0]
  def change
    create_table :tickers do |t|
      t.string :name
      t.string :slug
      t.string :url
      t.text :description
      t.string :units

      t.timestamps
    end
  end
end
