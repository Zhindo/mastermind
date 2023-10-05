
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

    def checkColor(array, guess)



        array.each_index do |index|
            if guess[index] == array[index]
                puts "Hello"
            end
        end

    end


    while tries < 10
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

        checkColor(random_array, guess_array)
        tries += 10
        puts tries
    end  

    
end

mastermind(colors)