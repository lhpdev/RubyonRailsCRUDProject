class StoreController < ApplicationController
  def index
    t = Time.now
    @products = Product.order(:title)
    @actualdate = t.strftime('%v')
    @actualtime = t.strftime('%r')
  end
end
