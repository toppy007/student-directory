# Array of students
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create empty array 
  students = []
  # get input
  name = gets.chomp
  # while name is empty run while command
  while !name.empty? do
    # hash name into students array
    students << {name: name, cohort: :november}
    # code to show latest student count
    puts "Now we have #{students.count} students"
    # get another name from the user
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
  cohort_month = students.map do |student|
    student[:cohort]
  end
  cohort_month.uniq.each do |cohort|
    puts "#{cohort} cohort".upcase
    students.each do |student|
      puts student[:name] if student[:cohort] == cohort
    end
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