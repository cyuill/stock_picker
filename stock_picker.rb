def stock_picker(prices)
  max_profit = 0
  best_days = [0, 0]
  prices.each_with_index do |buy_price, buy_day|
    (buy_day+1...prices.size).each do |sell_day|
      sell_price = prices[sell_day]
      if sell_price - buy_price > max_profit
        max_profit = sell_price - buy_price
        best_days = [buy_day, sell_day]
      end
    end
  end
  best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])