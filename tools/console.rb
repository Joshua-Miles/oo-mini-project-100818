require_relative '../config/environment.rb'

josh = User.new
chicken_masala = Recipe.new
chicken = Ingredient.new
milk = Ingredient.new
tomato_sauce = Ingredient.new

sausage_with_weeds = Recipe.new

one_pound_chicken = RecipeIngredient.new(recipe: chicken_masala, ingredient: chicken)
half_cup_milk = RecipeIngredient.new(recipe: chicken_masala, ingredient: milk)
half_cup_tomato_sauce = RecipeIngredient.new(recipe: chicken_masala, ingredient: tomato_sauce)

half_cup_milk = RecipeIngredient.new(recipe: sausage_with_weeds, ingredient: milk)
half_cup_tomato_sauce = RecipeIngredient.new(recipe: sausage_with_weeds, ingredient: tomato_sauce)


joshs_chicken_masala = RecipeCard.new(user: josh, recipe: chicken_masala)
joshuas_allergy_to_chicken = Allergen.new(user: josh, ingredient: chicken)

josh.safe_recipes

binding.pry
0