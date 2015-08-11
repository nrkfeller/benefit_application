class CategoriesController < ApplicationController
  before_action :require_admin, only: [:new]
  
  def show
    @category = Category.find(params[:id])
  end
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:sucess] = "Created new Category"
      redirect_to benefits_path
    else
      render 'new'
    end
  end
  
  private
    def category_params
      params. require(:category).permit(:name)
    end
    
    def require_admin
      if !current_user.admin?
        redirect_to benefits_path
      end
    end
end