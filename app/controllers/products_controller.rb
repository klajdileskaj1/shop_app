class ProductsController < ApplicationController
  def index
    @products=current_user.products

  end

  def show
  end

  def new
    @product=Product.new
  end

  def create

    @product=Product.new(set_params)
    @product.user_id=current_user.id
    if @product.save
      flash[:notice]="Product created successfully !"
      redirect_to root_path
    else
    render :new
    end
  end

  def edit
    @product=Product.find(params[:id])

  end

  def update

      @product=Product.find(params[:id])

      if @product.update(set_params)
        flash[:notice]="Product updated successfully"
        redirect_to products_path
      else
        flash[:alert]="Product didn't update successfully !!!"
        redirect_to edit_product_path
      end


  end

  def destroy
  end

  private

  def set_params
    params.require(:product).permit(:product_name,:price,:description,:color,:country,:expiration_date)
  end

end
