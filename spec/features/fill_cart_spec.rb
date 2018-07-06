require 'spec_helper'

describe 'Premade Carts', type: :feature do
  let!(:store) { create(:store) }

  let(:premade_cart) { create(:premade_cart, :with_variants) }
  let(:first_cart_variant) { premade_cart_variants.first }
  let(:first_cart_product) { first_cart_variant.product }

  let(:premade_cart_link) { "/premade_carts/#{premade_cart.token}" }

  scenario "User visits a premade cart link" do
    visit premade_cart_link

    expect(page).to have_text("Checkout as a Guest")
    # expect(page).to have_text(first_cart_product.name)
    # expect(page).to have_text(first_cart_promotion.name)
    # expect(page).to have_text(cart_price_net_of_promotion)
  end
end
