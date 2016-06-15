puts "Top Level"
puts "self: #{self}"
# returns main
class C
	puts "Class Definition"
	puts "self is #{self}"
	# returns C

	def self.x
		puts "Class method x"
		puts "self: #{self}"
		# returns C
	end

	def m
		puts "instance method"
		puts "self: #{self}"
		# returns the instance of
	end

	def a
		puts "I am in method a"
	end
	def b
		puts " I am in method b about to call method a"
		a
	end
end

c = C.new
# Creates an instance of C and returns the memory location reference
c.b
# What do we expect here
# C.b will return an error
C.x # Will execute and print Class method and the value of self: C
