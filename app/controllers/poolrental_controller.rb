class PoolrentalController < ApplicationController
  def index
    # @pools = Pool.all
    # @pool = Pool.find(1)
    @pool = Pool.new(pool_params)
  end

  private

  def pool_params
    # params.require(:pool).permit(:name, :description, :max_people, :address, :url_photo)
  end
end
