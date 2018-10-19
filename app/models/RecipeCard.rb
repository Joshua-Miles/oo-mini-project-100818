class RecipeCard

    attr_accessor :user, :recipe

    @@all = []

    def initialize(user:, recipe:)
        self.user = user
        self.recipe = recipe
        @@all << self
    end

    def self.all 
        @@all
    end

end