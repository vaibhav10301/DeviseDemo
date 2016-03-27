class HomesController < ApplicationController
  before_action :authenticate_user!

 def index
		@home=Home.all
	end

	def new
		@home=Home.new
	end

	def create 
		@home=Home.new(home_params)
		if @home.save
			redirect_to homes_path , notice: "Contact was successfully created"
		else
			render 'new'
		end
	end

	
    def edit
     	@home=Home.find(params[:id])
     end


    def show
    @home=Home.find(params[:id])	
    end

    
    def update
    @home=Home.find(params[:id])	
    if @home.update(home_params)
    	redirect_to @home
    else
      render 'edit'
    end
     end	

     def destroy
        @home=Home.find(params[:id])
        @home.destroy
        redirect_to @home
        
    end

	

    
    private
	def home_params
		params.require(:home).permit(:name,:address)
	end

  
end
