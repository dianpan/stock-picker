class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol, index: true, null:false

      t.timestamps null:false
    end
  end
end
