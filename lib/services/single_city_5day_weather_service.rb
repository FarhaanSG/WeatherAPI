require "httparty"
require "json"

class SingleCity5DayWeatherService

  include HTTParty
  attr_accessor :single_city_5day_weather_results

  base_uri "http://api.openweathermap.org/data/2.5/forecast?q="

  def get_single_city_5day_weather_results(5daycityname)
    @single_city_5day_weather_results = JSON.parse(self.class.get("#{5daycityname}&mode=xml&appid=66a73d14f131daacee120019170974d0").body)
  end

  def get_location_name_value
    @single_city_5day_weather_results["weatherdata"]["location"]["name"]
  end




end

# test = SingleCity5DayWeatherService.new
# test.get_single_city_5day_weather_results("London")
# puts test.single_city_5day_weather_results
