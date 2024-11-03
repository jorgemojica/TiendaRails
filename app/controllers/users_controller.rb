class UsersController < ApplicationController
  skip_before_action :protect_pages, only: :show

  def show
    @user = User.find_by!(username: params[:username])
    @products = Product.all.with_attached_photo
    if @products.present? && params[:username]
      @products = @products.where(user_id: @user.id)
    end
    @pagy, @products = pagy_countless(if @products.present? then @products end, limit: 5)
  end
end