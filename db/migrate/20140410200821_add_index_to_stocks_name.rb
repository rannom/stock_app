class AddIndexToStocksName < ActiveRecord::Migration
  def change
  	add_index :stocks, :name, unique: true
  end
end
