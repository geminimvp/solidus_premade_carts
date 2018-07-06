# frozen_string_literal: true

FactoryBot.define do
  # Define your Spree extensions Factories within this file to enable applications, and other extensions to use and override them.
  #
  # Example adding this to your spec_helper will load these Factories for use:
  # require 'solidus_premade_carts/factories'
  factory :premade_cart, class: Spree::PremadeCart do
    sequence(:name) { |n| "Premade Cart #{n}" }

    trait :with_variants do
      after(:create) do |premade_cart, _evaluator|
        variant = create(:variant)
        premade_cart.variants << variant
      end
    end
  end
end
