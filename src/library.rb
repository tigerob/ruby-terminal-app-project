require_relative "./Book.rb"

@tolstoy = Book.new("Leo Tolstoy - War and Peace (1867)", {:recency => "old", :geography => "world"}, ["historical", "philosophical"])

@morrison = Book.new("Toni Morrison - Song of Solomon (1977)", {:recency => "new", :geography => "american"}, ["african-american literature", "magical realism"])

@joyce = Book.new("James Joyce - Ulysses (1920)", {:recency => "old", :geography => "world"}, ["modernist literature"])

@test = Book.new("This is a test book", {:recency => "new", :geography => "american"}, ["test genre a", "magical realism", "test genre b"])