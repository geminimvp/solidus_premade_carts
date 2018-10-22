if Spree::Backend::Config.respond_to?(:menu_items)
  Spree::Backend::Config.configure do |config|
    config.menu_items << config.class::MenuItem.new(
      [:premade_carts],
      label: 'Premade Carts'
    )
  end
end
