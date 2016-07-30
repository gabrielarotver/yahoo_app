$(document).ready(function(){
  $('#enter_zip').click(function(){
    var zipCode = $('#zipInput').val();
    var key = "3ed8874ebfa166dd32b62e547f51ffca";

    var url = "http://api.openweathermap.org/data/2.5/weather?zip=" + zipCode + ",us&units=imperial&APPID=" + key;

    $.get(url, function(data){
      console.log(data);

      var temp = data["main"]["temp"];
      var city = data["name"];
      var pic = data["weather"][0]["icon"];

      console.log(temp + " " + city + " " + pic);

    });
  });

});
