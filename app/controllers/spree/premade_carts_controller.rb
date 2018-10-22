module Spree
  class PremadeCartsController < Spree::StoreController

    def show
      @premade_cart = Spree::PremadeCart.find_by(token: params[:token].to_s)

      @order = current_order(create_order_if_necessary: true)

      # Add variants to cart
      @premade_cart.premade_cart_variants.each do |pmc_variant|
        variant = pmc_variant.variant
        quantity = pmc_variant.quantity
        @order.contents.add(variant, quantity)
      end

      # redirect to checkout
      redirect_to checkout_path
    end

  end
end
