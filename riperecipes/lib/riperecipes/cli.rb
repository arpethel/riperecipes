# CLI Controller
class Riperecipes::CLI

    def call
        list
        menu
        goodbye
    end

    def list
        puts " "
        puts "Welcome to Ripe Recipes!"
        puts "This tool provides you with cuisine suggestions for today!"
        puts " "
        @recipe = Riperecipes::Recipe.today
        @recipe.each.with_index(1) do |cuisines, i|
            puts "#{i}. #{cuisines.cuisine} - #{cuisines.name} - Ready In: #{cuisines.ready_time}"
        end
        puts " "
        puts "Which cuisine would you like to explore today?"
    end

    def menu
        input = nil
        while input != 'quit'
            puts " "
            puts "Enter 'Asian', 'Indian', 'Italian', 'Mexican', or 'Southern' for a particular cuisine."
            puts "Or, type 'quit', to quit."

            input = gets.strip.downcase

            case input
            when 'asian'
                asian = @recipe[0]
                puts " "
                puts "-------------------------------------------"
                puts "#{asian.cuisine} - #{asian.name} - Ready In: #{asian.ready_time} #{asian.list_of_ingredients}"
                puts " "
                puts asian.directions
                puts "-------------------------------------------"
                puts "#{asian.url}"
                puts " "
            when 'indian'
                indian = @recipe[1]
                puts " "
                puts "-------------------------------------------"
                puts "#{indian.cuisine} - #{indian.name} - Ready In: #{indian.ready_time} #{indian.list_of_ingredients}"
                puts " "
                puts indian.directions
                puts "-------------------------------------------"
                puts "#{indian.url}"
                puts " "
            when 'italian'
                italian = @recipe[2]
                puts " "
                puts "-------------------------------------------"
                puts "#{italian.cuisine} - #{italian.name} - Ready In: #{italian.ready_time} #{italian.list_of_ingredients}"
                puts " "
                puts italian.directions
                puts "-------------------------------------------"
                puts "#{italian.url}"
                puts " "
            when 'mexican'
                mexican = @recipe[3]
                puts " "
                puts "-------------------------------------------"
                puts "#{mexican.cuisine} - #{mexican.name} - Ready In: #{mexican.ready_time} #{mexican.list_of_ingredients}"
                puts " "
                puts mexican.directions
                puts "-------------------------------------------"
                puts "#{mexican.url}"
                puts " "
            when 'southern'
                southern = @recipe[4]
                puts " "
                puts "-------------------------------------------"
                puts "#{southern.cuisine} - #{southern.name} - Ready In: #{southern.ready_time} #{southern.list_of_ingredients}"
                puts " "
                puts southern.directions
                puts "-------------------------------------------"
                puts "#{southern.url}"
                puts " "
            else
                puts "Please enter a known selection. Otherwise type 'quit' to quit."
            end
        end
    end

    def goodbye
        puts "Thanks for stopping by! Goodbye!"
    end
end