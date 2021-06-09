// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

const { $ } = require("@rails/ujs")

require("@rails/ujs").start()

 var jQuery = require("jquery")
 global.$ = global.jQuery = jQuery
 windows.$ = window.jQuery = jQuery

require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//yarn add jquery popper.js
// require("jquery")
require("bootstrap")
require("./includes/houses");


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).on("turbolinks:load"), () => {
if ($('.upload-hider-labels').length > 0 ){
    $('.upload-hider-labels').each(function(){
        return $(this).closest('.form-group').find('.upload-hider-fields').hide();
    } );
}
 $('form').on('click', '.replace-upload', function(e) {
var uploadFields, uploadLabels;
e.preventDefault();
uploadLabels = $(this).closest('.upload-hider-labels');
uploadFields = $(this).closest('form-group').find('.upload-hider-fields');
uploadLabels.hide();
return uploadFields.show();
 });

  }



