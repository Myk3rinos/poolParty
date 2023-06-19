class PoolsController < ApplicationController

  before_action :set_pool, only: i%(show edit update destroy)
  def index
    @pools = Pool.all
  end

  def new

  end

  def show
    @pools = Pool.find(params[:id])
  end

  def edit

  end

  def update

  end

  private

  def set_pools

  end

end
