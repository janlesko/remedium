class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :sender_adress
      t.float :amount
      t.references :charity, foreign_key: true

      t.timestamps
    end
  end
end
