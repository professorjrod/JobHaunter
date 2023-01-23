class Listing < ApplicationRecord
  validates :url, uniqueness: true
end
