module Spree
  module Admin
    class PremadeCartVariantsController < ResourceController

      private

      def find_resource
        model_class.find(params[:id])
      end

      def model_class
        Spree::PremadeCartVariant
      end

      def location_after_destroy
        edit_admin_premade_cart_path(@object.premade_cart, variant_ids: params[:variant_ids])
      end

    end
  end
end
