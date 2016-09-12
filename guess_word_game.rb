#pseudocode
# Create a word guessing game that two users can play
# first user provides the word 
  # second user tries to guess it.
# print dashes to screen and multiply it by the length of word that first user provided.
# set the guess limit to length of the word that first user provided

# now when second user starts guessing the word
  # tell the user how many tries they have 
  #second user will provide one letter at a time.
# check to see if that letter is included in word
      # if it is included then take that word and store it 
        # otherwise tell the user try again it's not included in the word.
        # now if it included check that letter's index and replace it in dashes with the same index.

# once the user guesses the word or runs out of tries do this.
     # if the guessed word matches with provided 
          # write a victory msg and end the game.
      #otherwise
          # tell the second user they lost because they ran out of tries.
            #end the game 

  #let's make a game ..woo hoo!!!

  class Guess_word
    attr_reader :guess_count,:length, :user_display_array,:provided_word
    
    def initialize(provided_word)
      @provided_word = provided_word
      @length = provided_word.length
      @user_display_array = Array.new(@length,"_")
      @guess_count = @length
    end

    def word_check_logic(letter)

      if @provided_word.include?(letter)
        puts "Awesome.Word you trying to solve does contain letter '#{letter}'"
        puts""
          @user_display_array.delete_at(@provided_word.index(letter))
            @user_display_array.insert(@provided_word.index(letter), letter)
             @user_display_array.join(' ')
             #@user_display_array
      else 
        @guess_count -= 1
        puts"Please try again.Word you trying to solve does have letter '#{letter}' in it."
          @user_display_array.join(' ')
         #p @user_display_array
      end
    end

  end

  #driver code
  puts "Name of 1st player:"
    player1_name=gets.chomp
  puts "Name of 2nd player:"
    player2_name=gets.chomp

  puts "#{player1_name} please type the word you want #{player2_name} to guess."
      given_word= gets.chomp

  puts "#{player2_name} now it's your turn to guess the word."
    game = Guess_word.new(given_word)
      
    loop do
      puts""
      puts"Please write a letter to see if word contains your letter."
      puts ""
      puts "You have #{game.guess_count} tries left to guess the word."
        user_guess=gets.chomp
        game.word_check_logic(user_guess)
        p final_word=game.user_display_array.join(' ')
        
        puts "This is the word so far #{final_word}"
        puts""
        
        puts "To solve the Puzzle type 'yes'  or press any other key to continue"
          puzzle_solve=gets.chomp
            if puzzle_solve == 'yes'
                puts "Go ahead"
                  respone=gets.chomp
                    if respone == given_word 
                      puts "Fantastic job!!!! You Won!!!!!"
                      puts "************************************"
                      puts "Achievement Unlocked : Smart Cookie"
                      puts "************************************"
                    break
                    end
                    elsif game.guess_count == 0
                      puts "Sorry you lost.You ran out of tries."
                      puts "************************************"
                      puts "**************LOSER*****************"
                      puts "************************************"
                    else
                      puts "Okay as you wish ..keep trying to guess"
            end

        # if final_word == given_word # not working at the moment unless I ask for a whole string from user at once
        #   puts "you win"
        #   break
        # end
        # elsif @guess_count == 0
        #   puts "you ran out of tries"
        #   break
        #else
        #puts"try again"
        #end
        break if game.guess_count == 0
        
    
  end
  
  puts""
  puts "Thanks for playing.Enjoy your day. "
  


      








