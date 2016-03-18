class PokemonsController < ApplicationController

  def new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.update_attributes(:level => 1, :trainer_id => current_trainer.id, :health => 100)
    saved = @pokemon.save
    if saved
      redirect_to trainer_path(@current_trainer.id)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      render new_path
    end
  end

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update_attributes(:health => @pokemon.health-10) # another way to update
    if @pokemon.health <= 0
    	@pokemon.destroy
    end
    #1/0
    redirect_to trainer_path(@pokemon.trainer_id)
  end

  def pokemon_params
    params.require(:pokemon).permit(:name)

  end
end
