# Add admin menu link for managing premade carts

override_params = {
  virtual_path: 'spree/admin/shared/_configuration_menu',
  name: 'add_premade_carts_admin_menu_link',
  insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
  text: "<%= configurations_sidebar_menu_item 'Premade Carts', admin_premade_carts_path %>"
}

Deface::Override.new(override_params)
