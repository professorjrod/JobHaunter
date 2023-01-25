class Query < ApplicationRecord
  validates :query, uniqueness: { scope: :location }
  validates :query, presence: true

  has_many :listings
end
