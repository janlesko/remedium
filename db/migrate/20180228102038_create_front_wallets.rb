class CreateFrontWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :front_wallets do |t|
      t.float :balance
      t.string :address
      t.references :charity, foreign_key: true

      t.timestamps
    end
  end
end
