class BooksController < ApplicationController
  def books_by_query
    query = params[:query]
    @records = PgSearch.multisearch(query)
    @books = Book.where(id: generate_books_records)
  end

  private 
  def generate_books_records
    book_ids = []
    @records.each do |record|
      if record.searchable_type == "Author"
        book_ids.push(record.searchable.book_ids)
      elsif record.searchable_type == "Book"
        book_ids.push(record.searchable_id)
      elsif record.searchable_type == "Review"
        book_ids.push(record.searchable.book_id)
      end
    end
    book_ids
  end
end
