require_relative "../Book.rb"

describe Book do
    before(:example) do
        @book = Book.new("book details", "recency and geography", "genres")
    end

    context "on initialize" do
        it "should be an instance of a Book" do
            expect(@book).to be_a Book
        end

        it "should initialize with book details information" do
            expect(@book.book_details).to eq("book details")
        end

        it "should initialize with recency and geography information" do
            expect(@book.recency_and_geography).to eq("recency and geography")
        end

        it "should initialize with genres information" do
            expect(@book.genres).to eq("genres")
        end
    end
end