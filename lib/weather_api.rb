require_relative "services/single_city_weather_service.rb"
require_relative "services/single_cityid_weather_service.rb"
require_relative "services/single_cityzipcode_weather_service.rb"
# require_relative "services/single_citygeocoord_weather_service.rb"
# require_relative "services/single_city_16days_weather_service.rb"
require_relative "single_city_5day_weather_service.rb"

class WeatherApi

  def single_city_weather_service
    SingleCityWeatherService.new
  end

  def single_cityid_weather_service
    SingleCityIdWeatherService.new
  end

  def single_cityzipcode_weather_service
    SingleCityZipCodeWeatherService.new
  end
  #
  # def single_citygeocoord_weather_service
  #   SingleCityGeoCoOrdWeatherService.new
  # end

  # def single_city_16days_weather_service
  #   SingleCity16DaysWeatherService.new
  # end

  def single_city_5day_weather_service
    SingleCity5DayWeatherService.new
  end

end

# test = WeatherApi.new.single_city_weather_service
# test.get_single_city_weather_results("London")
# puts test.single_city_weather_results

# test = WeatherApi.new.single_cityid_weather_service
# test.get_single_cityid_weather_results(2172797)
# puts test.single_cityid_weather_results

# test = WeatherApi.new.single_cityzipcode_weather_service
# test.get_single_cityzipcode_weather_results(94040)
# puts test.single_cityzipcode_weather_results

# test = WeatherApi.new.single_citygeocoord_weather_service
# test.get_single_citygeocoord_weather_results(35,139)
# puts test.single_citygeocoord_weather_results

test = SingleCity5DayWeatherService.new
test.get_single_city_5day_weather_results("London")
puts test.single_city_5day_weather_results
