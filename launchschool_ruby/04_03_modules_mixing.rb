module Swimmable
    def swim 
        "Yes I can swim!"
    end
end

class Animal; end

class Fish < Animal
    include Swimmable
end

class Mammel < Animal
end

class Cat <Animal
end

class Dog <Animal
    include Swimmable
end


sparky=Dog.new
neemo=Fish.new
paws=Cat.new

puts sparky.swim
puts neemo.swim
puts paws.swim


