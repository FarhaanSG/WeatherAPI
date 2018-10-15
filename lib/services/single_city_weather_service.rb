require "httparty"
require "json"

class SingleCityWeatherService

  include HTTParty
  attr_accessor :single_city_weather_results

  base_uri "http://api.openweathermap.org/data/2.5/weather?q="

  def get_single_city_weather_results(cityname)
    @single_city_weather_results = JSON.parse(self.class.get("#{cityname}&appid=66a73d14f131daacee120019170974d0").body)
    @coord = @single_city_weather_results["coord"]
    @weather = @single_city_weather_results["weather"].first
    @main = @single_city_weather_results["main"]
    @wind = @single_city_weather_results["wind"]
    @sys = @single_city_weather_results["sys"]
  end

  def get_longitude_value
    @coord["lon"]
  end

  def get_latitude_value
    @coord["lat"]
  end

  def get_weather_id_value
    @weather["id"]
  end

  def get_weather_main_value
    @weather["main"]
  end

  def get_weather_description_value
    @weather["description"]
  end

  def get_weather_icon_value
    @weather["icon"]
  end

  def get_base_value
    @single_city_weather_results["base"]
  end

  def get_main_temp_value
    @main["temp"]
  end

  def get_main_pressure_value
    @main["pressure"]
  end

  def get_main_humidity_value
    @main["humidity"]
  end

  def get_main_temp_min_value
    @main["temp_min"]
  end

  def get_main_temp_max_value
    @main["temp_max"]
  end

  def get_visibility_value
    @single_city_weather_results["visibility"]
  end

  def check_wind
    if @wind
      return true
    end
    return false
  end

  def get_clouds_all_value
    @single_city_weather_results["clouds"]["all"]
  end

  def get_dt_value
    @single_city_weather_results["dt"]
  end

  def get_sys_type_value
    @sys["type"]
  end

  def get_sys_id_value
    @sys["id"]
  end

  def get_sys_message_value
    @sys["message"]
  end

  def get_sys_country_value
    @sys["country"]
  end

  def get_sys_sunrise_value
    @sys["sunrise"]
  end

  def get_sys_sunset_value
    @sys["sunset"]
  end

  def get_id_value
    @single_city_weather_results["id"]
  end

  def get_name_value
    @single_city_weather_results["name"]
  end

  def get_cod_value
    @single_city_weather_results["cod"]
  end

end

# weatherapi = SingleCityWeatherService.new
# weatherapi.get_single_city_weather_results("London")
# puts weatherapi.single_city_weather_results
