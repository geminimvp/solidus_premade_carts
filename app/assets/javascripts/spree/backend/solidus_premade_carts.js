// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/backend/all.js'

Spree.ready(function() {
  $('#copy-to-clipboard').on('click', function() {
    const url = $('#premade-cart-link').text();

    show_flash('success', `Copied the text: ${url}`);
    navigator.clipboard.writeText(url);
  })

  $('#add_variant_id').on('change', function(event) {
    const paramIndicator = window.location.search.length > 0 ? '&' : '?';
    const url = `${window.location.href}${paramIndicator}variant_ids[]=${event.added.id}`;

    $('#add-variant-to-cart').removeClass('d-none');
    $('#add-variant-to-cart').attr('href', `${url}`)
  })
})
