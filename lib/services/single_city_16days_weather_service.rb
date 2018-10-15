# require "httparty"
# require "json"
#
# class SingleCity16DaysWeatherService
#
#   include HTTParty
#   attr_accessor :single_city_16days_weather_results
#
#   base_uri "http://api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=xml&units=metric&cnt=7"
#
#   def get_single_city_16days_weather_results(16cityname)
#     @single_city_16days_weather_results = JSON.parse(self.class.get("#{16cityname}&appid=66a73d14f131daacee120019170974d0").body)
#   end
#
#
# end
# 
# # weatherapi = SingleCityWeatherService.new
# # weatherapi.get_single_city_weather_results("London")
# # puts weatherapi.single_city_weather_results
