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
    redirect_to bookings_path

    # respond_to do |format|
    #   if @booking.save
    #     format.html { redirect_to booking_url(@booking), notice: "Book was successfully created." }
    #     format.json { render :show, status: :created, location: @booking }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @booking.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def update

  end

  def validate
    # raise
    @booking = Booking.find(params[:id])
    @booking.validation = true
    @booking.save
    redirect_to owner_bookings_path
  end

  def reject
    # raise
    @booking = Booking.find(params[:id])
    @booking.validation = false
    @booking.save
    redirect_to owner_bookings_path
  end

  def destroy
    # raise
    # @booking.destroy
    Booking.find(params[:id]).destroy
    redirect_to bookings_path
    # redirect_to bookings


    # respond_to do |format|
    #   format.html { redirect_to booking_url, notice: "Booking was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private

  def set_bookings
    @bookings = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:first_name, :last_name, :email, :identity, :phone_number)
  end
end
