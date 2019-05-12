# CLI Controller
class Riperecipes::CLI

    def call
        list_recipes
        menu
        goodbye
    end

    def list_recipes
        puts "Today's Suggested Recipes!"
        # The following puts the title of the recipe and the 'submitter_description'.
        
        @recipe = Riperecipes::Recipe.today
    end

    def menu
        input = nil
        while input != 'quit'
            puts "Welcome to Ripe Recipes!"
            puts "Please enter a selection:"
            puts "For a particular cuisine, enter 'Asian', 'Indian', 'Italian', 'Mexican', or 'Southern'."
            puts "Enter 'Beef', 'Chicken', or 'Pork' for recipes with these ingredients."
            puts "Enter 'Gluten Free', or 'Low Calorie' for healthier options."
            puts "To list all recipes for all cuisines, enter 'all'."
            puts "To choose from one of our suggested recipes above, choose a number."
            puts "To quit, type 'quit'."
            puts "What would you like to do?"

            input = gets.strip

            case input
            when 'Asian'
                puts 'Asian'
            when 'Indian'
                puts 'Indian'
            when 'Italian'
                puts 'Italian'
            when 'Mexican'
                puts 'Mexican'
            when 'Southern'
                puts 'Southern'
            when 'Beef'
                puts 'Recipes with Beef'
            when 'Chicken'
                puts 'Recipes with Chicken'
            when 'Pork'
                puts 'Recipes with Pork'
            when 'Gluten Free'
                puts 'Recipes with Gluten Free option'
            when 'Low Calorie'
                puts 'Recipes with Low Calorie option'
            when 'all'
                puts 'All recipes available'
            when '1'
                puts "Shows today's Asian cuisine"
            when '2'
                puts "Shows today's Indian cuisine"
            when '3'
                puts "Shows today's Italian cuisine"
            when '4'
                puts "Shows today's Mexican cuisine"
            when '5'
                puts "Shows today's Southern cuisine"
            else
                puts "Please enter a known selection. Otherwise type 'quit' to quit."
            end
        end

    end

    def goodbye
        puts "Thanks for stopping by! Goodbye!"
    end



end