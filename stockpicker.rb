require 'pry'

def stock_picker(prices_array)
  best_trade = Array.new
  current_best = 0
  prices_array.each_with_index do |price, day|
    for i in 0...prices_array.length
      trade = prices_array[i + day] - price if prices_array[i + day] != nil

      if trade > current_best
        current_best = trade
        best_trade = [day, i]
      end
      
    end
  end
  p current_best
  p best_trade
end

stock_picker([17,3,6,9,15,8,6,1,10])