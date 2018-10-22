# Add a link to create a premade cart with the master variant

override_params = {
  virtual_path: 'spree/admin/products/_form',
  name: 'add_create_premade_cart_variant_links',
  insert_after: "[data-hook='admin_product_form_sku']",
  partial: "spree/admin/premade_carts/add_to_premade_cart_link",
}

Deface::Override.new(override_params)
