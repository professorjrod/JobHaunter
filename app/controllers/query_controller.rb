class QueryController < ApplicationController
  def create
    @query = Query.new(query_params)
    if @query.save
      redirect_to @query
    else
      redirect_to Query.where(query: @query.query, location: @query.location)[0]
    end
  end

  def show
    @query = Query.find(params[:id])
    @listings = @query.listings
    @url = @query.generated_query_url
  end

  private

  def query_params
    params.permit(:query, :location)
  end
end
