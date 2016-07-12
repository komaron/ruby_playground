class String
  # 1.1 Is Unique: Implement an algorithm to determine if a string has all
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
end
