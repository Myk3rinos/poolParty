class BookingsController < ApplicationController

  before_action :set_bookings, only: [:create]

  def index
    @bookings = Booking.all
  end

  def new
    @pool = Pool.new
  end

  def create
    @pool = Booking.new(booking_params)
    @pool.save
    # redirect_to restaurant_path(@restaurant)
  end

  private

  def set_bookings
    @bookings = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:first_name, :last_name, :email, :identity, :phone_number)
  end
end
