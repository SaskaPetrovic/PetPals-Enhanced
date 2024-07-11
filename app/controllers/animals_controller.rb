class AnimalsController < ApplicationController
  def index
    @cats = Animal.where(especes: 'Cat')
    @dogs = Animal.where(especes: 'Dog')
    @rodents = Animal.where(especes: 'Rodent')
    @reptiles = Animal.where(especes: 'Reptile')
    @fishes = Animal.where(especes: 'Fish')
    @birds = Animal.where(especes: 'Bird')
    unless params[:localisation].nil? || params[:localisation].empty?
      @cats = @cats.where(localisation: params[:localisation])
      @dogs = @dogs.where(localisation: params[:localisation])
      @rodents = @rodents.where(localisation: params[:localisation])
      @reptiles = @reptiles.where(localisation: params[:localisation])
      @fishes = @fishes.where(localisation: params[:localisation])
      @birds = @birds.where(localisation: params[:localisation])
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end
  def new
  end
  def create
  end
end
