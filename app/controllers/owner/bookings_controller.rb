class Owner::BookingsController < ApplicationController

  before_action :set_bookings, only: [:show, :edit, :update, :destroy]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def edit
  end

  def destroy
    @bookings.destroy
  end

  private

  def set_bookings
    @bookings = Booking.find(params[:id])
  end
end
