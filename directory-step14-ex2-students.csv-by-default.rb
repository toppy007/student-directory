@students = [] # an empty array accessible to all methods

def try_load_students
  default = "students.csv"
  filename = (ARGV.first || default) # first argument from the command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exist?(filename) # if it exists
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end

# students input

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get input
  name = STDIN.gets.chomp
  # while name is empty run while command
  while !name.empty? do
    # hash name into students array
    @students << {name: name, cohort: :november}
    # code to show latest student count
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp
  end
  @students
end
            
# print them with .each in i elements of student array

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# printing students name

def print(students)
  @students.each do |i|
    puts "#{i[:name]} (#{i[:cohort]} cohort)"
  end
end

# Overal student count using .count on students array

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# print students

def print_directory(students)
  print_header
  print(students)
  print_footer(students)
end

# save students to CSV

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

# load from CSV read only

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

# print menu

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save students list to file"
  puts "4. load students list from file"
  puts "9. Exit" # 9 because we'll be adding more items  
end

# do what the user has asked

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      print_directory(@students)
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

# Program control

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

try_load_students
interactive_menu