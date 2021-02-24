require 'pry'

class CashRegister
    attr_accessor :discount, :total, :items, :final_total
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(product, price, quantity = 1)
        @total += (price * quantity)
        quantity.times do
            @items << items
        end
        @final_total = price * quantity
        # binding.pry
    end

    def apply_discount
        if discount > 0
            @total = @total - @total * @discount/100
            "After the discount, the total comes to $#{total}."
        elsif discount == 0
            "There is no discount to apply."
        end
    end

    def last_transaction
        @total = @total - @final_total
    end
end
