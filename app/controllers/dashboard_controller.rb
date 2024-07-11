class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservations = current_user.reservations.includes(:animal)
    @animals = current_user.animals
  end
end
