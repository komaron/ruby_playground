class String
  # Is Unique: Implement an algorithm to determine if a string has all
  # unique characters.
  def is_unique?
    hash = Hash.new
    string_array = self.split("")
    string_array.each do |letter|
      if hash[letter]
        return false
      else
        hash[letter] = true
      end
    end
    return true
  end

  # Check Permutation: Given two strings, write a method to decide if one
  # is a permutation of the other.
  def permutation?(string)
    string_one = self.chars.sort.to_s
    string_two = string.chars.sort.to_s

    if !(self.length == string.length)
      return false
    end

    if string_one == string_two
      return true
    else
      return false
    end
  end

  # UrLify: Write a method to replace all spaces in a string with '%20'. Assume
  # the string has sufficient space at the end to hold the additional characters
  def urlify
    return self.strip.gsub(/\s+/, "%20")
  end

  def urlify!
    self.strip!
    self.gsub!(/\s+/,"%20")
    return self
  end

  # Palindrome Permutation: Given a string, write a funtion to check if it is a
  # permutation of a palindrome.
  def is_palindrome_permutation?
    self.gsub!(/\s+/,"")
    return self == self.reverse
  end

  # One Away: Given two strings write a function to check if they are one edit (or zero edits) away.
  def one_away?(string)
    return true if self == string
    if (self.length - string.length).abs > 1
      return false
    elsif (self.length - string.length).abs == 0
      string_one = self.split("")
      string_two = string.split("")
      hash = Hash.new(0)

      string_one.zip(string_two).each do |i, j|
        if !(i==j)
          hash['edit'] +=1
        end
      end
     hash['edit'] == 1 ? true : false
    else
      raise NotImplementedError
    end
  end
end

