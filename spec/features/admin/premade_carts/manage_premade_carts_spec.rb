require 'spec_helper'

RSpec.describe 'Premade Cart Management', type: :feature do
  stub_authorization!

  let!(:premade_cart) { create(:premade_cart, name: 'First Bundle') }
  let!(:product_wo_variants) { create(:product) }
  let(:master) { product_wo_variants.master }
  # let!(:product_with_variants) { create(:product_with_variants) }

  scenario 'Admin has a link to manage premade carts', js: true do
    visit spree.admin_orders_path
    click_link 'Settings'
    expect(page).to have_text('Premade Carts')
  end

  scenario 'Admin creates a new premade cart', js: true do
    visit spree.admin_premade_carts_path
    click_link 'New Premade Cart'
    fill_in 'Name', with: 'Awesome Bundle Offer'
    click_button 'Create'
    expect(page).to have_text('Awesome Bundle Offer')
  end

  scenario 'Admin creates a cart from a product master variant', js: true do
    visit spree.admin_products_path
    click_link product_wo_variants.name
    click_link 'create cart'
    expect(page).to have_text(master.sku)
    fill_in 'Name', with: 'Buy this product offer'
    click_button 'Create'
    expect(page).to have_text('Buy this product offer')
    click_link 'Buy this product offer'
    expect(page).to have_text(master.sku)
  end

  scenario 'Admin updates a premade cart' do
    visit spree.admin_premade_carts_path
    click_link 'First Bundle'
    expect(page).to have_link('link', href: "http://www.example.com/premade_carts/#{premade_cart.token}")
    fill_in 'Name', with: 'Cooler Bundle Name'
    click_button 'Update'
    expect(page).to have_text('Cooler Bundle Name')
  end
end
