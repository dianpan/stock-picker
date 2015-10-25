class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.references :stock, index: true, foreign_key: true, null: false
      t.date :date, index: true, null: false
      t.integer :open
      t.integer :close
      t.integer :high
      t.integer :low
      t.integer :volume
      t.integer :adj_close
      t.string :currency, default: "USD", null: false

      t.timestamps null:false
    end
  end
end
