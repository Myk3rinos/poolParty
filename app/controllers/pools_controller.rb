class PoolsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_pool, only: %i[ show ]
  # before_action :set_pool, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @pools = Pool.where('address ILIKE ?', "%#{params[:query]}%")
    else
      @pools = Pool.all
    end
  end

  def new
    @pool = Pool.new
  end

  def show
    @booking = Booking.new
  end

  def edit
  end

  def update

  end

  def create
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    @pool.save
    redirect_to root_path
  end

  def destroy
    @pool = Pool.find(params[:id])
    @pool.destroy
    redirect_to owner_bookings_path
  end

  private

  def set_pool
    @pool = Pool.find(params[:id])
  end

  def pool_params
    params.require(:pool).permit(:name, :description, :max_people, :address, :url_photo)
  end

end
