load 'other.rb'

class Ticket < Other
  # Constant
  EVENTS = %w(Movie Play Book Other)

  # Example of simplified getter methods
  attr_reader :event, :arthor
  # Examples of simplified get and set methods
  attr_accessor :price

  # Initialize
  def initialize(event,arthor)
    if EVENT.include?(event)
      @event = event
    else
      @event = "UNKNOWN"
    end
    @arthor = arthor
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

# Example of a singleton method
# Declare x number of tickets and set prices for each
# After passing the x number of values the event for the highest
# price will be returned.
def Ticket.most_expensive(*tickets)
  ticket = tickets.max_by(&:price)
  ticket.event
end
