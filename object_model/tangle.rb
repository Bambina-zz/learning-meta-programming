require 'pry'

module Printable
  def print
    puts "it's Printable#print"
  end

  def prepare_cover
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
  end

  def print
    puts "it's Document#print"
  end
end

class Book
  include Document
  include Printable
end

binding.pry
###Try
#b = Book.new
#b.print_to_screen #=> it's Printable#print
#Book.ancestors
