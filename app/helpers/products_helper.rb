module ProductsHelper

  def form_title

    @product.new_record? ? "NUEVO PRODUCTO" : "Modificar producto"

  end

end
