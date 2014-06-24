# This code defines the students in the cohort inside of an array
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
#This code prints the name of the students of June cohort 2014 of makers academy
puts "The students of my cohort at Makers Academy"
puts "-----------------"
students.each do |student|
	puts student
end

#This code prints the number of students in the cohort
puts "Overall, we have #{students.length} students in our cohort"