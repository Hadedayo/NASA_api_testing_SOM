#include in the services
require_relative 'services/single_nasa_info'

class NasaInfo

  def single_nasa_info
    SingleNasaService.new
  end

end
