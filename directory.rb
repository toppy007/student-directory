student_count = 11
# Array of students
students = [ "Dr. Hannibal Lecter", 
            "Darth Vader", 
            "Nurse Ratched",
            "Michael Corleone",
            "Alex DeLarge",
            "The Wicked Witch of the West",
            "Terminator",
            "Freddy Krueger", 
            "The Joker",
            "Joffrey Baratheon",
            "Norman Bates" ]
# print them with .each in i elements of student array
puts "The students of Villains Academy"
puts "-------------"
students.each do |i|
    puts i
end
# Overal student count using .count on students array
puts "Overall, we have #{students.count} great students"