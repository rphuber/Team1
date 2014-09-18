class TiyersController < ApplicationController
  def index
    @tiyers= Tiyer.all
  end

  def new
    @tiyer = Tiyer.new
  end

  def create
    @tiyer = Tiyer.create tiyer_params
    respond_to do |format|
      format.json { render json: @tiyer.as_json }
    end
  end

  def show
    
  end

  def edit
    @tiyer = Tiyer.find params[:id]
  end

  def update
    @tiyer = Tiyer.find params[:id]
    @tiyer.update_attributes tiyer_params
    respond_to do |format|
      format.json { render json: @tiyer.as_json }
    end
  end

  def destroy
    @tiyer = Tiyer.find params[:id]
    @tiyer.delete
    respond_to do |format|
      format.json { render json: @tiyer.as_json }
    end
  end
private

  def tiyer_params
    params.require(:tiyer).permit(:first_name, :last_name, :github, :tiy_type)
  end

end
