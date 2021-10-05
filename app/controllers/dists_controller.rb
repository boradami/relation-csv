class DistsController < ApplicationController
  def index
    @dists = Dist.all
  end

  def show
    @dist  = Dist.find(params[:id])
  end

  def new
    @dist = Dist.new
  end

  def create
    @dist = Dist.new(dist_params)

    if @dist.save
      redirect_to dists_path
    else
      render :new
    end
  end

  def edit
    @dist = Dist.find(params[:id])
  end

  def update
    @dist = Dist.find(params[:id])

    if @dist.update(dist_params)
      redirect_to dists_path
    else
      render :edit
    end
  end
  def destroy
    @dist = Dist.find(params[:id])

    @dist.destroy
    redirect_to dists_path
  end

  private

  def dist_params
    params.require(:dist).permit(:name, :state_id)
  end
end
