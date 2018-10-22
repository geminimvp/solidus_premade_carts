module Spree
  class PremadeCartVariant < ActiveRecord::Base

    self.table_name = 'spree_premade_cart_variants'

    belongs_to :premade_cart, class_name: 'Spree::PremadeCart'
    belongs_to :variant, class_name: 'Spree::Variant'

  end
end
