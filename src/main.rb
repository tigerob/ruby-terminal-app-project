require_relative "./library.rb"
require "colorize"
require "artii"

title = Artii::Base.new

all_books = [@tolstoy, @morrison, @joyce, @zafon, @tolkien, @rushdie, @cervantes, @pullman, @heller, @orwell, @hosseini, @alcott, @mitchell, @rand, @wilde, @nabokov, @stockett, @karr, @melville, @pynchon, @atwood]


# -------------------- Method for menu --------------------
def run_app(all_books)
    puts "Welcome to 21 Books You’ve Been Meaning To Read (21 BYBMTR) - the terminal app that solves your dilemma of choosing which book to read.\n\nIn today's world, some people feel they are spoilt for choice, but are paralysed when it comes to making a decision. If that's you, look no further. This app knows Penguin Random House’s 'The 21 Books You've Been Meaning To Read' and will help you find your next nourshing page-turner.\n\nHow would you like to choose a book? Select from the following options and enter a number to continue:\n\n1.   Choose from the full list of books\n2.   Choose by genre\n3.   Take the 'what do I feel like?' quiz\n4.   Spin the wheel for a random book\n5.   I'm done for now - exit\n\n"
    users_choice = gets.strip.to_i
    case users_choice
        when 1
            system("clear")
            display_all_books(all_books)
        when 2
            system("clear")
            display_all_genres_and_take_users_choice(all_books)
        when 3
            system("clear")
            run_quiz(all_books)
        when 4
            system("clear")
            display_random_book(all_books)
        when 5
            system("clear")
            exit_app("Thank you for visiting. Happy reading!")
    end
    raise if ![1, 2, 3, 4, 5].include?(users_choice)
    rescue
        system("clear")
        puts "-------------------------------------------------------------------\n\nPlease type in a number from 1 to 4 to proceed!\n\n-------------------------------------------------------------------\n\n".colorize(:red)
        retry
end

# -------------------- Method for menu option 1 --------------------
def display_all_books(all_books)
    puts "Take your pick! Here's the full list:\n\n"
    all_books.each do |book|
        puts book.book_details.colorize(:light_blue).bold
    end
end

# -------------------- Method for menu option 2 --------------------
def display_all_genres_and_take_users_choice(all_books)
    puts "Select from the following genres and enter a number to continue:\n\n1.   Adventure\n2.   African-American literature\n3.   Coming of age\n4.   Drama\n5.   Dystopian\n6.   Fantasy\n7.   Historical\n8.   Magical realism\n9.   Memoir\n10.  Modernist literature\n11.  Philosophical\n12.  Satire\n13.  Science fiction\n\n"
    users_choice = gets.strip.to_i
    system("clear")
    puts "Here's some piping-hot literature that is right up your alley:\n\n"
    case users_choice
        when 1
            all_books.each do |book|
                if book.genres.include?("adventure")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 2
            all_books.each do |book|
                if book.genres.include?("african-american literature")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 3
            all_books.each do |book|
                if book.genres.include?("coming of age")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 4
            all_books.each do |book|
                if book.genres.include?("drama")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 5
            all_books.each do |book|
                if book.genres.include?("dystopian")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 6
            all_books.each do |book|
                if book.genres.include?("fantasy")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 7
            all_books.each do |book|
                if book.genres.include?("historical")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 8
            all_books.each do |book|
                if book.genres.include?("magical realism")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 9
            all_books.each do |book|
                if book.genres.include?("memoir")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 10
            all_books.each do |book|
                if book.genres.include?("modernist literature")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 11
            all_books.each do |book|
                if book.genres.include?("philosophical")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 12
            all_books.each do |book|
                if book.genres.include?("satire")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
        when 13
            all_books.each do |book|
                if book.genres.include?("science fiction")
                    puts book.book_details.colorize(:light_blue).bold
                end
            end
    end
    raise if ![1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13].include?(users_choice)
    rescue
        system("clear")
        puts "--------------------------------------------------------------------\n\nPlease type in a number from 1 to 13 to proceed!\n\n--------------------------------------------------------------------\n\n".colorize(:red)
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
        puts "---------------------------------------------------------------------------\n\nPlease type in either 'new' or 'old' for this question!\n\n---------------------------------------------------------------------------\n\n".colorize(:red)
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
        puts "----------------------------------------------------------------------------------\n\nPlease type in either 'American' or 'world' for this question!\n\n----------------------------------------------------------------------------------\n\n".colorize(:red)
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
    puts quiz_q_3_genres

    puts
    users_choice = gets.strip.downcase
    quiz_answers.push(users_choice)

    system("clear")
    puts "Here's some piping-hot literature that is right up your alley:\n\n"
    all_books.each do |book|
        if book.recency_and_geography[:recency] == quiz_answers[0] && book.recency_and_geography[:geography] == quiz_answers[1] && book.genres.include?(quiz_answers[2])
            puts book.book_details.colorize(:light_blue).bold
        end
    end

    raise if !quiz_q_3_genres.include?(users_choice)
    rescue
        quiz_answers.pop()
        system("clear")
        puts "------------------------------------------------------------------------------\n\nPlease type in one of the genres listed for this question!\n\n------------------------------------------------------------------------------\n\n".colorize(:red)
        retry
end


# -------------------- Method for menu option 4 --------------------

def display_random_book(all_books)
    random_book = all_books.sample
    puts "The wheel has spoken:\n\n"
    puts "#{random_book.book_details}".colorize(:light_blue).bold
end


# -------------------- Method for book art --------------------

def display_book_art
    puts "\n"\
    "      __...--~~~~~-._   _.-~~~~~--...__\n"\
    "    //               `V'               \\\\\n"\
    "   //                 |                 \\\\\n"\
    "  //__...--~~~~~~-._  |  _.-~~~~~~--...__\\\\\n"\
    " //__.....----~~~~._\\ | /_.~~~~----.....__\\\\\n"\
    "====================\\\\|//====================\n"\
    "                    `---`\n".colorize(:light_white)
    puts "Press enter to return to the start menu.\n\n\n"
    users_choice = gets
    raise if !["\n"].include?(users_choice)
    rescue
        system("clear")
        retry
end


# -------------------- Method to exit app --------------------

def exit_app(message)
    puts "#{message}\n\n"
    exit
end


# -------------------- Run methods that carry out app --------------------

while true
    system("clear")
    puts title.asciify("21      BYBMTR!")
    run_app(all_books)
    display_book_art
end