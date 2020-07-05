def substrings(sentence, dictionary)
  results = Hash.new(0)

  sentence.downcase.split(/\W+/).each do |str|
    dictionary.each do |word|
      if str.include? word
        results[word] += 1
      end
    end
  end

  results.to_s
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sentence = "Howdy partner, sit down! How's it going?"

puts substrings sentence, dictionary
