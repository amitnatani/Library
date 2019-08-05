class Author < ApplicationRecord
  has_many :books
  include PgSearch::Model

  multisearchable against: %i(name bio academics awards)
end
