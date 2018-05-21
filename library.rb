class Library
  attr_accessor :books

  def initialize(input_book)
    @books = input_book
  end

  def books()
    return @books
  end

  def book_search(book_name)

    for book in @books
      if book[:title] == book_name
        return book
      end
    end
  end

  def rental_search(book_name)
  book_search(book_name)[:rental_details]
  end

  def add_book(new_book)
    @books.push(new_book)
  end

  def change_details(book_name, person, date)
    for book in @books
      if book[:title] == book_name
        book[:rental_details][:student_name] = person
        book[:rental_details][:date] = date
        return book
      end
    end
  end


end
