# frozen_string_literal: true

Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :premade_carts
  end

  get "/premade_carts/:token", to: "premade_carts#show", as: :apply_premade_cart
end
