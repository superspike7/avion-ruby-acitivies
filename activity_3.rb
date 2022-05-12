# Solution # 1
class Task
  attr_reader :name, :type, :status

  def initialize(name:, type: :unkown, status: :todo)
    @name = name
    @type = type
    @status = status
  end

  def complete
    @status = :complete
  end

end

task_one = Task.new(name: "clean room", type: :chore)
task_two = Task.new(type: :important, name: "code the activity")

puts "====== solution one ====="
p task_one.name # "clean room"
p task_one.status # :todo
task_one.complete
p task_one.status # :complete
puts "========================="


class Profile
  attr_accessor :full_name, :age, :address, :work

  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age 
    @address = address 
    @work = work 
  end
end

my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

puts "====== solution two ====="
puts my_profile.full_name
my_profile.full_name = 'Juan Cruz'

my_profile.age = 25
my_profile.work = 'Software Engineer'

puts my_profile.full_name
puts my_profile.age
puts my_profile.work
puts my_profile.address
puts "========================="
