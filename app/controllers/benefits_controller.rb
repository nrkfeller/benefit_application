class BenefitsController < ApplicationController
    before_action :find_benefit, only: [:show, :edit, :update, :destroy]
    before_action :require_admin, only: [:new, :edit, :update, :destroy]
    
    def index
        @benefits = Benefit.search(params[:search]).paginate(page: params[:page], per_page: 15)
        #@benefits = Benefit.all.order("created_at DESC")
    end
    
    def new
       @benefit = Benefit.new 
    end
    
    def create
        @benefit = Benefit.create(benefit_params)
        @benefit.user_id = current_user.id
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
            params.require(:benefit).permit(:title, :description, :image, :partner_id, category_ids: [])
        end
        
        def find_benefit
            @benefit = Benefit.find(params[:id])
        end
        
        def require_admin
           if !current_user.admin?
               redirect_to benefits_path
           end
        end
end
