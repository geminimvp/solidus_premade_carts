Spree::Variant.class_eval do
  has_many :premade_cart_variants, class_name: 'Spree::PremadeCartVariant', dependent: :destroy
  has_many :premade_carts, class_name: 'Spree::PremadeCart', through: :premade_cart_variants
end
