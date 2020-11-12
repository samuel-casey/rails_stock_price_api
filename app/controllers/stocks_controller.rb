class StocksController < ApplicationController
  before_action :set_stock, only: [:show]

  # GET /stocks
  def index
    @stocks = Stock.all

    render json: @stocks.to_json(include: :average_prices)
  end

  # GET /stocks/1
  def show
    render json: @stock.to_json(include: :average_prices)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stock_params
      params.require(:stock).permit(:symbol)
    end
end
