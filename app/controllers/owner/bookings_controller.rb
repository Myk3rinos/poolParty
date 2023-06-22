class Owner::BookingsController < ApplicationController

  before_action :set_bookings, only: [:show, :edit, :update, :destroy]
  def index
    @bookings = Booking.all
    # @bookings.validation = false
  end

  def show
  end

  def edit
  end

  def destroy
    @bookings.destroy
    redirect_to bookings_path
  end

  def update

  end
  private

  def set_bookings
    @bookings = Booking.find(params[:id])
  end
end
