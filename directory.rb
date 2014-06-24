# This code is an array of the students in the June cohort at MA
students = [
	"Chloe", 
	"Hannah Waxman", 
	"Zoe Bryant", 
	"Lisa Altmann-Richer", 
	"Marco Araujo", 
	"Jenny Wang", 
	"Nicola Aitken", 
	"Jean", 
	"Eddie"
]
#This section defines the  methods
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end

def print_names(names)
names.each do |name|
	puts name
end
end

def print_footer(names)
	puts "Overall, we have #{names.length} students in this cohort"
end

#This code calls the methods above
print_header
print_names(students)
print_footer(students)