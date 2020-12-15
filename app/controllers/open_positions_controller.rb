class OpenPositionsController < ApplicationController

  before_action :authentication_required
  before_action :set_open_position, only: [:show, :edit, :update, :destroy]

  def index
    @open_positions = OpenPosition.all
  end

  def show
  end

  def new
    @open_position = OpenPosition.new
  end

  def edit

  end

  def create
    @open_position = OpenPosition.new(open_position_params)
    @open_position.save
    redirect_to open_position_path(@open_position)
  end

  def update
    @open_position.update(open_position_params)
    redirect_to open_position_path(@open_position)
  end

  def destroy
    @open_position.destroy
    redirect_to open_positions_path
  end

  private

  def set_open_position
    @open_position = OpenPosition.find(params[:id])
  end

  def open_position_params
    params.require(:open_position).permit(:title, :url, :compensation, :remote, :status, :company_id, :notes)
  end

end
