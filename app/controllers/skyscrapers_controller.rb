class SkyscrapersController < ApplicationController
  def index
    @cities = City.find(params[:city_id])
    @skyscrapers = @cities.skyscrapers
  end
end
