class PageController < ApplicationController
  def index
  end

  def user_index
    api_key = "3ed8874ebfa166dd32b62e547f51ffca"
    url = "http://api.openweathermap.org/data/2.5/weather?zip=33301,us&units=imperial&APPID=#{api_key}"
    res = HTTParty.get url
    response = JSON.parse(res.body)
    # puts response
    @temp = response["main"]["temp"]
    @city = response["name"]
    # @conditions = response["weather"][0]["description"].capitalize

    pic = response["weather"][0]["icon"]
    @icon_url = "http://openweathermap.org/img/w/#{pic}.png"

    @stories = Story.all
  end

  def admin_index
    @story = Story.new
    @stories = Story.all
  end
end
