class Parent
    def say_hi
        p "Hi from parent"
    end
end

class Child<Parent
    def say_hi
        p "Hi from Child"
    end
    def send
        p "send from child"
    end
    def instance_of?
        p "I am gonna override it's whole career"
    end
end

# child=Child.new
# lad=Child.new
# child.say_hi

# son=Child.new
# dad=Parent.new
# son.send :say_hi
# dad.send :say_hi
# lad.send :say_hi

c=Child.new

puts c.instance_of? Child
puts c.instance_of? Parent

heir=Child.new
heir.instance_of? Child



