# TDD  
# write the test fail
# fix
# test fail

# kind of imports to connnect our code
require 'rspec'
require_relative 'book.rb'
require_relative 'library.rb'


# describe block 
describe 'Book' do

it 'has to be real' do
    # it runs our code
    expect { Book.new}.to_not raise_error
    end

 it "has a title" do
     my_book = Book.new
     my_book.title = 'Catch-22'
     expect (my_book.title).to "Catch-22"
    end
    

    it "has an author" do
        my_book = Book.new
        expect(my_book.author).to 'anonymous'

        catch = Book.new 'Joseph Heller'
        expect(catch.author).to eq 'Joseph Heller'
    end

    it 'can have a current page' do
        my_book = Book.new
        wxpext(my_book.page).to eq 1
    end

    it "can read pages" do 
        my_book = Book.new
        # I'm passing real data andhaving my code in book.rb
        expect { my_book.read 10 }.to change {my_book.page}.from(1).to(10)
    end

end


describe 'Library' do

    it 'has to be real' do
        expect {library.new},to not raise_error
    end

    it 'has an array of books' do
        my_library = Library.new
        (expect(my_library.book_collection).to
        be_a Array 
    end

    it 'has an array of books' do
        my_book1 = Book.new
        my_book2 = Book.new
        my_library = Library.new
        my_library.add_books my_book1 
        my_library.add_books my_book2
        expect(my_library.book_collection).not_to be_empty
    end
    

end

# failure red accomplished

