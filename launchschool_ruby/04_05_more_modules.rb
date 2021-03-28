module Mammal
    class Dog
        def speak(sound)
            p "#{sound}"
        end
    end
    
    class Cat
        def say_name(name)
            p "#{name}"
        end
    end

    def self.some_out_of_place_method(num)
        num ** 2
    end
end

# buddy=Mammal::Dog.new
# mimi=Mammal::Cat.new

# buddy.speak("hahah")
# mimi.say_name("Meow")

value=Mammal.some_out_of_place_method(2)
puts value

value=Mammal::some_out_of_place_method(2)
puts value