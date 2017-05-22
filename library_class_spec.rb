require( 'minitest/autorun')
require( 'minitest/rg')
require_relative( 'library_class')

class TestLibrary < MiniTest::Test

  def setup()
    @books = Library.new([  { 
    title: "lord_of_the_rings",
    rental_details: { 
     student_name: "Jeff", 
     date: "01/12/16" } },
                        { 
    title: "the_hobbit",
    rental_details: { 
     student_name: "Chris", 
     date: "12/12/16" } }, 
                        { 
    title: "great_expectations",
    rental_details: {
      student_name: "Sean", 
      date: "01/01/17" } }, 
                        { 
    title: "the_art_of_war",
    rental_details: { 
      student_name: "Andrew", 
      date: "31/10/16" 
                      } } 
    ])
  end

  def test_books_data()
    expected = ["lord_of_the_rings rented by Jeff, due back on 01/12/16", "the_hobbit rented by Chris, due back on 12/12/16", "great_expectations rented by Sean, due back on 01/01/17", "the_art_of_war rented by Andrew, due back on 31/10/16"]
    assert_equal(expected, @books.get_books_data())
  end

  # def test_single_book_info()
  #   expected = []
  #   assert_equal(expected, @books.get)
  # end

end

