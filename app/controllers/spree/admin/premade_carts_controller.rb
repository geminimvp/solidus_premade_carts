# frozen_string_literal: true

module Spree
  module Admin
    class PremadeCartsController < ResourceController

      def index
        respond_with(@collection)
      end

      def show
        redirect_to action: :edit
      end

      private

      def find_resource
        model_class.find(params[:id])
      end

      def model_class
        Spree::PremadeCart
      end

      def collection
        return @collection if @collection
        params[:q] ||= {}
        params[:q][:s] ||= "name asc"
        # @search needs to be defined as this is passed to search_form_for
        @search = super.ransack(params[:q])
        @collection = @search.result.
                        order(id: :asc).
                        includes(premade_cart_includes).
                        page(params[:page]).
                        per(10)
      end

      def premade_cart_includes
        [:variants]
      end
    end
  end
end
