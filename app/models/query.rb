class Query < ApplicationRecord
  validates :query, uniqueness: true
  validates :query, presence: true

  has_many :listings
end
