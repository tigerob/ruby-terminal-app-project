require_relative "../Book.rb"

describe Book do
    it "should be an instance of a Book" do
        @book = Book.new("book details", "recency and geography", "genres")
        expect(@book).to be_a Book
    end

    it "should initialize with book details" do
        @book = Book.new("book details", "recency and geography", "genres")
        expect(@book.book_details).to eq("book details")
    end
end