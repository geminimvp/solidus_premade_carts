// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/backend/all.js'

$(document).ready(function(){
  $('#copy-to-clipboard').on('click', function() {
    $('#premade-cart-text').select()
    document.execCommand("copy")
    flash = $(`<div class='flash success'>Copied the text: ${$('#premade-cart-text').get(0).value}</div>`)
      .appendTo('.js-flash-wrapper')
      .on('click', function() {
        $(this).remove();
      });
  })

  $('#add_variant_id').on('change', function(event) {
    $('#add-variant-to-cart').removeClass('d-none')
    paramIndicator = window.location.search.length > 0 ? '&' : '?'
    $('#add-variant-to-cart').attr('href', `${window.location.href}${paramIndicator}variant_ids[]=${event.added.id}`)
  })
})