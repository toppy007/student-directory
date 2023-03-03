# Array of students
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create empty array 
  students = []
  # get input
  name = gets.chomp
  puts "Enter country of birth."
  country_of_birth = gets.chomp
  
  while !name.empty? do
    
    students << {name: name, 
                cohort: :november, 
                country_of_birth: country_of_birth}

    puts "Now we have #{students.count} students"

    name = gets.chomp
  end
  students
end
            
# print them with .each in i elements of student array

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |i|
    puts "#{i[:name]} (#{i[:cohort]} :cohort) (#{i[:country_of_birth]} :country)"
    
  end
end

# Overal student count using .count on students array

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# call the methods

students = input_students
print_header
print(students)
print_footer(students)