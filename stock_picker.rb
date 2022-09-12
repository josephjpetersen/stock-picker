def stock_picker(prices)
  
  results = []
  
  results = prices.each_with_index.with_object([]) do |(buy_price, index), results|
    highest_value = prices[index..].max
    highest_index = prices[index..].each_with_index.max[1] + index
    results << [highest_value - buy_price, index, highest_index]
  end

  return results.each_with_index.max[0]

end

prices = [17, 3, 6, 9, 15, 2, 6, 4, 10, 7, 16, 9, 3]

results = stock_picker(prices)

p results

puts "The best day to buy is #{results[1]} at price: $#{prices[results[1]]}"
puts "The best day to sell is #{results[2]} at price: $#{prices[results[2]]}"
puts "Profit gained: $#{results[0]}"



