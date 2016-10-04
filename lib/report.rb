# An example of using super method
module A
  def some_method
    puts "I am coming from Module A"
  end
end

class B
  include A
  def some_method
    puts "I am in Class B"
    super
    puts "Im back in Class B"
  end
end

# The object below will recieve the message some_method which will
# first find the method from the corresponding class B and execute
# until it see's super which it will then look for the similar method
# in Module A and execute it then back to finish the method in Class B
test = B.new
test.some_method
