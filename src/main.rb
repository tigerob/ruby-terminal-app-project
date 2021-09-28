require_relative "./library.rb"

all_books = [@tolstoy, @morrison]

# users_chosen_books = []

# Method for menu screen
def display_menu_and_take_users_choice(all_books)
    puts "\nWelcome to 21 Books You’ve Been Meaning To Read. Etc. Etc. \n\nHow would you like to choose a book? Select from the following options and enter a number to continue:\n\n1.   Choose from the full list of books\n2.   Choose by genre\n3.   Take the 'what do I feel like?' quiz\n4.   Spin the wheel for a random book\n5.   I'm done for now - exit\n\n"
    users_choice = gets.strip.to_i # raise exception if not an integer value 1-4?
    case users_choice
        when 1
            system("clear")
            display_all_books(all_books)
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 2
            system("clear")
            display_all_genres_and_take_users_choice

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

# Method for menu option 1
def display_all_books(all_books)
    all_books.each do |book|
        puts book.book_details
    end
    puts
end

# Methods for menu option 2
def display_all_genres_and_take_users_choice
    puts "Select from the following genres and enter a number to continue:\n\n1.   Adventure\n2.   African-American literature\n3.   Coming of age\n4.   Drama\n5.   Dystopian\n6.   Fantasy\n7.   Historical\n8.   Magical realism\n9.   Memoir\n10.  Modernist literature\n11.  Philosophical\n12.  Satire\n13.  Science fiction\n\n"
    users_choice = gets.strip.to_i # raise exception if not an integer value 1-13?
    case users_choice
        when 1
            all_books.each do |book|
                if genres.include?("historical")
                    puts book.book_details
                end
            end 

        when 2

        when 3

        when 4

        when 5

        when 6

        when 7

        when 8

        when 9

        when 10

        when 11

        when 12

        when 13

    end
end

# def 
#     

# end


# Methods that run app
display_menu_and_take_users_choice(all_books)




# menu_loop = true
# while menu_loop == true
# end

