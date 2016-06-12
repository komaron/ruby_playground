require 'date'
class Ticket
	attr_reader :event, :arthor
	attr_accessor :price
	def initialize(event,arthor)
		@event = event
		@arthor = arthor
	end
	def date
		Date.today
	end

	def seats
		"Second Balcony, row J, seat 12"
	end



	# An example of sending a method rather thank checking for all
	# possible combinations, a user will pass what they want and it
	# will be checked for valididy
	def request(request)
		ticket = Ticket.new
		if ticket.respond_to?(request)
			ticket.send(request)
		else
			"Error I dont know what to do with the request: #{request}"
		end
	end
end
