class ParentshipsController < ApplicationController

  layout 'verwaltung'
  
  def index
    @parentships = Parentship.all
  end
  
  def show
    @parentships = Parentship.find(params[:id])
  end
  
  def new
    @parentships = Parentship.new
  end
  
  def create
    @parentships = Parentship.new(params[:parentships])
    if @parentships.save
      flash[:notice] = "Successfully created parentship."
      redirect_to @parentships
    else
      render :action => 'new'
    end
  end
  
  def edit
    @parentships = Parentship.find(params[:id])
  end
  
  def update
    @parentships = Parentship.find(params[:id])
    if @parentships.update_attributes(params[:parentships])
      flash[:notice] = "Successfully updated parentship."
      redirect_to @parentships
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @parentships = Parentship.find(params[:id])
    @parentships.destroy
    flash[:notice] = "Successfully destroyed parentship."
    redirect_to parentships_url
  end
end
