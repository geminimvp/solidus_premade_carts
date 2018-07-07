module Spree
  module Admin
    module PremadeCartsHelper
      def premade_cart_permalink(premade_cart)
        apply_premade_cart_url(premade_cart.token)
      end
    end
  end
end
