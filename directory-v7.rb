# This code is an array of the students in the June cohort at MA
=begin
students = [
	{:name => "Dave", :cohort => :june},
	{:name => "Eddie", :cohort => :june},
	{:name => "Catharina", :cohort => :june},
	{:name => "Igor", :cohort => :june},
	{:name => "Marco", :cohort => :june},
	{:name => "Lisa", :cohort => :june},
	{:name => "Michiel", :cohort => :june},
	{:name => "Jean", :cohort => :june},
	{:name => "Nicola", :cohort => :june},
	{:name => "Jennie", :cohort => :june},
	{:name => "Iona", :cohort => :june},
	{:name => "Nikesh", :cohort => :june},
	{:name => "Chloe", :cohort => :june},
	{:name => "Toan", :cohort => :june},
	{:name => "Jamie", :cohort => :june},
	{:name => "Peter", :cohort => :june},
	{:name => "Talal", :cohort => :june},
	{:name => "Charlie", :cohort => :june},
	{:name => "Charlotte", :cohort => :june},
	{:name => "Thomas", :cohort => :june},
	{:name => "Zoe", :cohort => :june},
	{:name => "Hannah", :cohort => :june},
	{:name => "Joe", :cohort => :june},
	{:name => "Alex", :cohort => :june},
	{:name => "Jeremy", :cohort => :june}
]
=end

@students = [] # an empty array accesible to all methods

#Interactive menu method
def interactive_menu
	#loop will allow to repeat from step 1
	introduction
	loop do
		print_menu
		print "> "
		process(gets.chomp)
	end
end

def introduction
	puts "Welcome to the Makers Academy student directory.\n "
	puts "** Please type a number to select an item from the menu and press RETURN to continue **"
end

	# A method to print the menu
def print_menu
	puts "\nMENU"
	puts "1. Input the names of students into the directory"
	puts "2. Display student directory"
	puts "3. Show students ordered by cohort"
	puts "4. Show students whose names begin with the letter 'A'"
	puts "5. Show students who have less than 12 letters in their name"
	puts "9. Exit"
end
	#A method to print the students
def show_students
	print_header
	print_student_list
	print_footer
end

#Method for interactive menu to take user input
def process(selection)
	case selection
		when "1" #carries out input_students method
			input_students			
			# input the students
		when "2"
			show_students
			# show the students
		when "3"
			names_by_cohort
		when "4"
			print_names_begin_a
		when "5"
			print_length_less_12
		when "9"
			exit # this will case the program to terminate
		else 
			puts "I don't know what you meant, try again"
		end
			puts "Press RETURN to retur to the menu"
			gets
	end

		

#Hash Input methods
def input_students
	puts "Please enter the name of the first student"
	puts "To finish, just hit return"
	# Empty array creation
	#Get the 1st name
	name = gets.chomp
	#While name is not empty, repeat this
	while !name.empty? do
		#Gets month
		puts "Enter the month"
		month = gets.chomp.capitalize.to_sym
		if month.empty?
			month = :June
		end
		#Gets their hobbies
		puts "Enter their hobbies"
		hobbies = gets.chomp
		#add the student hash to the array
		@students << {:name => name, :cohort => month, :hobbies => hobbies}
		puts "Now we have #{@students.length} students"
		#get another name from the user
		puts "Enter the name of the next student or press return to finish"
		name = gets.chomp
	end
	#return the array of students
	@students
end
#This section defines the  methods
#print_header method just prints the header
def print_header
	puts "\nDirectory of students at Makers Academy"
	puts "-----------------"
end

#names method takes an array (which is an array multiple 2 element hashes) and prints each element of the array along with its index number
def print_student_list()
	@students.each.with_index(1) do |student, index|
		puts "#{index}. #{student[:name]} - #{student[:cohort]} cohort, hobbies: #{student[:hobbies]}"
	end
end
#This is the method that sorts the students by cohort
def names_by_cohort
	puts "This is the student database sorted by cohort month"
	@students.sort_by! {|student| student[:cohort]}
	print_student_list
end

#print_names method prints the output of the names method
def print_names
	puts "This is a list of all students in the database"
	print_student_list
end


#only prints those elements of the students array that begin with an A
def print_names_begin_a
	puts "This is a list of students whose names begin with an A"
	name_begin_a = @students.select {|student| student[:name].start_with?('a' , 'A')}

	if name_begin_a.empty?
		puts "-There are no students whose names begin with an 'A'\n "
	else
		name_begin_a.each.with_index(1) do |student, index|
		puts "#{index}. #{student[:name]} - #{student[:cohort]} cohort, hobbies: #{student[:hobbies]}" end
	end	
end

#only prints those elements of the students array that have less than 12 characters
def print_length_less_12
	puts "This is a list of students with less than 12 letters in their names"
	name_less_than_12_letters = @students.select { |student| student[:name].length < 12 }
	
	if name_less_than_12_letters.empty?
		puts "-There are no students who have less than 12 letters in their name\n "
	else
		name_less_than_12_letters.each.with_index(1) do |student, index|
		puts "#{index}. #{student[:name]} - #{student[:cohort]} cohort, hobbies: #{student[:hobbies]}" end
	end
end



#prints the total number of elements in the students array i.e. total number of students
def print_footer
	puts "\n   Overall, we have #{@students.length} students in this cohort"
end

interactive_menu
#This code calls the methods above
=begin
students = input_students
print_header
print_names(students)
print_names_begin_a(students)
print_length_less_12(students)
names_by_cohort(students)
print_footer(students)
=end