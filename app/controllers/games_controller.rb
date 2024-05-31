class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(games_params)
    @game.user = current_user
    if @game.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity, notice: "hahaha"
    end
  end

  def show
    @game = Game.find(params[:id])
    @rental = Rental.new
  end

  private

  def games_params
    params.require(:game).permit(:name, :platform, :genre, :price, :photo)
  end
end
