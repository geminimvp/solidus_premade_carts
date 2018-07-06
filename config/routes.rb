# frozen_string_literal: true

Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  get "/premade_carts/:token", to: "premade_carts#show"
end
