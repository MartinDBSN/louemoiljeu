class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
    @rental = Rental.new
  end
end
