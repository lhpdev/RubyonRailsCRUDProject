 class StoreController < ApplicationController

  def increment_count
    if session[:counter].nil?
      session[:counter] = 1
    else
    session[:counter] += 1
    end
  end

  def index
    t = Time.now
    @products = Product.order(:title)
    @actualdate = t.strftime('%v')
    @actualtime = t.strftime('%r')
    increment_count
  end
end
