require "json"
require "dotenv"
require "httparty"
require "rspec"
require_relative "../lib/weather_api.rb"

Dotenv.load(".env")

RSpec.configure do |config|
  config.formatter = :documentation
end
