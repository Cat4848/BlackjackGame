
class View
    @@rounds = 0
    @@total_score = 0


    def keep_score
        @@total_score
    end

    
    def generate_random_number
        @@random_number = rand 1..14
        @@total_score = @@total_score + @@random_number
        @@rounds += 1
        @@random_number

    end

    def display_score
        puts "Round number #{@@rounds}: you have " + @@random_number.to_s + " points. Total " + @@total_score.to_s + " points."
    end

    def model
        
    end


end
puts "/////////////////////////////////"
puts "Welcome to Rochester Casino Club!"
puts "/////////////////////////////////"
puts "Let's play some Blackjack!"
puts "What's your name?"
name = gets.chomp.capitalize
puts "OK #{name}, let's see what you've got! If you go over 21 points, you lose."
puts "Press any key to start."
key = gets.chomp

blackjack = View.new


while blackjack.keep_score <= 21
    blackjack.generate_random_number
    blackjack.display_score
    puts "Press any key for more points."
    puts "Write 'stop' at anytime to keep your current points. "
    key = gets.chomp

    if key == "stop"
        abort("Better save than sorry! ;)")
    end

    if blackjack.keep_score == 21 
        puts "Congratulations! You won!"
    elsif blackjack.keep_score > 21
        abort("Game over! You lost! Better luck next time!")
    end
end


    

    

