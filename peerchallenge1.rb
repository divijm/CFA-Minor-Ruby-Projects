# Problem
## There are two writers. How many words can each writer write and how many words in the book in total? ##

# Solution
class Book
  def initialize(book_name)
    @book_name = book_name
    @total_word_count = 0
  end
    attr_accessor :book_name

  def receieve_words(words)
    @total_word_count = words + @total_word_count
    puts "Book has total words of: #{@total_word_count}"
  end

end

class Writer
  def initialize(author_name)
    @author_name = author_name
    @word_count = 0
  end

    attr_accessor :author_name, :word_count

  def write_words(words, book)
    book.receieve_words(words)
    @word_count = words + @word_count
    puts "Author has written: #{@word_count}"
  end

end

x = Book.new("awesome")
y = Writer.new("rowling")
z = Writer.new("tolkien")

y.write_words(50, x)
z.write_words(50, x)
