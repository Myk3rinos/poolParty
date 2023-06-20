class Owner::BookingsController < ApplicationController

  before_action :set_bookings, only: [:show, :edit, :update, :destroy]
  def index
    @bookings = Booking.all
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_bookings

  end
end
