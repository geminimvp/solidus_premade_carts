require 'spec_helper'

RSpec.describe "Premade Carts", type: :request do
  let!(:store) { create(:store) }
  let(:premade_cart) { create(:premade_cart, :with_variants) }

  it 'redirects to checkout' do
    get "/premade_carts/#{premade_cart.token}"
    expect(response).to redirect_to('/checkout')
  end

  it 'adds variants to the cart' do
    expect {
      get "/premade_carts/#{premade_cart.token}"
    }.to change(Spree::LineItem, :count).by(1)
  end
end
