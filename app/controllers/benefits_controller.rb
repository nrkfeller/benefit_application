class BenefitsController < ApplicationController
    before_action :find_benefit, only: [:show, :edit, :update, :destroy]
    
    def index
        @benefits = Benefit.all.order("created_at DESC")
    end
    
    def new
       @benefit = Benefit.new 
    end
    
    def create
        @benefit = Benefit.create(benefit_params)
        
        if @benefit.save
            redirect_to @benefit, notice: "Create Benefit"
        else
            render 'new'
        end
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        if @benefit.update(benefit_params)
            redirect_to @benefit, notice: "Updated"
        else
            render 'edit'
        end
    end
    
    def destroy
        @benefit.destroy
        redirect_to benefits_path
    end
    
    private
        def benefit_params
            params.require(:benefit).permit(:title, :description, :image)
        end
        
        def find_benefit
            @benefit = Benefit.find(params[:id])
        end
end
