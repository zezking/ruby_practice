print "Give me a number: "

number=gets.chomp.to_i

bigger=number*100

puts "A bigger number is #{bigger}."

print "Give me another number: "

another=gets.chomp.to_i

smaller=number/100

puts "A smaller number is #{smaller}."

print "Give me some money: "

full=gets.chomp.to_i

ten_percent=full*0.1

puts "10% of the money you gave me is #{ten_percent}."
