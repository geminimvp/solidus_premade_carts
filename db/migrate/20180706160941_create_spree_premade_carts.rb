class CreateSpreePremadeCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_premade_carts do |t|
      t.string :name, null: false
      t.string :token
      t.timestamps

      t.index :token, unique: true
    end
  end
end
