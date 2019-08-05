class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews

  include PgSearch::Model

  multisearchable against: %i(name short_description long_description genre)
end
