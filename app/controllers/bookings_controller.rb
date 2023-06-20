class BookingsController < ApplicationController

  before_action :set_bookings, only: [:index, :create]

  def index
    @bookings = Booking.all
  end

  def new

  end

  def create

  end

  def set_bookings

  end
end
