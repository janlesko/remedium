class CreateBackWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :back_wallets do |t|
      t.float :balance, :default => 0
      t.string :address
      t.references :front_wallet, foreign_key: true

      t.timestamps
    end
  end
end
