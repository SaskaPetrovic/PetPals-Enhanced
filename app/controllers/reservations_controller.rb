class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_animal

  def create
    @reservation = @animal.reservations.new(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to dashboard_path, notice: 'Réservation créée avec succès.'
    else
      redirect_to animal_path(@animal), alert: 'Erreur lors de la création de la réservation.'
    end
  end

  private

  def set_animal
    @animal = Animal.find(params[:animal_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date_debut, :date_fin)
  end
end
