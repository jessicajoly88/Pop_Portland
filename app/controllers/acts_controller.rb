class ActsController < ApplicationController
  def new 
  	@act = Act.new
  end 

  def create 
  	@act = Act.new(act_params)
  	  if @act.save 
  	  	respond_to do |format|
  	  	  format.html { redirect_to '/' }
  	  	  format.js
  	  	end
  	  else
  	  	render :new
  	  end
  end 

  def show 
  	@act = Act.find(params[:id])
  end 


private
  def act_params
    params.require(:act).permit(:name, :genre, :description, :image, :website)
  end
end

