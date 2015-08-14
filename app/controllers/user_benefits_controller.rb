class UserBenefitsController < ApplicationController
  before_action :set_benefit
  
  def new
      current_user.benefits << @benefit
      redirect_to current_user # maybe?
  end
  
  private
  
  
  
  def set_benefit
      @benefit = Benefit.find(params[:id])
  end
end
