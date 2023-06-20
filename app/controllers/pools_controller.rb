class PoolsController < ApplicationController

  before_action :set_pool, only: [:show, :edit, :update, :destroy]
  def index
    @pools = Pool.all
  end

  def new
    @pool = Pool.new
  end

  def show
  end

  def edit
    @pool.save
  end

  def update

  end

  private

  def set_pools
    @pools = Pool.find(params[:id])
  end

end
