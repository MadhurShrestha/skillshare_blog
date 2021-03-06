// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks

//= require js/jquery-3.2.1.min
//= require js/main
//= require js/modernizr
//= require js/fontawesome/all.min.js


//= require_tree .

Rails.start()
Turbolinks.start()
ActiveStorage.start()


require("../includes/posts")
