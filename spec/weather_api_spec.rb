require "spec_helper.rb"

describe WeatherApi do

  context 'requesting information on a single city by name works correctly' do

    before(:all) do
      @api_key = ENV["FIXER_API_KEY"]
      @weatherinfo = WeatherApi.new.single_city_weather_service
      @weatherinfo.get_single_city_weather_results("London")
    end

    it "should check if the co-ordinate longitude is a float" do
      expect(@weatherinfo.get_longitude_value).to be_a(Float)
    end

    it "should check if the co-ordinate latitude is a float" do
      expect(@weatherinfo.get_latitude_value).to be_a(Float)
    end

    it "should check if the weather id is a float" do
      expect(@weatherinfo.get_weather_id_value).to be_a(Integer)
    end

    it "should check if the weather main is a string" do
      expect(@weatherinfo.get_weather_main_value).to be_a(String)
    end

    it "should check if the weather desciption is a string" do
      expect(@weatherinfo.get_weather_description_value).to be_a(String)
    end

    it "should check if the weather icon is a hexadecimal" do
      expect(@weatherinfo.get_weather_icon_value).to be_a(String)
    end

    it "should check if the base is a string" do
      expect(@weatherinfo.get_base_value).to be_a(String)
    end

    it "should check if the main temp is a float" do
      expect(@weatherinfo.get_main_temp_value).to be_a(Float)
    end

    it "should check if the main pressure is a integer" do
      expect(@weatherinfo.get_main_pressure_value).to be_a(Integer)
    end

    it "should check if the main humidity is a integer" do
      expect(@weatherinfo.get_main_humidity_value).to be_a(Integer)
    end

    it "should check if the min temp is a float" do
      expect(@weatherinfo.get_main_temp_min_value).to be_a(Float)
    end

    it "should check if the max temp is a float" do
      expect(@weatherinfo.get_main_temp_max_value).to be_a(Float)
    end

    it "should check if the visibility is a integer" do
      expect(@weatherinfo.get_visibility_value).to be_a(Integer)
    end

    it "should check if the wind exists" do
      expect(@weatherinfo.check_wind).to eq(true)
    end

    it "should check if clouds all is a integer" do
      expect(@weatherinfo.get_clouds_all_value).to be_a(Integer)
    end

    it "should check if the dt is a integer" do
      expect(@weatherinfo.get_dt_value).to be_a(Integer)
    end

    it "should check if the sys type is a integer" do
      expect(@weatherinfo.get_sys_type_value).to be_a(Integer)
    end

    it "should check if the sys id is a integer" do
      expect(@weatherinfo.get_sys_id_value).to be_a(Integer)
    end

    it "should check if the sys message is a float" do
      expect(@weatherinfo.get_sys_message_value).to be_a(Float)
    end

    it "should check if the sys country is a string" do
        expect(@weatherinfo.get_sys_country_value).to be_a(String)
    end

    it "should check if the sys sunrise is a integer" do
      expect(@weatherinfo.get_sys_sunrise_value).to be_a(Integer)
    end

    it "should check if the sys sunset is a integer" do
      expect(@weatherinfo.get_sys_sunset_value).to be_a(Integer)
    end

    it "should check if the id is a integer" do
      expect(@weatherinfo.get_id_value).to be_a(Integer)
    end

    it "should check if the name is a string" do
      expect(@weatherinfo.get_name_value).to be_a(String)
    end

    it "should check if the cod is a integer" do
      expect(@weatherinfo.get_cod_value).to be_a(Integer)
    end

  end

  context 'requesting information on a single city by city id works correctly' do

    before(:all) do
      @api_key = ENV["FIXER_API_KEY"]
      @weatherinfo = WeatherApi.new.single_cityid_weather_service
      @weatherinfo.get_single_cityid_weather_results(2172797)
    end

    it "should check if the co-ordinate longitude is a float" do
      expect(@weatherinfo.get_longitude_value).to be_a(Float)
    end

    it "should check if the co-ordinate latitude is a float" do
      expect(@weatherinfo.get_latitude_value).to be_a(Float)
    end

    it "should check if the weather id is a float" do
      expect(@weatherinfo.get_weather_id_value).to be_a(Integer)
    end

    it "should check if the weather main is a string" do
      expect(@weatherinfo.get_weather_main_value).to be_a(String)
    end

    it "should check if the weather desciption is a string" do
      expect(@weatherinfo.get_weather_description_value).to be_a(String)
    end

    it "should check if the weather icon is a hexadecimal" do
      expect(@weatherinfo.get_weather_icon_value).to be_a(String)
    end

    it "should check if the base is a string" do
      expect(@weatherinfo.get_base_value).to be_a(String)
    end

    it "should check if the main temp is a float" do
      expect(@weatherinfo.get_main_temp_value).to be_a(Float)
    end

    it "should check if the main pressure is a integer" do
      expect(@weatherinfo.get_main_pressure_value).to be_a(Integer)
    end

    it "should check if the main humidity is a integer" do
      expect(@weatherinfo.get_main_humidity_value).to be_a(Integer)
    end

    it "should check if the min temp is a float" do
      expect(@weatherinfo.get_main_temp_min_value).to be_a(Float)
    end

    it "should check if the max temp is a float" do
      expect(@weatherinfo.get_main_temp_max_value).to be_a(Float)
    end

    it "should check if the visibility is a integer" do
      expect(@weatherinfo.get_visibility_value).to be_a(Integer)
    end

    it "should check if the wind exists" do
      expect(@weatherinfo.check_wind).to eq(true)
    end

    it "should check if clouds all is a integer" do
      expect(@weatherinfo.get_clouds_all_value).to be_a(Integer)
    end

    it "should check if the dt is a integer" do
      expect(@weatherinfo.get_dt_value).to be_a(Integer)
    end

    it "should check if the sys type is a integer" do
      expect(@weatherinfo.get_sys_type_value).to be_a(Integer)
    end

    it "should check if the sys id is a integer" do
      expect(@weatherinfo.get_sys_id_value).to be_a(Integer)
    end

    it "should check if the sys message is a float" do
      expect(@weatherinfo.get_sys_message_value).to be_a(Float)
    end

    it "should check if the sys country is a string" do
        expect(@weatherinfo.get_sys_country_value).to be_a(String)
    end

    it "should check if the sys sunrise is a integer" do
      expect(@weatherinfo.get_sys_sunrise_value).to be_a(Integer)
    end

    it "should check if the sys sunset is a integer" do
      expect(@weatherinfo.get_sys_sunset_value).to be_a(Integer)
    end

    it "should check if the id is a integer" do
      expect(@weatherinfo.get_id_value).to be_a(Integer)
    end

    it "should check if the name is a string" do
      expect(@weatherinfo.get_name_value).to be_a(String)
    end

    it "should check if the cod is a integer" do
      expect(@weatherinfo.get_cod_value).to be_a(Integer)
    end

  end


  context 'requesting information on a single city by zip code works correctly' do

    before(:all) do
      @api_key = ENV["FIXER_API_KEY"]
      @weatherinfo = WeatherApi.new.single_cityzipcode_weather_service
      @weatherinfo.get_single_cityzipcode_weather_results(94040)
    end

    it "should check if the co-ordinate longitude is a float" do
      expect(@weatherinfo.get_longitude_value).to be_a(Float)
    end

    it "should check if the co-ordinate latitude is a float" do
      expect(@weatherinfo.get_latitude_value).to be_a(Float)
    end

    it "should check if the weather id is a float" do
      expect(@weatherinfo.get_weather_id_value).to be_a(Integer)
    end

    it "should check if the weather main is a string" do
      expect(@weatherinfo.get_weather_main_value).to be_a(String)
    end

    it "should check if the weather desciption is a string" do
      expect(@weatherinfo.get_weather_description_value).to be_a(String)
    end

    it "should check if the weather icon is a hexadecimal" do
      expect(@weatherinfo.get_weather_icon_value).to be_a(String)
    end

    it "should check if the base is a string" do
      expect(@weatherinfo.get_base_value).to be_a(String)
    end

    it "should check if the main temp is a float" do
      expect(@weatherinfo.get_main_temp_value).to be_a(Float)
    end

    it "should check if the main pressure is a integer" do
      expect(@weatherinfo.get_main_pressure_value).to be_a(Integer)
    end

    it "should check if the main humidity is a integer" do
      expect(@weatherinfo.get_main_humidity_value).to be_a(Integer)
    end

    it "should check if the min temp is a float" do
      expect(@weatherinfo.get_main_temp_min_value).to be_a(Float)
    end

    it "should check if the max temp is a float" do
      expect(@weatherinfo.get_main_temp_max_value).to be_a(Float)
    end

    it "should check if the visibility is a integer" do
      expect(@weatherinfo.get_visibility_value).to be_a(Integer)
    end

    it "should check if the wind exists" do
      expect(@weatherinfo.check_wind).to eq(true)
    end

    it "should check if clouds all is a integer" do
      expect(@weatherinfo.get_clouds_all_value).to be_a(Integer)
    end

    it "should check if the dt is a integer" do
      expect(@weatherinfo.get_dt_value).to be_a(Integer)
    end

    it "should check if the sys type is a integer" do
      expect(@weatherinfo.get_sys_type_value).to be_a(Integer)
    end

    it "should check if the sys id is a integer" do
      expect(@weatherinfo.get_sys_id_value).to be_a(Integer)
    end

    it "should check if the sys message is a float" do
      expect(@weatherinfo.get_sys_message_value).to be_a(Float)
    end

    it "should check if the sys country is a string" do
        expect(@weatherinfo.get_sys_country_value).to be_a(String)
    end

    it "should check if the sys sunrise is a integer" do
      expect(@weatherinfo.get_sys_sunrise_value).to be_a(Integer)
    end

    it "should check if the sys sunset is a integer" do
      expect(@weatherinfo.get_sys_sunset_value).to be_a(Integer)
    end

    it "should check if the id is a integer" do
      expect(@weatherinfo.get_id_value).to be_a(Integer)
    end

    it "should check if the name is a string" do
      expect(@weatherinfo.get_name_value).to be_a(String)
    end

    it "should check if the cod is a integer" do
      expect(@weatherinfo.get_cod_value).to be_a(Integer)
    end

  end

  # context 'requesting information on a single city by geographical coordinates works correctly' do
  #
  #   before(:all) do
  #     @api_key = ENV["FIXER_API_KEY"]
  #     @weatherinfo = WeatherApi.new.single_citygeocoord_weather_service
  #     @weatherinfo.get_single_citygeocoord_weather_results([51.118507,-0.082813])
  #   end
  #
  #   it "should check if the co-ordinate longitude is a float" do
  #     expect(@weatherinfo.get_longitude_value).to be_a(Float)
  #   end
  #
  # end

  # context 'requesting information on a single city by by name for 16 days works correctly' do
  #
  #   before(:all) do
  #     @api_key = ENV["FIXER_API_KEY"]
  #     @weatherinfo = WeatherApi.new.single_city_16days_weather_service
  #     @weatherinfo.get_single_city_16days_weather_results("London")
  #   end
  #
  # end

  context 'requesting information on a single city by by name for 5 days works correctly' do

    before(:all) do
      @api_key = ENV["FIXER_API_KEY"]
      @weatherinfo = WeatherApi.new.single_city_5day_weather_service
      @weatherinfo.get_single_city_5day_weather_results("London")
    end

    it "should check if the location name is a string" do
      expect(@weatherinfo.get_location_name_value).to be_a(String)
    end

  end

end
