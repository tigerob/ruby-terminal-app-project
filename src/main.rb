require_relative "./library.rb"

all_books = [@tolstoy, @morrison, @joyce]

# users_chosen_books = []

# -------------------- Method for menu --------------------
def display_menu_and_take_users_choice(all_books)
    system("clear")
    puts "Welcome to 21 Books You’ve Been Meaning To Read. Etc. Etc. \n\nHow would you like to choose a book? Select from the following options and enter a number to continue:\n\n1.   Choose from the full list of books\n2.   Choose by genre\n3.   Take the 'what do I feel like?' quiz\n4.   Spin the wheel for a random book\n5.   I'm done for now - exit\n\n"
    users_choice = gets.strip.to_i # raise exception if not an integer value 1-4?
    case users_choice
        when 1
            system("clear")
            display_all_books(all_books)
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 2
            system("clear")
            display_all_genres_and_take_users_choice(all_books)
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 3
            system("clear")
            run_quiz(all_books)
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 4
            system("clear")
            # insert method
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 5
            # exit
    end
end

# -------------------- Method for menu option 1 --------------------
def display_all_books(all_books)
    all_books.each do |book|
        puts book.book_details
    end
    puts
end

# -------------------- Methods for menu option 2 --------------------
def display_all_genres_and_take_users_choice(all_books)
    puts "Select from the following genres and enter a number to continue:\n\n1.   Adventure\n2.   African-American literature\n3.   Coming of age\n4.   Drama\n5.   Dystopian\n6.   Fantasy\n7.   Historical\n8.   Magical realism\n9.   Memoir\n10.  Modernist literature\n11.  Philosophical\n12.  Satire\n13.  Science fiction\n\n"
    users_choice = gets.strip.to_i # raise exception if not an integer value 1-13?
    case users_choice
        when 1

        when 2
            system("clear")
            puts "Here's some food for thought (aka reading for the soul):\n\n"
            all_books.each do |book|
                if book.genres.include?("African-American literature")
                    puts book.book_details
                end
            end
            puts
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

# -------------------- Methods for menu option 3 --------------------

def run_quiz(all_books)
    quiz_answers = []
    quiz_q_3_genres = []

    quiz_q_1(quiz_answers)
    system("clear")
    quiz_q_2(quiz_answers)
    system("clear")
    quiz_q_3(quiz_answers, all_books, quiz_q_3_genres)
    system("clear")
    # case quiz_answers
    #     when []
        
    #     when

    # end
end

def quiz_q_1(quiz_answers)
    puts "Do you feel like something new or something old? (We think of anything published within the last 50 years as new and anything published more than 50 years ago as old.) Enter either 'new' or 'old' to continue:\n\n"
    users_choice = gets.strip.downcase
    raise if users_choice != "new" && users_choice != "old"
    rescue
        system("clear")
        puts "Please type in either 'new' or 'old' for this question! Here it is again :)\n\n"
        quiz_q_1(quiz_answers)
    quiz_answers.push(users_choice) 
end

def quiz_q_2(quiz_answers)
    puts "Do you feel like American literature or world literature? Enter either 'American' or 'world' to continue:\n\n"
    users_choice = gets.strip.downcase # raise exception if not 'world' or 'American'
    raise if users_choice != "american" && users_choice != "world"
    rescue
        system("clear")
        puts "Please type in either 'American' or 'world' for this question! Here it is again :)\n\n"
        quiz_q_2(quiz_answers)
    quiz_answers.push(users_choice)
end

def quiz_q_3(quiz_answers, all_books, quiz_q_3_genres)
    puts "Which genre do you most feel like? Enter one of the following genres to continue:\n\n"
    case quiz_answers
        when ["new", "american"]
            all_books.each do |book|
                if book.recency_and_geography[:recency] == "new" && book.recency_and_geography[:geography] == "american"
                    quiz_q_3_genres.push(book.genres)
                end
            end
    end
    puts quiz_q_3_genres # change to print one genre per line and remove duplicates
    puts
    users_choice = gets.strip.downcase # raise exception if input not included in quiz_q_3_genre

end


# -------------------- Method that runs app --------------------

display_menu_and_take_users_choice(all_books)


# ----------------------------------------
# menu_loop = true
# while menu_loop == true
# end

