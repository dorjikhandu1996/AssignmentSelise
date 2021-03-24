class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product
    
    before_save :set_unit_cost
    before_save :set_total

    def unit_price
        if persisted?
            self[:unit_cost]
        else
            product.price 
         end
    end

    def total
        product.price * quantity
    end

    private
    
    def set_unit_price
        self[:unit_cost] = unit_price
    end

    def set_total
        self[:total] = total * quantity
    end



end
