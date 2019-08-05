100.times do
  name = Faker::Book.unique.author
  bio = Faker::Lorem.paragraph_by_chars
  profile_pic_url = Faker::Internet.url
  academics = Faker::Lorem.paragraph_by_chars
  awards = Faker::Lorem.paragraph_by_chars
  Author.create(name: name, bio: bio, profile_pic_url: profile_pic_url, academics: academics, awards: awards)
end

genres = ["Science fiction", "Satire", "Drama", "Action", "Adventure","Romance", "Mystery", "Horror", "Self help", "Fantasy"]
count = 0
500.times do
  name = Faker::Book.title + " " + count.to_s
  short_description = Faker::Lorem.paragraph_by_chars
  long_description = Faker::Lorem.paragraph_by_chars
  publication_date = Faker::Date.birthday
  g = genres.sample
  Book.create(name: name, short_description: short_description, long_description: long_description, publication_date: publication_date, genre: g, author_id: Author.find(Author.pluck(:id).sample).id)
  count += 1
end

250.times do
  reviewer_name = Faker::Book.author
  rating = Faker::Number.number % 6
  title = Faker::Lorem.sentence
  description = Faker::Lorem.paragraph_by_chars
  Review.create(reviewer_name: reviewer_name, rating: rating, title: title, description: description, book_id: Book.find(Book.pluck(:id).sample).id)
end


User.create(name: "Test User", email: "testemail@mail.com", password: "Test#123", password_confirmation: "Test#123")