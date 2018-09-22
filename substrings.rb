def substrings(word, strings)
  result = {}
  words = word.split

  words.each do |w|
    strings.each do |str|
      if w.downcase.include? str
        unless result[str]
          result[str] = 0
        end
        result[str] += 1
      end
    end
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
