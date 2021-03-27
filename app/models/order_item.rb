class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product
    has_many :discounts

    
    before_save :set_unit_price
    before_save :set_total
    before_save :set_discount_id
   
    
    def discount_id
        if !product.discount_amount.nil?
            product.discount_amount
        else
            (product.discount_percent/100)*product.price
        end
    end
    
       
    def unit_price
        product.price
    end

    def total
        if !product.unit1.nil? && quantity >= product.unit1
            (unit_price * quantity) - discount_id
        else
            (unit_price * quantity) - (discount_id * quantity)
        end

    end

    private
    
    def set_unit_price
        self[:unit_price] = unit_price
    end

    def set_total
        self[:total] = total * quantity
    end

    def set_discount_id
        self[:discount_id] = discount_id
    end

    

end
