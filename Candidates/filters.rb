# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
 
return candidates.detect{|candidate| candidate[:id]==id }

end

def experienced?(candidate)
  # Your code Here
  return candidate[:years_of_experience]>2 ? true:false
end

def qualified_candidates(candidates)
  # Your code Here
  candidates.select{|candidate| experienced?(candidate)&&github_points?(candidate)&&applied_15?(candidate)&&over17?(candidate)&&ruby_python?(candidate)}
end

# More methods will go below

def github_points?(candidate)
  return candidate[:github_points]>100 ? true:false
end

def ruby_python?(candidate)
  values=['Ruby', 'Python']
  return candidate[:languages].any?{|x|values.include?(x)}
end
  
def applied_15?(candidate)
  #use the date time now object subtract the days ago object and use.to_i to convert it to integer
  return (DateTime.now()-candidate[:date_applied]).to_i <= 15
end
  
def over17?(candidate)
  #use the date time now object subtract the days ago object and use.to_i to convert it to integer
  return candidate[:age]>17 ? true:false
end
def ordered_by_qualifications(candidates)

   (candidates.sort { |b, a| [b[:years_of_experience], b[:github_points]] <=> [a[:years_of_experience], a[:github_points]] }).reverse
end
  
