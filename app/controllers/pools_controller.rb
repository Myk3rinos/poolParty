class PoolsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_pool, only: %i[ show ]
  # before_action :set_pool, only: [:show, :edit, :update, :destroy]

  def index
    @pools = Pool.all
  end

  def new
    @pool = Pool.new
  end

  def show
    @booking = Booking.new
    # @booking = Booking.where(user_id: current_user)
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

  private

  def set_pool
    @pool = Pool.find(params[:id])
  end

  def pool_params
    # params.require(:pool).permit(:name)
    params.require(:pool).permit(:name, :description, :max_people, :address, :url_photo)
  end

end
