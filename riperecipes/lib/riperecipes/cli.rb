# CLI Controller
class Riperecipes::CLI

    def call
        list_recipes
        menu
        goodbye
    end

    def list_recipes
        puts "Welcome to Ripe Recipes!"
        puts "This tool provides you with cuisine suggestions for today!"

        @recipe = Riperecipes::Recipe.today
        @recipe.each.with_index(1) do |cuisines, i|
            puts "#{i}. #{cuisines.cuisine} - #{cuisines.name} - Ready In: #{cuisines.ready_time}"
        end

    end

    def menu
        input = nil
        while input != 'quit'
            puts "Please enter a selection:"
            puts "For a particular cuisine, enter 'Asian', 'Indian', 'Italian', 'Mexican', or 'Southern'."
            puts "To quit, type 'quit'."
            puts "What would you like to do?"

            input = gets.strip

            case input
            when 'Asian'
                asian = @recipe[0]
                puts "#{asian.cuisine} - #{asian.name} - Ready In: #{asian.ready_time}"
            when 'Indian'
                indian = @recipe[1]
                puts "#{indian.cuisine} - #{indian.name} - Ready In: #{indian.ready_time}"
            when 'Italian'
                italian = @recipe[2]
                puts "#{italian.cuisine} - #{italian.name} - Ready In: #{italian.ready_time}"
            when 'Mexican'
                mexican = @recipe[3]
                puts "#{mexican.cuisine} - #{mexican.name} - Ready In: #{mexican.ready_time}"
            when 'Southern'
                southern = @recipe[4]
                puts "#{southern.cuisine} - #{southern.name} - Ready In: #{southern.ready_time}"
            else
                puts "Please enter a known selection. Otherwise type 'quit' to quit."
            end
        end

    end

    def goodbye
        puts "Thanks for stopping by! Goodbye!"
    end



end