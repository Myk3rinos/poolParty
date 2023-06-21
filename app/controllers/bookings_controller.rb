class BookingsController < ApplicationController

  # before_action :set_bookings, only: [:create]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def new
    @pool = Pool.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @pool = Pool.find(params[:pool_id])
    @booking.pool = @pool
    @booking.save
    # raise
    # @pool = Booking.new(booking_params)
    # @pool.save
    # redirect_to restaurant_path(@restaurant)
  end

  def update

  end

  def delete

  end

  private

  def set_bookings
    @bookings = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:first_name, :last_name, :email, :identity, :phone_number)
  end
end
