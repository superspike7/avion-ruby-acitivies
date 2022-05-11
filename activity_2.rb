# solution # 1
def solution_one(num)
  arr = [1, 3, 5, 7, 9, 11]
  arr.each { |item| return true if item == num } && "number not found"
end

puts "==== solution 1 ===="
p solution_one(2) # "number not found"
p solution_one(3) # true
puts "===================="

# solution # 2
def solution_two
  puts "input a number:"
  input = gets.chomp.to_i
  if input > 1 && input < 49
    puts "Number is more than 0 and less than 50"
  elsif input > 50 && input < 99
    puts "Number is more than 50 and less than 100"
  else
    puts "Number is more than 100"
  end
end

puts "==== solution 2 ===="
solution_two
puts "===================="

# solution # 3
def solution_three
  loop do 
    puts "enter a word:"
    input = gets.chomp
    puts "word: #{input}"
    break if input == "STOP"
  end
end


puts "==== solution 3 ===="
solution_three
puts "===================="


# solution # 4
def solution_four
  arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
  each_evens = Array.new
  arr.each { |i| each_evens << i if i % 2 == 0}
  select_evens = arr.select(&:even?)
  puts "each: #{each_evens}"
  puts "select: #{select_evens}"
end

puts "==== solution 4 ===="
solution_four
puts "===================="
