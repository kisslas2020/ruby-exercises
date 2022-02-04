text = ARGV[0]
number = ARGV[1].to_i

def caesar_cipher(text, number)
    text.split('').map(&:ord).map {|code| get_char(code, number)}.join
end

def get_char(code, number)
    number = number % 26
    new_code = code + number
    if (97..122).include?(code)
        new_code = new_code > 122 ? new_code - 26 
        : new_code < 97 ? new_code + 26 
        : new_code
    elsif (65..90).include?(code)
        new_code = new_code > 90 ? new_code - 26
        : new_code < 65 ? new_code + 26
        : new_code
    else
        new_code = code
    end
    new_code.chr
end

puts "#{text} => #{caesar_cipher(text, number)}"
