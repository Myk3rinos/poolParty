class ContactController < ApplicationController
  def index
    @pool = Pool.find(1)
  end
end
