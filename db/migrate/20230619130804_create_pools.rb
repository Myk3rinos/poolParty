class CreatePools < ActiveRecord::Migration[7.0]
  def change
    create_table :pools do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.integer :max_people
      t.string :address
      t.integer :rating

      t.timestamps
    end
  end
end
