module Spree
  module Admin
    module PremadeCartsHelper
      def premade_cart_permalink(premade_cart)
        apply_premade_cart_url(premade_cart.token)
      end

      def temporary_variant_removal_path(premade_cart, variant)
        variant_ids = params[:variant_ids] - [variant.id.to_s]
        polymorphic_path([:admin, premade_cart], variant_ids: variant_ids)
      end
    end
  end
end
