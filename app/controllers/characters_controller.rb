class CharactersController < ApplicationController

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @house = House.find(params[:id])
    @character = Character.find(params[:id])
  end

  def update
    @house = House.find(paramas[:id])
    @character = Character.find(params[:id])
    @character.update!(character_params)

    redirect_to house_character_path(@house, @character)
  end

private
  def character_params
    params.require(:character).permit(:name, :title, :quote, :img_url)
  end

end
