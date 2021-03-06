class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state  = State.find(params[:id])
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)

    if @state.save
      redirect_to states_path
    else
      render :new
    end
  end

  def edit
    @state = State.find(params[:id])
  end

  def update
    @state = State.find(params[:id])

    if @state.update(state_params)
      redirect_to states_path
    else
      render :edit
    end
  end
  def destroy
    @state = State.find(params[:id])

    @state.destroy
    redirect_to states_path
  end

  private

  def state_params
    params.require(:state).permit(:name)
  end
end
