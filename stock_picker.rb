def stock_picker(stock_prices)
  profit = 0
  days = []

  stock_prices.each_with_index do |price, day|
    for i in day..stock_prices.length - 1
      if stock_prices[i] - price > profit
        profit = stock_prices[i] - price
        days = [day, i]
      end
    end
  end
  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
