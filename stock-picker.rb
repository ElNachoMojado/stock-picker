def stock_picker(stock_prices)
    #Declaration of profit which will hold the calculated profits
    profit = Array.new
    #Declaration of days which will hold the pair of buying and selling days
    days = Array.new(40) {[]}

    #Chooses a buying day
    stock_prices.each_with_index do |buy, b_index|
    #Chooses a selling day
      stock_prices.each_with_index do |sell, s_index|
    #Checks if the profit from the transaction will be more than zero and if the purchase happens before the sale
        if sell - buy > 0 && b_index < s_index
    #If so, pushes profit value to profit array and the pair of days to the days array
          profit.push(sell - buy)
          days[profit.length-1].push(b_index).push(s_index)
        end
      end
    end
    #Displays the highest profit and the pair of days that will generate this amount
    puts "For a profit of $#{profit.max}, do transactions at days: #{days[profit.index(profit.max)]}."
end

#Fills array with random values
stock_prices = Array.new(9) {rand(1..40)}
puts "The prices are #{stock_prices}."

stock_picker(stock_prices)