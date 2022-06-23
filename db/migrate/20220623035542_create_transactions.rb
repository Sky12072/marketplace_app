class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.references :listing, null: false, foreign_key: true
      t.references :coder, null: false, foreign_key: { to_table: :users }
      t.references :client, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
