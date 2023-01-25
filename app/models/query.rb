require 'open-uri'

class Query < ApplicationRecord
  validates :query, uniqueness: { scope: :location }
  validates :query, presence: true

  has_many :listings

  def html_to_parse
    html = Nokogiri::HTML URI.open(generated_query_url).read

    html.css('span.sr-only').each do |element|
      puts element.text
    end
  end

  def generated_query_url
    "https://linkedin.com/jobs-guest/jobs/api/seeMoreJobPostings/search?keywords=#{query.gsub(' ',
                                                                                              '%20')}%20&location=#{location.gsub(' ',
                                                                                                                                  '%20')}&trk=public_jobs_jobs-search-bar_search-submit&position=1&pageNum=0&start=25"
  end
end
