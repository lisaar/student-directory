=begin
def start_with_a(student)
	# student.select do |elem|
	student[:name][0] == 'a'
  # end
end

def student_length(student)
	# student.select do |elem|
	student[:name].length < 12 
  # end
end
=end

def print_header
	puts "The student of my cohort at Makers Academy"
	puts "--------------"
end

def print_x(students)
	count = 0
	max = students.length
	while count < max
	 puts "#{students[count][:name]} (#{students[count][:cohort]} cohort), #{students[count][:hobbies]} born in #{students[count][:country_of_birth]} ".center(100) if students[0][:name].start_with?("A", "a") && students[0][:name].length < 12
		count += 1
end
end


def print_footer(students)
	puts "Overall, we have #{students.length} great students"
end

def input_student
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"

	students = []

	name = gets.chomp

	while !name.empty? do  
		puts "Now we have #{students.length} students"
		name = gets.chomp
		puts "Please enter the MONTH of the cohort"
		month = gets.chomp.to_sym.downcase
		if month.empty? 
			month = :June
		end
		puts "Please enter the HOOBIES of the students"
		hobbies = gets.chomp
		puts "Please enter the COUNTRY of the students"
		country_of_birth = gets.chomp
		students << {name: name, cohort: month, hobbies: hobbies, country_of_birth: country_of_birth}
	end
	students
end

students = input_student

#nothing happens until we call the methods
print_header
print_x(students)
print_footer(students)