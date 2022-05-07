# solution 1
def solution_one
  (1..10).to_a.each(&method(:puts))
end

# solution 2
def solution_two
  h = {a:1, b:2, c:3, d:4}
  h[:e] = 5
  h
end

# solution 3
def solution_three
  contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
              ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

  contacts = {"John Cruz" => {}, "Avion School" => {}}
  ans = contacts.each do |k,v|
    name = k.split.first.downcase
    contact_data.each do |data|
      if data.first.include?(name)
        v[:email] = data[0]
        v[:address] = data[1]
        v[:phone] = data[2]
      end
    end
  end
  ans
end

# solution 4
def solution_four
  puts "how old are you?"
  age = gets.to_i
  [10, 20, 30, 40].each do |n|
    puts "in #{n} years you will be: #{age + n}"
  end
end

puts "solution 1:"
solution_one

puts "\n"
puts "solution 2:"
p solution_two

puts "\n"
puts "solution 3:"
p solution_three

puts "\n"
puts "solution 4:"
solution_four
