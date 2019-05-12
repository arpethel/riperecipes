class Riperecipes::Recipe
    attr_accessor :name, :list_of_ingredients, :url, :description    

    def self.today
        puts <<-DOC.gsub /^\s+/, ""
            1. Asian - Kima - "This was a family-favorite as I was growing up. It's fast and easy. Serve on a bed of rice."        
            2. Indian - Punjabi Chicken in Thick Gravy - "This is a type of chicken curry in a thick gravy with a nice spicy flavor, but is not too hot. You may adjust the 'heat' by adding more serrano peppers. Serve over rice, or with chapatti or roti."
            3. Italian - 
            4. Mexican - 
            5. Southern - 
        DOC
        
        # Asian
        recipe_1 = self.new
        recipe_1.name = "Kima"
        recipe_1.list_of_ingredients = "A)... B)... C)..."
        recipe_1.url = "https://www.allrecipes.com/recipe/246250/kima/?internalSource=staff%20pick&referringId=227&referringContentType=Recipe%20Hub"
        recipe_1.description = "This was a family favorite...."

        # Indian
        recipe_2 = self.new
        recipe_2.name = "Punjabi Chicken in Thick Gravy"
        recipe_2.list_of_ingredients = "A)... B)... C)..."
        recipe_2.url = "https://www.allrecipes.com/recipe/150340/punjabi-chicken-in-thick-gravy/?internalSource=streams&referringId=17136&referringContentType=Recipe%20Hub&clickId=st_trending_b"
        recipe_2.description = "This is a type of chicken curry...."

        # Italian
        recipe_3 = self.new
        recipe_3.name = "World's Best Lasagna"
        recipe_3.list_of_ingredients = "A)... B)... C)..."
        recipe_3.url = "https://www.allrecipes.com/recipe/23600/worlds-best-lasagna/?internalSource=streams&referringId=723&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"
        recipe_3.description = "This is a type of chicken curry...."

        # Mexican
        recipe_4 = self.new
        recipe_4.name = "Slow Cooker Chicken Taco Soup"
        recipe_4.list_of_ingredients = "A)... B)... C)..."
        recipe_4.url = "https://www.allrecipes.com/recipe/70343/slow-cooker-chicken-taco-soup/?internalSource=streams&referringId=728&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"
        recipe_4.description = "This is a type of chicken curry...."

        # Southern
        recipe_5 = self.new
        recipe_5.name = "Colleen's Slow Cooker Jambalaya"
        recipe_5.list_of_ingredients = "A)... B)... C)..."
        recipe_5.url = "https://www.allrecipes.com/recipe/73634/colleens-slow-cooker-jambalaya/?internalSource=streams&referringId=15876&referringContentType=Recipe%20Hub&clickId=st_recipes_mades"
        recipe_5.description = "This is a type of chicken curry...."

        [recipe_1, recipe_2, recipe_3, recipe_4, recipe_5]
    end


end
