class Order < ApplicationRecord
    has_many :order_items
    has_many :discounts

    before_save :set_subtotal

   

    def subtotal
        order_items.collect{|order_item| order_item.valid? ? order_item.total: 0}.sum
    end

    def delivery_charge
        if subtotal >= 5000
            subtotal * 0
        else
            subtotal * 0.1
        end
    end

    def grand_total
        subtotal + delivery_charge
    end




    private
    
    def set_subtotal
        self[:subtotal] = subtotal
    end
    
    def set_delivery_charge
        self[:delivery_charge] = delivery_charge
    end

    def set_grand_total
        self[:grand_total] = grand_total
    end
end


