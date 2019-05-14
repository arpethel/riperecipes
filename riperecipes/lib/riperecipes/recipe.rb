class Riperecipes::Recipe
    attr_accessor :name, :list_of_ingredients, :url, :directions, :cuisine, :ready_time   

    def self.today
        self.scrape_recipes
    end

    def self.scrape_recipes
        all_recipes = []

        all_recipes << self.scrape_asian
        all_recipes << self.scrape_indian
        all_recipes << self.scrape_italian
        all_recipes << self.scrape_mexican
        all_recipes << self.scrape_southern

        all_recipes
    end

    def self.scrape_asian  
        doc_asian_name = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/227/world-cuisine/asian/"))
        
        asian_recipe = self.new
        asian_recipe.cuisine = "Asian"
        asian_recipe.name = doc_asian_name.search("h3")[12].text
        asian_recipe.url = "https://armagazine.com/2LKNSnI"
        
        doc_asian_ingredients = Nokogiri::HTML(open("https://www.allrecipes.com/recipe/128601/my-favorite-sesame-noodles/?internalSource=streams&referringId=227&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"))

        asian_recipe.ready_time = doc_asian_ingredients.search("span.ready-in-time").text
        asian_directions = doc_asian_ingredients.search("span.recipe-directions__list--item").text.split
        asian_recipe.directions = asian_directions.join(" ")

        ingredient_items = []

        # First Colomn of Ingredients
        asian_ingredients_1 = []
        asian_ingredients_1 << doc_asian_ingredients.search("#lst_ingredients_1 span.recipe-ingred_txt")
        asian_ingredients_1.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end

        # Second Colomn of Ingredients
        asian_ingredients_2 = []
        asian_ingredients_2 << doc_asian_ingredients.search("#lst_ingredients_2 span.recipe-ingred_txt")
        asian_ingredients_2.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end
        
        asian_recipe.list_of_ingredients = "\n***Ingredients***\n* #{ingredient_items[0...-1].join(" \n* ")}\n"

        asian_recipe
    end

    def self.scrape_indian  
        doc_indian_name = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/233/world-cuisine/asian/indian/"))
        
        indian_recipe = self.new
        indian_recipe.cuisine = "Indian"
        indian_recipe.name = doc_indian_name.search("h3")[12].text
        indian_recipe.url = "https://armagazine.com/30isMAj"

        doc_indian_ingredients = Nokogiri::HTML(open("https://www.allrecipes.com/recipe/228293/curry-stand-chicken-tikka-masala-sauce/?internalSource=streams&referringId=233&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"))

        indian_recipe.ready_time = doc_indian_ingredients.search("span.ready-in-time").text
        indian_directions = doc_indian_ingredients.search("span.recipe-directions__list--item").text.split
        indian_recipe.directions = indian_directions.join(" ")

        ingredient_items = []

        # First Colomn of Ingredients
        indian_ingredients_1 = []
        indian_ingredients_1 << doc_indian_ingredients.search("#lst_ingredients_1 span.recipe-ingred_txt")
        indian_ingredients_1.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end

        # Second Colomn of Ingredients
        indian_ingredients_2 = []
        indian_ingredients_2 << doc_indian_ingredients.search("#lst_ingredients_2 span.recipe-ingred_txt")
        indian_ingredients_2.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end
        
        indian_recipe.list_of_ingredients = "\n***Ingredients***\n* #{ingredient_items[0...-1].join(" \n* ")}\n"

        indian_recipe
    end

    def self.scrape_italian  
        doc_italian_name = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/723/world-cuisine/european/italian/"))
        
        italian_recipe = self.new
        italian_recipe.cuisine = "Italian"
        italian_recipe.name = doc_italian_name.search("h3")[12].text
        italian_recipe.url = "https://armagazine.com/2HhSbm4"

        doc_italian_ingredients = Nokogiri::HTML(open("https://www.allrecipes.com/recipe/23600/worlds-best-lasagna/?internalSource=streams&referringId=723&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"))

        italian_recipe.ready_time = doc_italian_ingredients.search("span.ready-in-time").text
        italian_directions = doc_italian_ingredients.search("span.recipe-directions__list--item").text.split
        italian_recipe.directions = italian_directions.join(" ")

        ingredient_items = []

        # First Colomn of Ingredients
        italian_ingredients_1 = []
        italian_ingredients_1 << doc_italian_ingredients.search("#lst_ingredients_1 span.recipe-ingred_txt")
        italian_ingredients_1.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end

        # Second Colomn of Ingredients
        italian_ingredients_2 = []
        italian_ingredients_2 << doc_italian_ingredients.search("#lst_ingredients_2 span.recipe-ingred_txt")
        italian_ingredients_2.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end
        
        italian_recipe.list_of_ingredients = "\n***Ingredients***\n* #{ingredient_items[0...-1].join(" \n* ")}\n"

        italian_recipe
    end

    def self.scrape_mexican  
        doc_mexican_name = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/728/world-cuisine/latin-american/mexican/"))
        
        mexican_recipe = self.new
        mexican_recipe.cuisine = "Mexican"
        mexican_recipe.name = doc_mexican_name.search("h3")[12].text
        mexican_recipe.url = "https://armagazine.com/2HjE3bZ"

        doc_mexican_ingredients = Nokogiri::HTML(open("https://www.allrecipes.com/recipe/217911/salsa-chicken-meatloaf/?internalSource=streams&referringId=728&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"))

        mexican_recipe.ready_time = doc_mexican_ingredients.search("span.ready-in-time").text
        mexican_directions = doc_mexican_ingredients.search("span.recipe-directions__list--item").text.split
        mexican_recipe.directions = mexican_directions.join(" ")

        ingredient_items = []

        # First Colomn of Ingredients
        mexican_ingredients_1 = []
        mexican_ingredients_1 << doc_mexican_ingredients.search("#lst_ingredients_1 span.recipe-ingred_txt")
        mexican_ingredients_1.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end

        # Second Colomn of Ingredients
        mexican_ingredients_2 = []
        mexican_ingredients_2 << doc_mexican_ingredients.search("#lst_ingredients_2 span.recipe-ingred_txt")
        mexican_ingredients_2.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end
        
        mexican_recipe.list_of_ingredients = "\n***Ingredients***\n* #{ingredient_items[0...-1].join(" \n* ")}\n"

        mexican_recipe
    end

    def self.scrape_southern  
        doc_southern_name = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/15876/us-recipes/southern/"))
        
        southern_recipe = self.new
        southern_recipe.cuisine = "Southern"
        southern_recipe.name = doc_southern_name.search("h3")[12].text
        southern_recipe.url = "https://armagazine.com/2w0G46o"

        doc_southern_ingredients = Nokogiri::HTML(open("https://www.allrecipes.com/recipe/73634/colleens-slow-cooker-jambalaya/?internalSource=streams&referringId=15876&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"))

        southern_recipe.ready_time = doc_southern_ingredients.search("span.ready-in-time").text
        southern_directions = doc_southern_ingredients.search("span.recipe-directions__list--item").text.split
        southern_recipe.directions = southern_directions.join(" ")

        ingredient_items = []

        # First Colomn of Ingredients
        southern_ingredients_1 = []
        southern_ingredients_1 << doc_southern_ingredients.search("#lst_ingredients_1 span.recipe-ingred_txt")
        southern_ingredients_1.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end

        # Second Colomn of Ingredients
        southern_ingredients_2 = []
        southern_ingredients_2 << doc_southern_ingredients.search("#lst_ingredients_2 span.recipe-ingred_txt")
        southern_ingredients_2.each do |item|
            item.each do |each_item|
                ingredient_items << each_item.text
            end
        end
        
        southern_recipe.list_of_ingredients = "\n***Ingredients***\n* #{ingredient_items[0...-1].join(" \n* ")}\n"

        southern_recipe
    end
end
