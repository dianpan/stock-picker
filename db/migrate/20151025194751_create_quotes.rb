class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.references :stock, index: true, foreign_key: true, null: false
      t.date :date, index: true, null: false
      t.integer :open_cents, :limit => 8
      t.integer :close_cents, :limit => 8
      t.integer :high_cents, :limit => 8
      t.integer :low_cents, :limit => 8
      t.integer :volume
      t.integer :adj_close_cents, :limit => 8
      t.string :currency, default: "USD", null: false

      t.timestamps null:false
    end
  end
end
