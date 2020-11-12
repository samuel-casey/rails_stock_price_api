class AddForeignKeyToStock < ActiveRecord::Migration[6.0]
  def change
    add_column :stocks, :average_price_id, :integer
  end
end
