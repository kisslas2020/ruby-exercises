#word = ARGV[0].downcase
#dictionary = ARGV[1].downcase.split

word = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(word, dictionary)
    result = Hash.new(0)
    word.downcase!
    dictionary.each {|w| w.downcase!}.reduce(result) do |result, w|
        count = word.end_with?(w) ? 
        word.split(w).length == 0 ? 1
        : word.split(w).length
        : word.split(w).length - 1
        result[w] += count
        result
    end
    result.select {|k, v| v > 0}
end

puts substring(word, dictionary)