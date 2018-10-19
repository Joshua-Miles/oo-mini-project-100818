class User

    @@all = []

    def initialize
        @@all << self
    end

    def recipes
        my_cards = RecipeCard.all.select do | card |
            card.user == self
        end
        my_cards.map do | card |
            card.recipe
        end
    end

    def allergens
        Allergen.all.select do | allergen |
            allergen.user == self
        end
    end

    def allergen_ingredients
        self.allergens.map do | allergen |
            allergen.ingredient
        end
    end

    def safe_recipes
        Recipe.all.select do | recipe |
            allergic_ingredients = (recipe.ingredients & self.allergen_ingredients)
            allergic_ingredients.length == 0
        end
    end

    def self.all 
        @@all
    end

end