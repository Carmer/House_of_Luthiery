// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require_tree .



$(document).ready(function(){
  $( ".cross" ).hide();
    $( ".menu" ).hide();
    $( ".hamburger" ).click(function() {
      $( ".menu" ).toggle( "slow", function() {
      $( ".hamburger" ).hide();
      $( ".cross" ).show();
      });
  });

  $( ".cross" ).click(function() {
  $( ".menu" ).toggle( "slow", function() {
  $( ".cross" ).hide();
  $( ".hamburger" ).show();
  });
  });

  $("#signature-model-button").on("click", function(e){
    e.preventDefault();

    $(".signature-model").removeClass("hidden");
    $("#signature-model-button").addClass("selected");
    $("#custom-model-button").removeClass("selected");
    $(".custom-model").addClass("hidden");

    pictureFilpper();
    
  });

  $("#custom-model-button").on("click", function(e){
    e.preventDefault();

    $(".custom-model").removeClass("hidden");
    $("#custom-model-button").addClass("selected");
    $("#signature-model-button").removeClass("selected");
    $(".signature-model").addClass("hidden");
  });


  $(".carousel").carousel();

  pictureFlipper();
});
