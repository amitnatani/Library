class Review < ApplicationRecord
  belongs_to :book
  include PgSearch::Model
  multisearchable against: %i(reviewer_name title description)
end
