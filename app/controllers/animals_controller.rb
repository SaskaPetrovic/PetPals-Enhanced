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
  end

  def create
  end

end
