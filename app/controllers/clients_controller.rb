class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :destroy]

  # GET /clients/1
  def show
    render json: @client
  end

  # DELETE /clients/1
  def destroy
    @client.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_client
    @client = Client.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def client_params
    params.require(:client).permit(:name, :age)
  end
end
