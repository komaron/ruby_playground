# Exceptions fun
module Exceptions
  class ArgumentError < StandardError; end

  class YouMessedUpError < StandardError; end
end


class DoesSomething
  def do_it
    begin
      raise_hell
    rescue Exceptions::YouFuckedUpError => e
      puts "What are you trying to do?"
      puts "Backtrace: #{e.backtrace}"
      puts "Message: #{e.message}"
    end
  end

  def raise_hell
    raise Exceptions::YouFuckedUpError
  end
  do_it
end



