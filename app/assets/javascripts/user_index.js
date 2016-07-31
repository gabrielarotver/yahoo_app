$(document).ready(function(){
  $('#enter_zip').click(function(){
    // validate zip at some point!
    var zipCode = $('#zipInput').val();
    var key = "3ed8874ebfa166dd32b62e547f51ffca";
    var url = "http://api.openweathermap.org/data/2.5/weather?zip=" + zipCode + ",us&units=imperial&APPID=" + key;

    $.get(url, function(data){
      var temp = data["main"]["temp"];
      var city = data["name"];
      var pic = data["weather"][0]["icon"];
      var icon_url = "http://openweathermap.org/img/w/" + pic + ".png"
      $('span#city_name').text(city);
      $('b#degrees').text(temp);
      $('#weather_icon').attr("src", icon_url);
    });
  });

});
