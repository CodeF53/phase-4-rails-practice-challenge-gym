class GymsController < ApplicationController
  before_action :set_gym, only: [:show]

  # GET /gyms/1
  def show
    render json: @gym
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gym
    @gym = Gym.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def gym_params
    params.require(:gym).permit(:name, :address)
  end
end
