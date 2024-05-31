class RentalsController < ApplicationController
  
  def index
    @rentals = Rental.all
  end
  
  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.game = Game.find(params[:game_id])
    if @rental.save
      redirect_to game_path(@rental.game)
    else
      @game = @rental.game
      render "games/show", status: :unprocessable_entity, notice: "hahaha"
    end
  end

  def rental_params
    params.require(:rental).permit(:starting_date, :ending_date)
  end
end
