class CheesesController < ApplicationController
  before_action :require_login, only: [:edit, :destroy, :create]

 def index
   cheeses = Cheese.all
   render locals: {
     cheeses: cheeses
   }
 end

 def show
   if Cheese.exists?(params[:id])
   render locals: {
     cheese: Cheese.find(params[:id])
   }
   else
     render html: { message: "Cheese not found :("}, status: 404
   end
 end

 def new
   render locals: {
     cheese: Cheese.new
   }
 end

 def create
   cheese = Cheese.new(cheese_params)
   cheese.user = current_user
   if cheese.save
     render json: cheese
   else
     render :new, locals: {
       cheese: cheese
     }
   end
 end

 def edit
   render locals: {
     cheese: Cheese.find(params[:id])
   }
 end

 def update
   if Cheese.exists?(params[:id])
     cheese.update(cheese_params)
     redirect_to cheese
   else
     render :edit
   end
 end

 def destroy
   if Cheese.exists?(params[:id])
     Cheese.destroy(params[:id])
     flash[:notice] = "Cheese destroyed"
     redirect_to cheeses
   else
     flash[:alert] = "Cheese was not destroyed due to errors."
   end
 end
end

private
def cheese_params
  params.require(:cheese).permit(:name)
end
