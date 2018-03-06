class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.references :charity, foreign_key: true

      t.timestamps
    end
  end
end
