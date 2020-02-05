class ProductsController < ApplicationController
  def index
    @vproducts=Product.all
  end

  def  new

    @p=Product.new

  end


end
