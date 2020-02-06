class ProductsController < ApplicationController
  def index
    @vproducts=Product.all
  end

  def  new

    @product=Product.new

  end

  def create
    @product=Product.new(product_paramas)
    if @product.save
      redirect_to products_path, notice: "El producto fue publicado con exito"
    else
      render :new
    end
  end

  def show

    @product =Product.find(params[:id])

  end

  def edit

      @product =Product.find(params[:id])

  end

  private
    def product_paramas
      params.require(:product).permit(:name, :url, :description)

    end

end
