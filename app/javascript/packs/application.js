// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"


Rails.start()
Turbolinks.start()
ActiveStorage.start()
var jQuery = require("jquery")

global.$ = global.jQuery = jQuery;
window.$ = window.jquery = jQuery;

import "../stylesheets/application.scss"

// adminlte js

require("admin-lte")
import "admin-lte/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min"
//font awesome
import "@fortawesome/fontawesome-free/js/all.min"

  
     setTimeout(function() {
    $('#successMessage').fadeOut('fast');
    }, 1000);