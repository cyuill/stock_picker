def stock_picker(prices) # define a method named stock_picker that takes in an argument prices
  max_profit = 0 # initialize variable max_profit to 0
  best_days = [0, 0] # initialize variable best_days to an array containing 0 and 0
  prices.each_with_index do |buy_price, buy_day| # iterate over the prices array, where buy_price is the element and buy_day is the index
    (buy_day+1...prices.size).each do |sell_day| # for each buy_day, iterate over a range of sell_day's starting one day after the buy_day and ending at the last day in the prices array
      sell_price = prices[sell_day] # set variable sell_price to the element at the sell_day's index in the prices array
      if sell_price - buy_price > max_profit # if the difference between sell_price and buy_price is greater than the current max_profit
        max_profit = sell_price - buy_price # set max_profit to that difference
        best_days = [buy_day, sell_day] # set best_days to an array containing the buy_day and sell_day
      end
    end
  end
  best_days # return the best_days array
end


puts stock_picker([17,3,6,9,15,8,6,1,10])