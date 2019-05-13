# CLI Controller
class Riperecipes::CLI

    def call
        menu
        goodbye
    end

    def menu
        puts " "
        puts "Welcome to Ripe Recipes!"
        puts "This tool provides you with cuisine suggestions for today!"
        puts " "
        puts "For a particular cuisine, enter 'Asian', 'Indian', 'Italian', 'Mexican', or 'Southern'."
        puts "You can also type 'quit', to quit."
        puts "Which cuisine would you like to explore today?"
        @recipe = Riperecipes::Recipe.today
        input = nil
        while input != 'quit'
            # puts " "
            # puts "Welcome to Ripe Recipes!"
            # puts "This tool provides you with cuisine suggestions for today!"
            # puts " "
            puts "For another cuisine, enter 'Asian', 'Indian', 'Italian', 'Mexican', or 'Southern'."
            puts "Or, type 'quit', to quit."
            # puts "Which cuisine would you like to explore today?"

            input = gets.strip

            case input
            when 'Asian'
                asian = @recipe[0]
                puts " "
                puts "-------------------------------------------"
                puts "#{asian.cuisine} - #{asian.name} - Ready In: #{asian.ready_time} #{asian.list_of_ingredients}"
                puts " "
                puts asian.directions
                puts "-------------------------------------------"
                puts " "
            when 'Indian'
                indian = @recipe[1]
                puts " "
                puts "-------------------------------------------"
                puts "#{indian.cuisine} - #{indian.name} - Ready In: #{indian.ready_time} #{indian.list_of_ingredients}"
                puts " "
                puts indian.directions
                puts "-------------------------------------------"
                puts " "
            when 'Italian'
                italian = @recipe[2]
                puts " "
                puts "-------------------------------------------"
                puts "#{italian.cuisine} - #{italian.name} - Ready In: #{italian.ready_time} #{italian.list_of_ingredients}"
                puts " "
                puts italian.directions
                puts "-------------------------------------------"
                puts " "
            when 'Mexican'
                mexican = @recipe[3]
                puts " "
                puts "-------------------------------------------"
                puts "#{mexican.cuisine} - #{mexican.name} - Ready In: #{mexican.ready_time} #{mexican.list_of_ingredients}"
                puts " "
                puts mexican.directions
                puts "-------------------------------------------"
                puts " "
            when 'Southern'
                southern = @recipe[4]
                puts " "
                puts "-------------------------------------------"
                puts "#{southern.cuisine} - #{southern.name} - Ready In: #{southern.ready_time} #{southern.list_of_ingredients}"
                puts " "
                puts southern.directions
                puts "-------------------------------------------"
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