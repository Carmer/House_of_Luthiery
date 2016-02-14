function pictureFlipper () {
  $(".instrument-thumbs").children().each(function(_, el){

  $(el).on("click", function(e){

    var newSRC = $(this).attr("src").replace("thumb", "large");

    var currentImage = $(document).find(".instrument-main-display").attr("src", newSRC);

    });

  });
}
