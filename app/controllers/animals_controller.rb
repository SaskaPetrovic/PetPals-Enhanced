class AnimalsController < ApplicationController

  def index
    @animal = Animal.all
    @cats = Animal.where(especes: 'Cat')
    @dogs = Animal.where(especes: 'Dog')
    @rodents = Animal.where(especes: 'Rodent')
    @reptiles = Animal.where(especes: 'Reptile')
    @fishes = Animal.where(especes: 'Fish')
    @birds = Animal.where(especes: 'Bird')
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user

    if @animal.save
      redirect_to dashboard_path, notice: 'L\'animal a bien été créé.'
    else
      render :new
    end
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:nom, :especes, :age, :localisation, :prix, :photo_url)
  end
end
