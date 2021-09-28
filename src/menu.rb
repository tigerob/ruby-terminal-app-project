require_relative "./library.rb"

all_books = [@tolstoy, @morrison]

# users_chosen_books = []

puts "\nWelcome to 21 Books You’ve Been Meaning To Read. Etc. Etc. \n\nHow would you like to choose a book? Select from the following options and enter a number to continue:\n\n1. Choose from the full list of books\n2. Choose by genre\n3. Take the 'what do I feel like?' quiz\n4. Spin the wheel for a random book\n5. I'm done for now - exit\n\n"

def take_and_process_users_menu_choice(all_books)
    users_menu_choice = gets.strip.to_i # raise exception if not an integer value 1-4?
    case users_menu_choice
        when 1
            system("clear")
            display_all_books(all_books)
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 2
            system("clear")
            display_all_genres
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 3
            # insert method
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 4
            # insert method
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 5
            # exit
    end
end

# Method for menu option 1 (users_menu_choice)
def display_all_books(all_books)
    all_books.each do |book|
        puts book.book_details
    end
    puts
end


# Method for menu option 2 (users_menu_choice)
def display_all_genres
    puts "Select from the following genres and enter a number to continue:\n\n"
    puts "1. Adventure\n2. African-American literature\n3. Coming of age\n4. Drama\n5. Dystopian\n6. Fantasy\n7. Historical\n8. Magical realism\n9. Memoir\n10. Modernist literature\n11. Philosophical\n12. Satire\n13. Science fiction\n"
    puts
end

take_and_process_users_menu_choice(all_books)




# menu_loop = true
# while menu_loop == true
# end

