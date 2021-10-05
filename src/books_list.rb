require_relative "./Book.rb"

@tolstoy = Book.new("Leo Tolstoy - War and Peace (1867)", {:recency => "old", :geography => "world"}, ["historical", "philosophical"])

@morrison = Book.new("Toni Morrison - Song of Solomon (1977)", {:recency => "new", :geography => "american"}, ["african-american literature", "magical realism"])

@joyce = Book.new("James Joyce - Ulysses (1920)", {:recency => "old", :geography => "world"}, ["modernist literature"])

@zafon = Book.new("Carlos Ruiz Zafon - The Shadow of the Wind (2001)", {:recency => "new", :geography => "world"}, ["drama"])

@tolkien = Book.new("J.R.R. Tolkien - The Lord of the Rings (1954)", {:recency => "old", :geography => "world"}, ["adventure", "fantasy"])

@rushdie = Book.new("Salman Rushdie - The Satanic Verses (1988)", {:recency => "new", :geography => "world"}, ["magical realism"])

@cervantes = Book.new("Miguel de Cervantes - Don Quixote (1605)", {:recency => "old", :geography => "world"}, ["satire"])

@pullman = Book.new("Philip Pullman - The Golden Compass (1995)", {:recency => "new", :geography => "world"}, ["fantasy"])

@heller = Book.new("Joseph Heller - Catch-22 (1961)", {:recency => "old", :geography => "american"}, ["satire"])

@orwell = Book.new("George Orwell - 1984 (1949)", {:recency => "old", :geography => "world"}, ["dystopian", "science fiction"])

@hosseini = Book.new("Khaled Hosseini - The Kite Runner (2003)", {:recency => "new", :geography => "world"}, ["coming of age", "drama", "historical"])

@alcott = Book.new("Louisa May Alcott - Little Women (1869)", {:recency => "old", :geography => "american"}, ["coming of age"])

@mitchell = Book.new("David Mitchell - The Cloud Atlas (2004)", {:recency => "new", :geography => "world"}, ["historical", "science fiction"])

@rand = Book.new("Ayn Rand - The Fountainhead (1943)", {:recency => "old", :geography => "world"}, ["philosophical"])

@wilde = Book.new("Oscar Wilde - The Picture of Dorian Gray (1890)", {:recency => "old", :geography => "world"}, ["philosophical"])

@nabokov = Book.new("Vladimir Nabokov - Lolita (1955)", {:recency => "old", :geography => "world"}, ["drama"])

@stockett = Book.new("Kathryn Stockett - The Help (2009)", {:recency => "new", :geography => "american"}, ["african-american literature", "historical"])

@karr = Book.new("Mary Karr - The Liar’s Club (1995)", {:recency => "new", :geography => "american"}, ["memoir"])

@melville = Book.new("Herman Melville - Moby-Dick (1851)", {:recency => "old", :geography => "american"}, ["adventure"])

@pynchon = Book.new("Thomas Pynchon - Gravity’s Rainbow (1973)", {:recency => "new", :geography => "american"}, ["historical", "satire", "science fiction"])

@atwood = Book.new("Margaret Atwood - The Handmaid’s Tale (1985)", {:recency => "new", :geography => "world"}, ["dystopian", "science fiction"])