class QueryController < ApplicationController
  def create
    @query = Query.new(query_params)
    raise 'Already exists' unless @query.save

    redirect_to @query
  end

  def show
    @query = Query.find(params[:id])
    @listings = @query.listings
    @url = "https://it.linkedin.com/jobs-guest/jobs/api/seeMoreJobPostings/search?keywords=#{@query.query}%20developer&location=#{@query.location}&geoId=103644278&trk=public_jobs_jobs-search-bar_search-submit&position=1&pageNum=0&start=25"
  end

  private

  def query_params
    params.permit(:query, :location)
  end
end
