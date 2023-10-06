
class Player

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def show_name
        puts name
    end

    
end
# List of colors to choose from. 
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

def mastermindPlayer(colors)

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
        results = result.sort { |b, a| b <=> a }
        puts results
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
        
        if tries >= 12
            puts "You have lost. Try Again"
            guessed = true
        end
    end  

    
end

puts "What's your name?"

player = Player.new("#{gets.chomp}")

puts player.name

puts "Enter 1 if you want to play as the player"
puts "Enter 2 if you want the Computer to guess you."
print "\nYour Choice: "

correct_choice = false
choice = gets.chomp.to_i

while correct_choice != true
    
    if choice == 1 || choice == 2
        correct_choice = true
    else
        puts choice
        puts "Wrong choice. Try again"
        puts "\nEnter 1 if you want to play as the player"
        puts "Enter 2 if you want the Computer to guess you."
        print "\nYour Choice: "
        choice = gets.chomp.to_i
    end
end

if choice == 1
    mastermindPlayer(colors)
else
    mastermindComputer(colors)
end

