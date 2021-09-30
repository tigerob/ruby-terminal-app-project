require_relative "./library.rb"

all_books = [@tolstoy, @morrison, @joyce]

# users_chosen_books = []

# -------------------- Method for menu --------------------
def display_menu_and_take_users_choice(all_books)
    puts "Welcome to 21 Books You’ve Been Meaning To Read. Etc. Etc. \n\nHow would you like to choose a book? Select from the following options and enter a number to continue:\n\n1.   Choose from the full list of books\n2.   Choose by genre\n3.   Take the 'what do I feel like?' quiz\n4.   Spin the wheel for a random book\n5.   I'm done for now - press enter to exit\n\n"
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
            display_random_book(all_books)
            #insert method to choose a book from the array and add it to users_chosen_books array
        when 5
            # exit
    end
    raise if ![1, 2, 3, 4].include?(users_choice)
    rescue
        system("clear")
        puts "---------- Please type in a number from 1 to 4 to proceed! Here we go again :) ----------\n\n"
        retry
end

# -------------------- Method for menu option 1 --------------------
def display_all_books(all_books)
    all_books.each do |book|
        puts book.book_details
    end
    puts
end

# -------------------- Method for menu option 2 --------------------
def display_all_genres_and_take_users_choice(all_books)
    puts "Select from the following genres and enter a number to continue:\n\n1.   Adventure\n2.   African-American literature\n3.   Coming of age\n4.   Drama\n5.   Dystopian\n6.   Fantasy\n7.   Historical\n8.   Magical realism\n9.   Memoir\n10.  Modernist literature\n11.  Philosophical\n12.  Satire\n13.  Science fiction\n\n"
    users_choice = gets.strip.to_i # raise exception if not an integer value 1-13?
    case users_choice
        when 1

        when 2
            system("clear")
            puts "Here's some food for thought (aka reading for the soul):\n\n"
            all_books.each do |book|
                if book.genres.include?("african-american literature")
                    puts book.book_details
                end
            end
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
    puts
    raise if ![1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13].include?(users_choice)
    rescue
        system("clear")
        puts "---------- Please type in a number from 1 to 4 to proceed! Here we go again :) ----------\n\n"
        retry
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
end

def quiz_q_1(quiz_answers)
    puts "Do you feel like something new or something old? (We think of anything published within the last 50 years as new and anything published more than 50 years ago as old.) Enter either 'new' or 'old' to continue:\n\n"
    users_choice = gets.strip.downcase
    quiz_answers.push(users_choice)
    raise if !["new", "old"].include?(users_choice)
    rescue
        quiz_answers.pop()
        system("clear")
        puts "---------- Please type in either 'new' or 'old' for this question! Here it is again :) ----------\n\n"
        retry
end

def quiz_q_2(quiz_answers)
    puts "Do you feel like American literature or world literature? Enter either 'American' or 'world' to continue:\n\n"
    users_choice = gets.strip.downcase
    quiz_answers.push(users_choice)
    raise if !["american", "world"].include?(users_choice)
    rescue
        quiz_answers.pop()
        system("clear")
        puts "---------- Please type in either 'American' or 'world' for this question! Here it is again :) ----------\n\n"
        retry
end

def quiz_q_3(quiz_answers, all_books, quiz_q_3_genres)
    puts "Which genre do you most feel like? Enter one of the following genres to continue:\n\n"

    all_books.each do |book|
        if book.recency_and_geography[:recency] == quiz_answers[0] && book.recency_and_geography[:geography] == quiz_answers[1]
            quiz_q_3_genres.push(book.genres)
        end
    end
    quiz_q_3_genres.flatten!
    quiz_q_3_genres.uniq!
    # quiz_q_3_genres.capitalize!
    puts quiz_q_3_genres

    puts
    users_choice = gets.strip.downcase
    quiz_answers.push(users_choice)

    system("clear")
    puts "Here's some food for thought (aka reading for the soul):\n\n"
    all_books.each do |book|
        if book.recency_and_geography[:recency] == quiz_answers[0] && book.recency_and_geography[:geography] == quiz_answers[1] && book.genres.include?(quiz_answers[2])
            puts book.book_details
        end
    end
    puts

    raise if !quiz_q_3_genres.include?(users_choice)
    rescue
        quiz_answers.pop()
        system("clear")
        puts "---------- Please type in one of the genres listed for this question! Here it is again :) ----------\n\n"
        retry
end


# -------------------- Method for menu option 4 --------------------

def display_random_book(all_books)
    random_book = all_books.sample
    puts random_book.book_details
end


# -------------------- Method that runs app --------------------
system("clear")
display_menu_and_take_users_choice(all_books)


# ----------------------------------------
# menu_loop = true
# while menu_loop == true
# end

