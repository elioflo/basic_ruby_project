class StockPicker
    def stock_picker prices
        
        purch_day = -1
        sale_day = -1
        
        good_day_to_buy = 0
        profit = 0

        prices.each_with_index do |price, day|
            if price < prices[good_day_to_buy]
                good_day_to_buy = day 
            end

            if profit < price - prices[good_day_to_buy]
                purch_day = good_day_to_buy
                sale_day = day
                profit = price - prices[purch_day]
            end
        end
        
        [purch_day,sale_day]
    end
end