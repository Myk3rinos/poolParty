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
    @booking = Booking.find(1)
  end

  def edit
  end

  def update

  end

  private

  def set_pool
    @pool = Pool.find(params[:id])
  end

  def pool_params
    params.require(:pool).permit(:name)
  end

end
