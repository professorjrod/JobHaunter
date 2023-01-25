require 'open-uri'
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
    @url = generated_query_url
  end

  private

  def query_params
    params.permit(:query, :location)
  end

  def retrieve_html
    open(generated_query_url).read
  end

  def generated_query_url
    "https://linkedin.com/jobs-guest/jobs/api/seeMoreJobPostings/search?keywords=#{@query.query.gsub(' ',
                                                                                                     '%20')}%20&location=#{@query.location.gsub(' ',
                                                                                                                                                '%20')}&trk=public_jobs_jobs-search-bar_search-submit&position=1&pageNum=0&start=25"
  end
end
