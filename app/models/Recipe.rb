class Recipe

    @@all = []

    def initialize
        @@all << self
    end

    def users
        my_cards = RecipeCard.all.select do | card |
            card.recipe == self
        end
        my_cards.map do | card |
            card.user
        end
    end

    def ingredients
        my_recipe_ingredients = RecipeIngredient.all.select do | recipe_ingredient |
            recipe_ingredient.recipe == self
        end
        my_recipe_ingredients.map do | recipe_ingredient |
            recipe_ingredient.ingredient
        end
    end

    def allergens
        self.ingredients.select do | ingredient |
            Allergen.all.find do | allergen |
                allergen.ingredient == ingredient
            end
        end
    end

    def self.all 
        @@all
    end

end