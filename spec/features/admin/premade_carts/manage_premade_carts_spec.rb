require 'spec_helper'

RSpec.describe 'Premade Cart Management', type: :feature do
  stub_authorization!

  let!(:premade_cart) { create(:premade_cart, name: 'First Bundle') }

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

  scenario 'Admin updates a premade cart' do
    visit spree.admin_premade_carts_path
    click_link 'First Bundle'
    expect(page).to have_link('link', href: "http://www.example.com/premade_carts/#{premade_cart.token}")
    fill_in 'Name', with: 'Cooler Bundle Name'
    click_button 'Update'
    expect(page).to have_text('Cooler Bundle Name')
  end
end
