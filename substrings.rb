#word = ARGV[0].downcase
#dictionary = ARGV[1].split

word = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","Go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(word, dictionary)
    result = Hash.new(0)
    word.downcase!
    dictionary.reduce(result) do |result, w|
        wd = w.downcase
        count = word.end_with?(wd) ? 
        word.split(wd).length == 0 ? 1
        : word.split(wd).length
        : word.split(wd).length - 1
        result[w] += count
        result
    end
    result.select {|k, v| v > 0}
end

puts "If uncomment line 1 and 2, and comment line 4 and 5, it can be run with command line arguments"
puts "The result is: #{substring(word, dictionary)}"