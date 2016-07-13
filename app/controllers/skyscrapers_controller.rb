class SkyscrapersController < ApplicationController

  def index
    @city = City.find_by(slug: params[:city_slug])
    @skyscrapers = @city.skyscrapers
  end

  def show
    @city = City.find_by(slug: params[:city_slug])
    @skyscraper = @city.skyscrapers.find(params[:id])
  end
end
