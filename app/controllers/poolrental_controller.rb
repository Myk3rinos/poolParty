class PoolrentalController < ApplicationController
  def index
    # @pool = Pool.new(pool_params)
    @pool = Pool.new
  end

  def create
    raise
    @pool = Pool.new(pool_params)
    @pool.save
    redirect_to pools
    # respond_to do |format|
    #   if @pool.save
    #     format.html { redirect_to poolrental_path, notice: "Book was successfully created." }
    #     format.json { render :show, status: :created, location: @book }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @book.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  private

  def pool_params
    params.require(:pool).permit(:name, :description, :max_people, :address, :url_photo)
  end
end
