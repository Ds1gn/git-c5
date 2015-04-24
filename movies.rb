# define a "Person" class to represent the three expected columns
class Person
 attr_accessor :first_name,:last_name,:city ,:ids
#  Struct.new(:first_name, :last_name, :city ,:ids) #used attr_accessor instead  can be used this too 

def initialize
     self.ids = [] # on object creation initialize this to an array
end
  # a method to print out a csv record for the current Person.
  # note that you can easily re-arrange columns here, if desired.
  # also note that this method compensates for blank fields.
  def print_csv_record
    print last_name.empty? ? "," : "\"#{last_name}\","
    print first_name.empty? ? "," : "\"#{first_name}\","
    print city.empty? ? "" : "\"#{city}\","
    p "\n"
  end
end

p = Person.new
p.last_name = ""
p.first_name = "Plucket"
p.city = "San Diego"

print_Person

# movies = {
#   Memento: 3,
#   Primer: 4,
#   Ishtar: 1
# }

# puts "What would you like to do?"
# puts "-- Type 'add' to add a movie."
# puts "-- Type 'update' to update a movie."
# puts "-- Type 'display' to display all movies."
# puts "-- Type 'delete' to delete a movie."

# choice = gets.chomp.downcase
# case choice
# when 'add'
#   puts "What movie do you want to add?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "What's the rating? (Type a number 0 to 4.)"
#     rating = gets.chomp
#     movies[title.to_sym] = rating.to_i
#     puts "#{title} has been added with a rating of #{rating}."
#   else
#     puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
#   end
# when 'update'
#   puts "What movie do you want to update?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "Movie not found!"
#   else
#     puts "What's the new rating? (Type a number 0 to 4.)"
#     rating = gets.chomp
#     movies[title.to_sym] = rating.to_i
#     puts "#{title} has been updated with new rating of #{rating}."
#   end
# when 'display'
#   movies.each do |movie, rating|
#     puts "#{movie}: #{rating}"
#   end
# when 'delete'
#   puts "What movie do you want to delete?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "Movie not found!"
#   else
#     movies.delete(title.to_sym)
#     puts "#{title} has been removed."
#   end
# else
#   puts "Sorry, I didn't understand you."
# end