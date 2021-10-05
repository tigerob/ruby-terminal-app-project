class Book
    attr_reader :book_details, :recency_and_geography, :genres

    def initialize(book_details, recency_and_geography, genres)
        @book_details = book_details
        @recency_and_geography = recency_and_geography
        @genres = genres
    end
end