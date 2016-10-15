require_relative 'titleize'
class Book
# write your code here
	include TitleMake

	def initialization(name)
		@title = name
	end
	
	def title
		@title
	end

	def title=(str)
	       @title = titleize(str)
        end	       

end

@book = Book.new

@book.title = "inferno"
p @book.title
