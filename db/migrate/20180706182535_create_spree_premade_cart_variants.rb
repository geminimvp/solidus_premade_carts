class CreateSpreePremadeCartVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_premade_cart_variants do |t|
      t.belongs_to :premade_cart, index: true, foreign_key: { to_table: :spree_premade_carts }
      t.belongs_to :variant, index: true, foreign_key: { to_table: :spree_variants }
      t.integer :quantity, default: 1, null: false
      t.timestamps

      t.index %i[spree_premade_cart_id spree_variant_id], unique: true, name: "index_pmc_variants_on_join_ids"
    end
  end
end
