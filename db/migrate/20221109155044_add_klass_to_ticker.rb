class AddKlassToTicker < ActiveRecord::Migration[7.0]
  def change
    add_column :tickers, :klass, :string
  end
end
