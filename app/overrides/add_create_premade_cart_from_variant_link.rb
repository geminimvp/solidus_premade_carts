# Add a link to create a premade cart with the master variant

override_params = {
  virtual_path: 'spree/admin/products/_form',
  name: 'add_create_premade_cart_variant_links',
  insert_after: "[data-hook='admin_product_form_sku']",
  text: "<div data-hook='admin_product_create_cart'><%= link_to 'create cart', new_admin_premade_cart_path('variant_ids[]' => @product.master.id) %></div>",
}

Deface::Override.new(override_params)
