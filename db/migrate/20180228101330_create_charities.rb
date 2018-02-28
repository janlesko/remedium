class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.text :description
      t.string :video
      t.string :email
      t.string :website
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
