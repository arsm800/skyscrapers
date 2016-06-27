class SkyscrapersController < ApplicationController

  def index
    @cities = City.find(params[:city_id])
    @skyscrapers = @cities.skyscrapers
  end

  def show
    city = City.find(params[:city_id])
    @skyscraper = city.skyscrapers.find(params[:id])
  end
end
