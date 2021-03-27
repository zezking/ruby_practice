# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates

# @candidates.each{|candidate| puts experienced?(candidate)}
# @candidates.each{|candidate| puts github_points?(candidate)}
#  @candidates.each{|candidate| puts ruby_python?(candidate)}
#  @candidates.each{|candidate| puts applied_15?(candidate)}
#  @candidates.each{|candidate| puts over17?(candidate)}
# puts qualified_candidates(@candidates)
puts ordered_by_qualifications(@candidates)

