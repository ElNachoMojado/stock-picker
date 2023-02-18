def stock_picker(stock_prices)
    #Check for the lowest and highest price in the array
    sell = stock_prices.max
    buy = stock_prices.min

    #Places order and sells for the highest profit only if the day of lowest price is before the one with the highest
    if stock_prices.index(buy) < stock_prices.index(sell)
        profit = sell - buy
        puts "For the highest profit of $#{sell} - $#{buy} = $#{profit}, buy stocks at day #{stock_prices.index(buy)} and sell at #{stock_prices.index(sell)}."
    #else

    end
end

stock_prices = Array.new(9) {rand(1..40)}
puts "The prices are #{stock_prices}."

stock_picker(stock_prices)