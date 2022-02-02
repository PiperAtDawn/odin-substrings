def substrings (sentence, dictionary)
  array = sentence.downcase.split(" ")
  result = {}
  dictionary.each do |d|
    occurences = 0
    array.each do |word|
        occurences = occurences + 1 if word.include?(d)
    end
    result[d] = occurences if occurences > 0
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

sentence = "Howdy partner, sit down! How's it going?"

puts substrings(sentence, dictionary)