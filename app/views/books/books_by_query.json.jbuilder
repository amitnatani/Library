json.array! @books do |book|
  json.extract! book, :name, :short_description, :long_description, :publication_date, :genre
end