class Library
    attr_accessor :book_collection
    def initialize
    @book_collection = []
    end

    def add_books books
        @book_collection << books
    end

end




# 1 - Library is a thing
# 2 - Library is an array of books, book_collection
