
# List of colors to choose from. 
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

def mastermind(colors)

    random_array = colors.sample(4)

    result = []
    guess_array = []
    
    guessed = false
    tries = 0

    print random_array
    puts ""

    def checkColor(array, guess, result)

        index = 0


        while index < array.length
            array.each_index do |color|
                if guess[index] == array[color]
                    if index == color
                        result.append("Black")
                    elsif index != color
                        result.append("White")
                    end
                end
            end
            index += 1
        end
        index = 0
        return result
    end

    def checkResult(result)
        if result[0] == "Black" && result[1] == "Black" && result[2] == "Black" && result[3] == "Black"
            puts "You Won!"
            return true
        else
            return false
        end
    end


    while guessed != true
        puts "What's the first color?"
        first_color = gets.chomp
        guess_array.push(first_color)

        puts "What's the second color?"
        second_color = gets.chomp
        guess_array.push(second_color)

        puts "What's the third color?"
        third_color = gets.chomp
        guess_array.push(third_color)

        puts "What's the fourth color?"
        fourth_color = gets.chomp
        guess_array.push(fourth_color)

        checkColor(random_array, guess_array,result)
        guessed = checkResult(result)
        
        tries += 1
        
        if tries >= 10
            puts "You have lost"
            guessed = true
        end
    end  

    
end

mastermind(colors)