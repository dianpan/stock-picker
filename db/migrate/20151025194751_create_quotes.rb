class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.references :stock, index: true, foreign_key: true, null: false
      t.date :date, index: true, null: false
      t.float :open
      t.float :close
      t.float :high
      t.float :low
      t.integer :volume
      t.float :adj_close

      t.timestamps null:false
    end
  end
end
