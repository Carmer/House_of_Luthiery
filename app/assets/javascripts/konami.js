var code = "38384040373937396665";
var again = "65"
var timer;
var keys = "";

$(document).ready(function (){

  function doTheThing(){

    $('.page_footer').append("<img src='/assets/cart.jpg' class='konami'>");

    setTimeout( function(){  $('.konami' ).remove() }, 4000);

    $(document).keyup(function(e){
      if (e.which === 65 || e.which === 66) {
        doTheThing()
      }
    })
  }

  function inspectCode(){
    if(keys === code) {
      doTheThing();
    }
  }

  function runCode(){
    $(document).keyup(function(e) {
       clearTimeout(timer);
       inspectCode();
       keys += e.which;
    });
    timer = setTimeout(function() { keys = ""; }, 500);
  }

runCode();

});
