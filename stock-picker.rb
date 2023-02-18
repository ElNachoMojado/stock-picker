def stock_picker(stock_prices)
    profit = Array.new
    days = Array.new(40) {[]}

    stock_prices.each_with_index do |buy, b_index|
      stock_prices.each_with_index do |sell, s_index|
        if sell - buy > 0 && b_index < s_index
          profit.push(sell - buy)
          days[profit.length-1].push(b_index).push(s_index)
        end
      end
    end
    puts "For a profit of $#{profit.max}, do transactions at days: #{days[profit.index(profit.max)]}."
end

stock_prices = Array.new(9) {rand(1..40)}
puts "The prices are #{stock_prices}."

stock_picker(stock_prices)