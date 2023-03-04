def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  students = []
  cohort_months = ["Jan", "Feb", "Mar", "Apr",
                  "May", "Jun", "Jul", "Aug",
                   "Sep", "Oct", "Nov", "Dec"] 

  name = gets.chomp
  cohort = gets.chomp
  
  while !name.empty? do
    while !cohort_months.include? cohort do
      if cohort.empty? == true
        cohort = "N/A"
        convert = cohort.to_sym
        break
      else
        puts "incorrrect input please enter 3 char month"
        puts "Or leave blank and press continue"
        cohort = gets.chomp
      end
    end

  convert = cohort.to_sym
  students << {name: name, cohort: convert}
  puts "Now we have #{students.count} students"

  name = gets.chomp
  cohort = gets.chomp 
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
    puts "#{i[:name]} (#{i[:cohort]} cohort)"
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