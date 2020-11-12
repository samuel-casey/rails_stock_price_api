class CreateAveragePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :average_prices do |t|
      t.integer :price_USD

      t.timestamps
    end
  end
end
