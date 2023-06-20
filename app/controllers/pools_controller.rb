class PoolsController < ApplicationController

  before_action :set_pool, only: [:show]
  # before_action :set_pool, only: [:show, :edit, :update, :destroy]
  def index
    @pools = Pool.all
  end

  def new
    @pool = Pool.new
  end

  def show
  end

  def edit
  end

  def update

  end

  private

  def set_pools
    @pool = Pool.find(params[:id])
  end

  def pool_params
    params.require(:pool).permit(:name)
  end
end
