class Discount < ApplicationRecord
    validates:name,  presence: true
    validates:discount_percent, numericality: {less_than_or_equal_to: 100}

end
