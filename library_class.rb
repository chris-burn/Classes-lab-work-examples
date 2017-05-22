class Library

  def initialize  (input_book_title)
    @book_title = input_book_title 
  end

  def get_books_data()
    @book_title = []
      for book in @books
        string_list = "#{book[:title]} rented by #{book[:rental_details][:student_name]}, due back on #{book[:rental_details][:date]}"
        @book_title << string_list
      end
    return @book_title
  end

end