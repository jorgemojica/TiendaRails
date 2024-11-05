class FavoritesController < ApplicationController

  def index

  end

  def create
    # Favorite.create(product: product, user: Current.user)
    # product.favorites.create(user: Current.user)
    product.favorite!
    redirect_to product_path(product)
  end

  def destroy
    product.unfavorite!
    redirect_to product_path(product), status: :see_other
  end

  private
    def product
      # ||= Cachear la consulta para cuando se tenga que consultar más de una vez
      @product ||= Product.find(params[:product_id])
    end
end