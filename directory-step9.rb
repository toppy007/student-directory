# students input
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create student array
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

# printing students name

def print(students)
  students.each do |i|
    puts "#{i[:name]} (#{i[:cohort]} cohort)"
  end
end

# Overal student count using .count on students array

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#3. do what the user has asked

def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

interactive_menu