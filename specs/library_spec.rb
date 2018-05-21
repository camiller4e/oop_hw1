require("minitest/autorun")
require("minitest/rg")

require_relative("../library")

class TestLibrary < MiniTest::Test

  def setup
    @library = ([{

      title: "Moby Dick",
      rental_details: {
        student_name: "Ahab",
        date: "01/12/16"
      }
    },

    {
      title: "Les Miserables",
      rental_details: {
        student_name: "Jean",
        date: "24/06/01"
      }
    },


    {
      title: "Dungeon Fun",
      rental_details: {
        student_name: "Campbell",
        date: "05/03/18"
      }
    }


    ])
  end


  def test_book
    collection = Library.new(@library)

    assert_equal(@library, collection.books)

  end

  def test_book_search
    collection = Library.new(@library)
    book_result = collection.book_search("Moby Dick")
    assert_equal({

      title: "Moby Dick",
      rental_details: {
        student_name: "Ahab",
        date: "01/12/16"
      }
    }, book_result)
  end

  def test_rental_search
    collection = Library.new(@library)
    rental_result = collection.rental_search("Moby Dick")
    assert_equal({:student_name=>"Ahab", :date=>"01/12/16"}, rental_result)
  end

  def test_add_book
    collection = Library.new(@library)
    add_result = collection.add_book({
      title: "1Q84",
      rental_details: {
        student_name: "",
        date: ""
      }
    })
    assert_equal(4, @library.count)
  end

def test_change_rental_details
  collection = Library.new(@library)
  change_result = collection.change_details("Moby Dick", "Katelyn", "22/05/18")
  assert_equal({title: "Moby Dick",
  rental_details: {
    student_name: "Katelyn",
    date: "22/05/18"}}, change_result)
  end

end
