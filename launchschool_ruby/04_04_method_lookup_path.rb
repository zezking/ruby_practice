module Walkable
    def walk
        "I can walk"
    end
end

module Swimmable
    def swim
        "I'm swimming"
    end
end

module Climable
    def climb
        "I climb the pink one in the conor"
    end
end

class Animal
    include Walkable
    def speak
        "I can speak too"
    end
end

class GoodDog < Animal
    include Swimmable
    include Climable
end

# puts "-----Animal Method lookup"
# puts Animal.ancestors

puts "---Good Dog Method lookup"
puts GoodDog.ancestors


