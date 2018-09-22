def stock_picker(prices)
  days = []
  max_profit = 0

  for i in 0..prices.length - 1
    j = i + 1
    for j in j..prices.length - 1
      current_profit = prices[j] - prices[i]

      if current_profit > max_profit
        max_profit = prices[j] - prices[i]
        days = []
        days.push(i, j)
      end
    end
  end
  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])