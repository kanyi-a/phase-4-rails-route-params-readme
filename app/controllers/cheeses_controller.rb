class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  def show
    #find a cheese using ID from the url
    #send a json esponse using that cheese object
    #byebug
    cheese = Cheese.find_by(id: params[:id])
    render json:  cheese
  end
end
