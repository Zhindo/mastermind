
# List of colors to choose from. 
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

def mastermind(colors)

    random_array = colors.sample(4)
    tries = 0

    while tries < 10
        puts "What's your guess?"

        guess = gets.chomp
        tries += 1
    end  

    print random_array
    puts ""

end

mastermind(colors)