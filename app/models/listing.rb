class Listing < ApplicationRecord
  validates :url, uniqueness: true
  belongs_to :query
end
