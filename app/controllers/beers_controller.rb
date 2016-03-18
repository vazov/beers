class BeersController < ApplicationController
  def index    
    @breweries = Brewery.all
  	@beers = Beer.search(params[:search]).paginate(:per_page => 20, :page => params[:page])
  end

  def show
  	@beer = Beer.find(params[:id])
  end

  def brewery_beer
  	@beers = Beer.where(:brewery_id => params[:brewery_id]).paginate(:per_page => 20, :page => params[:page])  
  end    
end
