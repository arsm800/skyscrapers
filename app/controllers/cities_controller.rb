class CitiesController < ApplicationController

  def index
    @cities = City.all
    
  end

  def show
    @skyscrapers = Skyscraper.find(params[:id])
  end
end
