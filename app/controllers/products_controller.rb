class ProductsController < ApplicationController

  def index
    @vproducts=Product.all
  end

  def  new

    @product=Product.new

  end

  def create
    @product=Product.new(product_params)
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

  def update

    @product=Product.find(params[:id])
    if @product.update(product_params)

      redirect_to products_path, notice: "El producto ha sido modificado"
    else

      render :edit
    end

  end

  def destroy

    product=Product.find(params[:id])
    product.destroy

    redirect_to products_path, notice: "el producto se elimino con exito"

  end

  private
    def product_params

      params.require(:product).permit(:name, :url, :description)

    end

end
