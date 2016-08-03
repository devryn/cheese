class UsercheesesController < ApplicationController
  before_action :require_login, only: [:create, :edit, :destroy]

  def index
    render locals: {
      usercheeses: Usercheese.all
    }
  end

  def show
    if Usercheese.exists?(params[:id])
    render locals: {
      usercheese: Usercheese.find(params[:id])
    }
    else
      render html: { message: "We couldn't find your cheese!"}, status: 404
    end
  end


  def create
    usercheese = Usercheese.new(usercheese_params)
    if usercheese.save
      redirect_to :usercheese
    else
      redirect_to :back
    end
  end


  def update
    if Usercheese.exists?(params[:id])
      usercheese.update(usercheese_params)
      redirect_to :usercheese
    else
      redirect_to :back
    end
  end

  def destroy
    if Usercheese.exists?(params[:id])
      Usercheese.destroy(params[:id])
      flash[:notice] = "Your cheese was destroyed."
      redirect_to usercheese
    else
      flash[:alert] = "Your cheese was not destroyed due to errors."
    end
  end

private
  def usercheese_params
    params.require(:usercheese).permit(:user_name, :cheese_name)
  end
end
