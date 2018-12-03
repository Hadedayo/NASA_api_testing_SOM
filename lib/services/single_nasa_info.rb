require 'httparty'
require 'json'
require 'dotenv'
require 'yaml'

class SingleNasaService

  def initialize(yaml_file)
    @api_key = ENV['NASA_API_KEY']
    @nasa_informationle = YAML.load_file((HTTParty::get("https://api.nasa.gov/planetary/apod?api_key=#{@api_key}").body))
  end

end
