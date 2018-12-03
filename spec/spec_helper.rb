require 'json'

require 'dotenv'
#a gem to help us access environment variales

require 'httparty'
#a gem that enables us to make HTTP requests from our ruby code

require_relative "../lib/nasa_data/"
Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end
