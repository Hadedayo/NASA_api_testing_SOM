require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class SingleNasaService
  include HTTParty

  attr_accessor :nasa_information

  def initialize
    @api_key = ENV['NASA_API_KEY']
    @nasa_information = JSON.parse(self.class.get("https://api.nasa.gov/planetary/apod?api_key=#{@api_key}").body)
  end

  def get_nasa_data
    @nasa_information
  end

  def get_copyright_value
    @nasa_information['copyright'].gsub(' ','')
  end

  def get_date
    @nasa_information['date']
  end

  def get_explanation
    @nasa_information['explanation']
  end

  def get_hdurl
    @nasa_information['hdurl']
  end

  def is_hdurl_a_link?
    get_hdurl.include?('https://')|('http://')
  end

  def get_media_type
    @nasa_information['media_type']
  end

  def get_service_version
    @nasa_information['service_version']
  end

  def get_title
    @nasa_information['title']
  end

  def get_url
    @nasa_information['url']
  end

  def is_url_a_link?
    get_url.include?('https://')|('http://')
  end


end

test = SingleNasaService.new
# puts test.get_nasa_data
puts test.get_hdurl
