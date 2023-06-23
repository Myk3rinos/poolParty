class ContactController < ApplicationController
  def index
    @pool = Pool.new
  end
end
