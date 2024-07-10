class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservations = current_user.reservations
    @animals = current_user.animals
  end
end
