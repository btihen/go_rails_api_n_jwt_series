# Json api v1 for locations
# force all formats to json (and have standard failure responses)
class Api::V1::LocationsController < ApiController  
  
  def show 
    location = Location.find(params[:id])
    render 'api/v1/locations/show', locals: {location: location}
  end
  
end