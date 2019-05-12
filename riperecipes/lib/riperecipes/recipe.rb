class Riperecipes::Recipe
    attr_accessor :name, :list_of_ingredients, :url, :description, :cuisine, :ready_time   

    def self.today
        self.scrape_recipes
    end

    def scrape_recipes
        all_recipes = []

        all_recipes << self.scrape_site
        # TODAY'S SUGGESTED RECIPES
        # Asian
        recipe_1 = self.new
        recipe_1.cuisine = "Asian"
        recipe_1.name = "Kima"
        recipe_1.ready_time = "1 min"
        recipe_1.list_of_ingredients = "A)... B)... C)..."
        recipe_1.url = "https://www.allrecipes.com/recipe/246250/kima/?internalSource=staff%20pick&referringId=227&referringContentType=Recipe%20Hub"
        recipe_1.description = "This was a family favorite...."

        # Indian
        recipe_2 = self.new
        recipe_2.cuisine = "Indian"
        recipe_2.name = "Punjabi Chicken in Thick Gravy"
        recipe_2.ready_time = "2 min"
        recipe_2.list_of_ingredients = "A)... B)... C)..."
        recipe_2.url = "https://www.allrecipes.com/recipe/150340/punjabi-chicken-in-thick-gravy/?internalSource=streams&referringId=17136&referringContentType=Recipe%20Hub&clickId=st_trending_b"
        recipe_2.description = "This is a type of chicken curry...."

        # Italian
        recipe_3 = self.new
        recipe_3.cuisine = "Italian"
        recipe_3.name = "World's Best Lasagna"
        recipe_3.ready_time = "3 min"
        recipe_3.list_of_ingredients = "A)... B)... C)..."
        recipe_3.url = "https://www.allrecipes.com/recipe/23600/worlds-best-lasagna/?internalSource=streams&referringId=723&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"
        recipe_3.description = "This is a type of chicken curry...."

        # Mexican
        recipe_4 = self.new
        recipe_4.cuisine = "Mexican"
        recipe_4.name = "Slow Cooker Chicken Taco Soup"
        recipe_4.ready_time = "4 min"
        recipe_4.list_of_ingredients = "A)... B)... C)..."
        recipe_4.url = "https://www.allrecipes.com/recipe/70343/slow-cooker-chicken-taco-soup/?internalSource=streams&referringId=728&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"
        recipe_4.description = "This is a type of chicken curry...."

        # Southern
        recipe_5 = self.new
        recipe_5.cuisine = "Southern"
        recipe_5.name = "Colleen's Slow Cooker Jambalaya"
        recipe_5.ready_time = "5 min"
        recipe_5.list_of_ingredients = "A)... B)... C)..."
        recipe_5.url = "https://www.allrecipes.com/recipe/73634/colleens-slow-cooker-jambalaya/?internalSource=streams&referringId=15876&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"
        recipe_5.description = "This is a type of chicken curry...."

        [recipe_1, recipe_2, recipe_3, recipe_4, recipe_5]
    end

    def self.scrape_site
        doc_asian_name = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/227/world-cuisine/asian/"))
        
        name = doc_asian_name.search("h3")[12].text

        doc_asian_ingredients = Nokogiri::HTML(open("https://www.allrecipes.com/recipe/128601/my-favorite-sesame-noodles/?internalSource=streams&referringId=227&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"))
        asian_ingredients = doc_asian_ingredients.css(".recipe-ingredients")
        a_ingredients = asian_ingredients[0]

        a_ingredients_hash = {}

        a_ingredients.css(".checklist").each do |arr|
            arr.each do |item|
                binding.pry
            end
        end

        # ingredients = doc_asian_ingredients.search("#polaris-app span.recipe-ingred_txt").text
        
        # binding.pry
        doc_indian = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/233/world-cuisine/asian/indian/"))
        doc_italian = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/723/world-cuisine/european/italian/"))
        doc_mexican = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/728/world-cuisine/latin-american/mexican/"))
        doc_southern = Nokogiri::HTML(open("https://www.allrecipes.com/recipes/15876/us-recipes/southern/"))
    end



end
