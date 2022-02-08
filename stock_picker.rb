array = ARGV.empty? ? [17,3,6,9,15,8,6,1,10] : ARGV[0].split(',').map {|n| n.to_i}

def stock_picker(array)
    max = -1.0/0
    buy_index = -1
    sell_index = -1
    t = array.length - 1
    t.times do |i|
        buy = array.shift
        sell = array.max
        profit = sell - buy
        if profit > max
            max = profit
            buy_index = i
            sell_index = (array.index sell) + i + 1
        end
    end
    [buy_index, sell_index]
end

p stock_picker(array)