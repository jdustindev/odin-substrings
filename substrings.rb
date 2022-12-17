def substrings(word, valid_substrings)
    substring_counts = valid_substrings.reduce(Hash.new(0)) do |counts, substring|
        counts[substring.downcase] = word.downcase.scan(substring.downcase).count if word.downcase.include? substring.downcase
        counts
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)