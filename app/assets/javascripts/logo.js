$(document).ready(function() {

  $(window).on("scroll", function(){
    if( $(window).scrollTop() > 14  ) {
      console.log("win")
      $("#logo").addClass("fixLogo");
    } else if ( $(window).scrollTop() ){

    }
  });


});
