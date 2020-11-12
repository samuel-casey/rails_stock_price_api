class AveragePricesController < ApplicationController

  # GET /average_prices
  def index
    @average_prices = AveragePrice.all

    render json: @average_prices
  end

  # POST /stocks/:stock_id/average_prices
  def create
    @average_price = AveragePrice.new(average_price_params)
    @average_price.stock_id = params[:stock_id]

    if @average_price.save
      render json: @average_price, status: :created
    else
      render json: @average_price.errors, status: :unprocessable_entity
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def average_price_params
      params.require(:average_price).permit(:price_USD, :date)
    end
end
