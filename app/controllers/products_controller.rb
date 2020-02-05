class ProductsController < ApplicationController
  def index
    @vproducts=Product.all
  end
end
